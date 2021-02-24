################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

# Each subdirectory must supply rules for building sources it contributes
%.obj: ../%.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: Arm Compiler'
	"D:/ti/ccs1020/ccs/tools/compiler/ti-cgt-arm_20.2.4.LTS/bin/armcl" -mv7M4 --code_state=16 -me --include_path="D:/doc/EE421/code_haptic_band/fdii-vib_motor" --include_path="D:/ti/ccs1020/ccs/tools/compiler/ti-cgt-arm_20.2.4.LTS/include" -g --diag_warning=225 --diag_wrap=off --display_error_number --abi=eabi --preproc_with_compile --preproc_dependency="$(basename $(<F)).d_raw" --include_path="D:/doc/EE421/code_haptic_band/fdii-vib_motor/Debug/syscfg" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

build-335303201: ../vib_motor.syscfg
	@echo 'Building file: "$<"'
	@echo 'Invoking: SysConfig'
	"D:/ti/ccs1020/ccs/utils/sysconfig_1.7.0/sysconfig_cli.bat" -s "D:/ti/simplelink_cc13x2_26x2_sdk_4_40_04_04/.metadata/product.json" -o "syscfg" "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

syscfg/ti_devices_config.c: build-335303201 ../vib_motor.syscfg
syscfg/ti_drivers_config.c: build-335303201
syscfg/ti_drivers_config.h: build-335303201
syscfg/ti_utils_build_linker.cmd.genlibs: build-335303201
syscfg/syscfg_c.rov.xs: build-335303201
syscfg/ti_utils_runtime_model.gv: build-335303201
syscfg/ti_utils_runtime_Makefile: build-335303201
syscfg/: build-335303201

syscfg/%.obj: ./syscfg/%.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: Arm Compiler'
	"D:/ti/ccs1020/ccs/tools/compiler/ti-cgt-arm_20.2.4.LTS/bin/armcl" -mv7M4 --code_state=16 -me --include_path="D:/doc/EE421/code_haptic_band/fdii-vib_motor" --include_path="D:/ti/ccs1020/ccs/tools/compiler/ti-cgt-arm_20.2.4.LTS/include" -g --diag_warning=225 --diag_wrap=off --display_error_number --abi=eabi --preproc_with_compile --preproc_dependency="syscfg/$(basename $(<F)).d_raw" --include_path="D:/doc/EE421/code_haptic_band/fdii-vib_motor/Debug/syscfg" --obj_directory="syscfg" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '


