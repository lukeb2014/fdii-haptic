/*
 * Copyright (c) 2015-2019, Texas Instruments Incorporated
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 *
 * *  Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 *
 * *  Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 *
 * *  Neither the name of Texas Instruments Incorporated nor the names of
 *    its contributors may be used to endorse or promote products derived
 *    from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
 * THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
 * PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR
 * CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
 * PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS;
 * OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
 * WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
 * OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
 * EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

/*
 *  ======== pwmled2.c ========
 */
/* For usleep() */
#include <unistd.h>
#include <stddef.h>

/* Driver Header files */
#include <ti/drivers/PWM.h>
#include <ti/drivers/Timer.h>

/* Driver configuration */
#include "ti_drivers_config.h"


/* globals */
PWM_Handle pwm1 = NULL;
Timer_Handle g_timer0;

/* function prototypes */
void updateDutyCycle(uint32_t percent);
void initializePWM(uint32_t frequency, PWM_Handle *pwm);
Timer_Handle initializeTimer();
void startTimer();
void updateTimerFreq(uint8_t newFreq);
void stopTimer();
void timerISR();
void informUserOfStartup();
void cleanup(PWM_Handle *pwm1);
void vibTime(uint8_t timeMs);
void vibFreq(uint8_t freqHz, uint8_t dutyCycle);

/*
 *  ======== mainThread ========
 *  Task periodically increments the PWM duty for the on board LED.
 */
void *mainThread(void *arg0)
{
    initializePWM(1e3, &pwm1);
    g_timer0 = initializeTimer(); // use g_timer0 as a global

    informUserOfStartup();

    // start timer
    startTimer();

    // methodology to update the frequency:
    // 1) stop the timer
    // 2) update the frequency
    // 3) start the timer again
    // this is contained in updateTimerFreq
    sleep(1000);

    cleanup(&pwm1);
    return;
}

void initializePWM(uint32_t frequency, PWM_Handle *pwm) {
    PWM_Params pwmParams;

    /* Call driver initialization functions. */
    PWM_init();

    PWM_Params_init(&pwmParams);
    pwmParams.idleLevel = PWM_IDLE_LOW;      // Output low when PWM is not running
    pwmParams.periodUnits = PWM_PERIOD_HZ;   // Period is in Hz
    pwmParams.periodValue = frequency;             // 1e3 Hz, empirically a minimum of 3 Hz is possible
    pwmParams.dutyUnits = PWM_DUTY_FRACTION; // Duty is in fractional percentage
    pwmParams.dutyValue = 0;                 // 0% initial duty cycle
    *pwm = PWM_open(CONFIG_PWM_1, &pwmParams);
    if (*pwm == NULL) {
        /* CONFIG_PWM_configNum did not open */
        /* TODO log this */
        while (1);
    }

    PWM_start(*pwm);
}

// initializes the timer
Timer_Handle initializeTimer(Timer_Handle *timer) {
    Timer_Handle t_;
    Timer_Params params;
    Timer_init(); // must be first Timer API call
    Timer_Params_init(&params);

    params.periodUnits = Timer_PERIOD_HZ;
    params.period = 10; // 1 Hz
    params.timerMode = Timer_CONTINUOUS_CALLBACK;
    params.timerCallback = &timerISR;

    t_ = Timer_open(CONFIG_TIMER_0, &params);

    if (t_ == NULL) {
        // the timer failed to initialize
        while (1);
    }
    return t_;
}

void startTimer() {
    int32_t status = Timer_start(g_timer0); // have the timer continuously run

    if (status == Timer_STATUS_ERROR) {
        // the timer failed to start
        while(1);
    }
}

void stopTimer() {
    Timer_stop(g_timer0);
}

void updateTimerFreq(uint8_t newFreq) {
    // update the timer frequency
    stopTimer();
    Timer_setPeriod(g_timer0, Timer_PERIOD_HZ, newFreq);
    startTimer();
}

// handles what needs to happen for each tick
void timerISR() {
    static uint8_t motorOn = 0;
    if (motorOn) {
        // turn on the PWM
        updateDutyCycle(50);
    } else {
        // turn off the PWM
        updateDutyCycle(0);
    }
    motorOn ^= 1;
}

void informUserOfStartup() {
    // perform a buzz to inform the user of startup
    int i = 0;
    for (i = 0; i < 3; i++) {
        updateDutyCycle(50); // reasonable strength
        usleep(1e6); // let it buzz for 0.5 s
        updateDutyCycle(0); // off
        usleep(2e6); // let it buzz for 0.5 s
    }
}

void cleanup(PWM_Handle *pwm1) {
    PWM_stop(*pwm1);
    stopTimer();
}

/* changes the duty cycle of the PWM */
void updateDutyCycle(uint32_t percent) {
    PWM_setDuty(pwm1, (uint32_t) (((uint64_t) PWM_DUTY_FRACTION_MAX * percent) / 100)); //
}

/* vibrates for a length of time in ms*/
void vibTime(uint8_t timeMs) {
    updateDutyCycle(100);   // always on
    usleep(timeMs*1000);    // let it buzz for timeMS
    updateDutyCycle(0);     // off
}

/* vibrates at given freq in Hz and duty cycle in % */
void vibFreq(uint8_t freqHz, uint8_t dutyCycle) {
    PWM_setDutyAndPeriod(pwm1, (uint32_t) (((uint64_t) PWM_DUTY_FRACTION_MAX * dutyCycle) / 100), (uint32_t)freqHz);
}
