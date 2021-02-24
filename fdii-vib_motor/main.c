#include <D:\ti\simplelink_cc13x2_26x2_sdk_4_40_04_04\source\ti\drivers\Board.h>

/* Driver Header files */
#include <D:\ti\simplelink_cc13x2_26x2_sdk_4_40_04_04\source\ti\drivers\PWM.h>

/* Driver configuration */
#include "ti_drivers_config.h"


/**
 * main.c
 */
int main(void)
{

    BoardInit();

    PWM_Handle pwm;
    PWM_Params pwmParams;
    uint32_t dutyValue;


    // Initialize the PWM driver.
    PWM_init();

    // Initialize the PWM parameters
    PWM_Params_init(&pwmParams);
    pwmParams.idleLevel = PWM_IDLE_LOW;      // Output low when PWM is not running
    pwmParams.periodUnits = PWM_PERIOD_HZ;   // Period is in Hz
    pwmParams.periodValue = 2;               // 2 Hz
    pwmParams.dutyUnits = PWM_DUTY_FRACTION; // Duty is in fractional percentage
    pwmParams.dutyValue = 0;                 // 0% initial duty cycle

    // Open the PWM instance
    pwm = PWM_open(CONFIG_PWM0, &pwmParams);
    if (pwm == NULL) {
        // PWM_open() failed
        while (1);
    }
    PWM_start(pwm);                          // start PWM with 0% duty cycle
    dutyValue = (uint32_t) (((uint64_t) PWM_DUTY_FRACTION_MAX * 37) / 100);
    PWM_setDuty(pwm, dutyValue);  // set duty cycle to 37%

    return 0;
}
