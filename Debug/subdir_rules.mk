################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

# Each subdirectory must supply rules for building sources it contributes
%.obj: ../%.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: Arm Compiler'
	"D:/ti/ccs1020/ccs/tools/compiler/ti-cgt-arm_20.2.2.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 -me --include_path="D:/doc/EE421/code_haptic_band/fdii-haptic" --include_path="D:/doc/EE421/code_haptic_band/fdii-haptic/Debug" --include_path="D:/ti/simplelink_cc13x2_26x2_sdk_4_40_04_04/source" --include_path="D:/ti/simplelink_cc13x2_26x2_sdk_4_40_04_04/kernel/nortos" --include_path="D:/ti/simplelink_cc13x2_26x2_sdk_4_40_04_04/kernel/nortos/posix" --include_path="D:/ti/ccs1020/ccs/tools/compiler/ti-cgt-arm_20.2.2.LTS/include" --define=DeviceFamily_CC26X2 -g --diag_warning=225 --diag_warning=255 --diag_wrap=off --display_error_number --gen_func_subsections=on --preproc_with_compile --preproc_dependency="$(basename $(<F)).d_raw" --include_path="D:/doc/EE421/code_haptic_band/fdii-haptic/Debug/syscfg" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

build-708348673: ../pwmled2.syscfg
	@echo 'Building file: "$<"'
	@echo 'Invoking: SysConfig'
	"D:/ti/ccs1020/ccs/utils/sysconfig_1.7.0/sysconfig_cli.bat" -s "D:/ti/simplelink_cc13x2_26x2_sdk_4_40_04_04/.metadata/product.json" -o "syscfg" --compiler ccs "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

syscfg/ti_devices_config.c: build-708348673 ../pwmled2.syscfg
syscfg/ti_drivers_config.c: build-708348673
syscfg/ti_drivers_config.h: build-708348673
syscfg/ti_utils_build_linker.cmd.genlibs: build-708348673
syscfg/syscfg_c.rov.xs: build-708348673
syscfg/ti_utils_runtime_model.gv: build-708348673
syscfg/ti_utils_runtime_Makefile: build-708348673
syscfg/: build-708348673

syscfg/%.obj: ./syscfg/%.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: Arm Compiler'
	"D:/ti/ccs1020/ccs/tools/compiler/ti-cgt-arm_20.2.2.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 -me --include_path="D:/doc/EE421/code_haptic_band/fdii-haptic" --include_path="D:/doc/EE421/code_haptic_band/fdii-haptic/Debug" --include_path="D:/ti/simplelink_cc13x2_26x2_sdk_4_40_04_04/source" --include_path="D:/ti/simplelink_cc13x2_26x2_sdk_4_40_04_04/kernel/nortos" --include_path="D:/ti/simplelink_cc13x2_26x2_sdk_4_40_04_04/kernel/nortos/posix" --include_path="D:/ti/ccs1020/ccs/tools/compiler/ti-cgt-arm_20.2.2.LTS/include" --define=DeviceFamily_CC26X2 -g --diag_warning=225 --diag_warning=255 --diag_wrap=off --display_error_number --gen_func_subsections=on --preproc_with_compile --preproc_dependency="syscfg/$(basename $(<F)).d_raw" --include_path="D:/doc/EE421/code_haptic_band/fdii-haptic/Debug/syscfg" --obj_directory="syscfg" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '


