################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

# Each subdirectory must supply rules for building sources it contributes
Profiles/devinfoservice.obj: D:/ti/simplelink_cc13x2_26x2_sdk_4_40_04_04/source/ti/ble5stack/profiles/dev_info/cc26xx/devinfoservice.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: Arm Compiler'
	"D:/ti/ccs1020/ccs/tools/compiler/ti-cgt-arm_20.2.4.LTS/bin/armcl" --cmd_file="C:/Users/User/workspace_v10/simple_serial_socket_server_app_CC26X2R1_LAUNCHXL_tirtos_ccs/Release/syscfg/ti_ble_app_config.opt" --cmd_file="C:/Users/User/workspace_v10/simple_serial_socket_server_app_CC26X2R1_LAUNCHXL_tirtos_ccs/Release/syscfg/ti_build_config.opt" --cmd_file="D:/ti/simplelink_cc13x2_26x2_sdk_4_40_04_04/source/ti/ble5stack/config/build_components.opt" --cmd_file="D:/ti/simplelink_cc13x2_26x2_sdk_4_40_04_04/source/ti/ble5stack/config/factory_config.opt"  -mv7M4 --code_state=16 --float_support=FPv4SPD16 -me -O4 --opt_for_speed=0 --include_path="C:/Users/User/workspace_v10/simple_serial_socket_server_app_CC26X2R1_LAUNCHXL_tirtos_ccs" --include_path="C:/Users/User/workspace_v10/simple_serial_socket_server_app_CC26X2R1_LAUNCHXL_tirtos_ccs/Release" --include_path="D:/ti/ble_examples-simplelink_cc13x2_26x2_sdk-4.10/examples/rtos/CC26X2R1_LAUNCHXL/ble5apps/simple_serial_socket_server/Application" --include_path="D:/ti/simplelink_cc13x2_26x2_sdk_4_40_04_04/source/ti/ble5stack/controller/cc26xx/inc" --include_path="D:/ti/simplelink_cc13x2_26x2_sdk_4_40_04_04/source/ti/ble5stack/inc" --include_path="D:/ti/simplelink_cc13x2_26x2_sdk_4_40_04_04/source/ti/ble5stack/rom" --include_path="D:/ti/simplelink_cc13x2_26x2_sdk_4_40_04_04/source/ti/ble5stack/common/cc26xx" --include_path="D:/ti/simplelink_cc13x2_26x2_sdk_4_40_04_04/source/ti/ble5stack/icall/inc" --include_path="D:/ti/simplelink_cc13x2_26x2_sdk_4_40_04_04/source/ti/ble5stack/hal/src/target/_common" --include_path="D:/ti/simplelink_cc13x2_26x2_sdk_4_40_04_04/source/ti/ble5stack/hal/src/target/_common/cc26xx" --include_path="D:/ti/simplelink_cc13x2_26x2_sdk_4_40_04_04/source/ti/ble5stack/hal/src/inc" --include_path="D:/ti/simplelink_cc13x2_26x2_sdk_4_40_04_04/source/ti/ble5stack/heapmgr" --include_path="D:/ti/simplelink_cc13x2_26x2_sdk_4_40_04_04/source/ti/ble5stack/profiles/dev_info" --include_path="D:/ti/ble_examples-simplelink_cc13x2_26x2_sdk-4.10/source/ti/ble5stack/profiles/simple_service_discovery" --include_path="D:/ti/simplelink_cc13x2_26x2_sdk_4_40_04_04/source/ti/ble5stack/profiles/simple_profile" --include_path="D:/ti/ble_examples-simplelink_cc13x2_26x2_sdk-4.10/source/ti/ble5stack/profiles/simple_serial_stream" --include_path="D:/ti/simplelink_cc13x2_26x2_sdk_4_40_04_04/source/ti/ble5stack/icall/src/inc" --include_path="D:/ti/simplelink_cc13x2_26x2_sdk_4_40_04_04/source/ti/ble5stack/osal/src/inc" --include_path="D:/ti/simplelink_cc13x2_26x2_sdk_4_40_04_04/source/ti/ble5stack/services/src/saddr" --include_path="D:/ti/simplelink_cc13x2_26x2_sdk_4_40_04_04/source/ti/ble5stack/services/src/sdata" --include_path="D:/ti/simplelink_cc13x2_26x2_sdk_4_40_04_04/source/ti/common/nv" --include_path="D:/ti/simplelink_cc13x2_26x2_sdk_4_40_04_04/source/ti/common/cc26xx" --include_path="D:/ti/simplelink_cc13x2_26x2_sdk_4_40_04_04/source/ti/devices/cc13x2_cc26x2" --include_path="D:/ti/simplelink_cc13x2_26x2_sdk_4_40_04_04/source/ti/posix/ccs" --include_path="D:/ti/ccs1020/ccs/tools/compiler/ti-cgt-arm_20.2.4.LTS/include" --define=DeviceFamily_CC26X2 --define=FLASH_ROM_BUILD --define=NVOCMP_NWSAMEITEM=1 -g --c99 --gcc --diag_warning=225 --diag_warning=255 --diag_wrap=off --display_error_number --gen_func_subsections=on --abi=eabi --preproc_with_compile --preproc_dependency="Profiles/$(basename $(<F)).d_raw" --include_path="C:/Users/User/workspace_v10/simple_serial_socket_server_app_CC26X2R1_LAUNCHXL_tirtos_ccs/Release/syscfg" --obj_directory="Profiles" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

Profiles/gatt_uuid.obj: D:/ti/simplelink_cc13x2_26x2_sdk_4_40_04_04/source/ti/ble5stack/host/gatt_uuid.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: Arm Compiler'
	"D:/ti/ccs1020/ccs/tools/compiler/ti-cgt-arm_20.2.4.LTS/bin/armcl" --cmd_file="C:/Users/User/workspace_v10/simple_serial_socket_server_app_CC26X2R1_LAUNCHXL_tirtos_ccs/Release/syscfg/ti_ble_app_config.opt" --cmd_file="C:/Users/User/workspace_v10/simple_serial_socket_server_app_CC26X2R1_LAUNCHXL_tirtos_ccs/Release/syscfg/ti_build_config.opt" --cmd_file="D:/ti/simplelink_cc13x2_26x2_sdk_4_40_04_04/source/ti/ble5stack/config/build_components.opt" --cmd_file="D:/ti/simplelink_cc13x2_26x2_sdk_4_40_04_04/source/ti/ble5stack/config/factory_config.opt"  -mv7M4 --code_state=16 --float_support=FPv4SPD16 -me -O4 --opt_for_speed=0 --include_path="C:/Users/User/workspace_v10/simple_serial_socket_server_app_CC26X2R1_LAUNCHXL_tirtos_ccs" --include_path="C:/Users/User/workspace_v10/simple_serial_socket_server_app_CC26X2R1_LAUNCHXL_tirtos_ccs/Release" --include_path="D:/ti/ble_examples-simplelink_cc13x2_26x2_sdk-4.10/examples/rtos/CC26X2R1_LAUNCHXL/ble5apps/simple_serial_socket_server/Application" --include_path="D:/ti/simplelink_cc13x2_26x2_sdk_4_40_04_04/source/ti/ble5stack/controller/cc26xx/inc" --include_path="D:/ti/simplelink_cc13x2_26x2_sdk_4_40_04_04/source/ti/ble5stack/inc" --include_path="D:/ti/simplelink_cc13x2_26x2_sdk_4_40_04_04/source/ti/ble5stack/rom" --include_path="D:/ti/simplelink_cc13x2_26x2_sdk_4_40_04_04/source/ti/ble5stack/common/cc26xx" --include_path="D:/ti/simplelink_cc13x2_26x2_sdk_4_40_04_04/source/ti/ble5stack/icall/inc" --include_path="D:/ti/simplelink_cc13x2_26x2_sdk_4_40_04_04/source/ti/ble5stack/hal/src/target/_common" --include_path="D:/ti/simplelink_cc13x2_26x2_sdk_4_40_04_04/source/ti/ble5stack/hal/src/target/_common/cc26xx" --include_path="D:/ti/simplelink_cc13x2_26x2_sdk_4_40_04_04/source/ti/ble5stack/hal/src/inc" --include_path="D:/ti/simplelink_cc13x2_26x2_sdk_4_40_04_04/source/ti/ble5stack/heapmgr" --include_path="D:/ti/simplelink_cc13x2_26x2_sdk_4_40_04_04/source/ti/ble5stack/profiles/dev_info" --include_path="D:/ti/ble_examples-simplelink_cc13x2_26x2_sdk-4.10/source/ti/ble5stack/profiles/simple_service_discovery" --include_path="D:/ti/simplelink_cc13x2_26x2_sdk_4_40_04_04/source/ti/ble5stack/profiles/simple_profile" --include_path="D:/ti/ble_examples-simplelink_cc13x2_26x2_sdk-4.10/source/ti/ble5stack/profiles/simple_serial_stream" --include_path="D:/ti/simplelink_cc13x2_26x2_sdk_4_40_04_04/source/ti/ble5stack/icall/src/inc" --include_path="D:/ti/simplelink_cc13x2_26x2_sdk_4_40_04_04/source/ti/ble5stack/osal/src/inc" --include_path="D:/ti/simplelink_cc13x2_26x2_sdk_4_40_04_04/source/ti/ble5stack/services/src/saddr" --include_path="D:/ti/simplelink_cc13x2_26x2_sdk_4_40_04_04/source/ti/ble5stack/services/src/sdata" --include_path="D:/ti/simplelink_cc13x2_26x2_sdk_4_40_04_04/source/ti/common/nv" --include_path="D:/ti/simplelink_cc13x2_26x2_sdk_4_40_04_04/source/ti/common/cc26xx" --include_path="D:/ti/simplelink_cc13x2_26x2_sdk_4_40_04_04/source/ti/devices/cc13x2_cc26x2" --include_path="D:/ti/simplelink_cc13x2_26x2_sdk_4_40_04_04/source/ti/posix/ccs" --include_path="D:/ti/ccs1020/ccs/tools/compiler/ti-cgt-arm_20.2.4.LTS/include" --define=DeviceFamily_CC26X2 --define=FLASH_ROM_BUILD --define=NVOCMP_NWSAMEITEM=1 -g --c99 --gcc --diag_warning=225 --diag_warning=255 --diag_wrap=off --display_error_number --gen_func_subsections=on --abi=eabi --preproc_with_compile --preproc_dependency="Profiles/$(basename $(<F)).d_raw" --include_path="C:/Users/User/workspace_v10/simple_serial_socket_server_app_CC26X2R1_LAUNCHXL_tirtos_ccs/Release/syscfg" --obj_directory="Profiles" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

Profiles/gattservapp_util.obj: D:/ti/simplelink_cc13x2_26x2_sdk_4_40_04_04/source/ti/ble5stack/host/gattservapp_util.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: Arm Compiler'
	"D:/ti/ccs1020/ccs/tools/compiler/ti-cgt-arm_20.2.4.LTS/bin/armcl" --cmd_file="C:/Users/User/workspace_v10/simple_serial_socket_server_app_CC26X2R1_LAUNCHXL_tirtos_ccs/Release/syscfg/ti_ble_app_config.opt" --cmd_file="C:/Users/User/workspace_v10/simple_serial_socket_server_app_CC26X2R1_LAUNCHXL_tirtos_ccs/Release/syscfg/ti_build_config.opt" --cmd_file="D:/ti/simplelink_cc13x2_26x2_sdk_4_40_04_04/source/ti/ble5stack/config/build_components.opt" --cmd_file="D:/ti/simplelink_cc13x2_26x2_sdk_4_40_04_04/source/ti/ble5stack/config/factory_config.opt"  -mv7M4 --code_state=16 --float_support=FPv4SPD16 -me -O4 --opt_for_speed=0 --include_path="C:/Users/User/workspace_v10/simple_serial_socket_server_app_CC26X2R1_LAUNCHXL_tirtos_ccs" --include_path="C:/Users/User/workspace_v10/simple_serial_socket_server_app_CC26X2R1_LAUNCHXL_tirtos_ccs/Release" --include_path="D:/ti/ble_examples-simplelink_cc13x2_26x2_sdk-4.10/examples/rtos/CC26X2R1_LAUNCHXL/ble5apps/simple_serial_socket_server/Application" --include_path="D:/ti/simplelink_cc13x2_26x2_sdk_4_40_04_04/source/ti/ble5stack/controller/cc26xx/inc" --include_path="D:/ti/simplelink_cc13x2_26x2_sdk_4_40_04_04/source/ti/ble5stack/inc" --include_path="D:/ti/simplelink_cc13x2_26x2_sdk_4_40_04_04/source/ti/ble5stack/rom" --include_path="D:/ti/simplelink_cc13x2_26x2_sdk_4_40_04_04/source/ti/ble5stack/common/cc26xx" --include_path="D:/ti/simplelink_cc13x2_26x2_sdk_4_40_04_04/source/ti/ble5stack/icall/inc" --include_path="D:/ti/simplelink_cc13x2_26x2_sdk_4_40_04_04/source/ti/ble5stack/hal/src/target/_common" --include_path="D:/ti/simplelink_cc13x2_26x2_sdk_4_40_04_04/source/ti/ble5stack/hal/src/target/_common/cc26xx" --include_path="D:/ti/simplelink_cc13x2_26x2_sdk_4_40_04_04/source/ti/ble5stack/hal/src/inc" --include_path="D:/ti/simplelink_cc13x2_26x2_sdk_4_40_04_04/source/ti/ble5stack/heapmgr" --include_path="D:/ti/simplelink_cc13x2_26x2_sdk_4_40_04_04/source/ti/ble5stack/profiles/dev_info" --include_path="D:/ti/ble_examples-simplelink_cc13x2_26x2_sdk-4.10/source/ti/ble5stack/profiles/simple_service_discovery" --include_path="D:/ti/simplelink_cc13x2_26x2_sdk_4_40_04_04/source/ti/ble5stack/profiles/simple_profile" --include_path="D:/ti/ble_examples-simplelink_cc13x2_26x2_sdk-4.10/source/ti/ble5stack/profiles/simple_serial_stream" --include_path="D:/ti/simplelink_cc13x2_26x2_sdk_4_40_04_04/source/ti/ble5stack/icall/src/inc" --include_path="D:/ti/simplelink_cc13x2_26x2_sdk_4_40_04_04/source/ti/ble5stack/osal/src/inc" --include_path="D:/ti/simplelink_cc13x2_26x2_sdk_4_40_04_04/source/ti/ble5stack/services/src/saddr" --include_path="D:/ti/simplelink_cc13x2_26x2_sdk_4_40_04_04/source/ti/ble5stack/services/src/sdata" --include_path="D:/ti/simplelink_cc13x2_26x2_sdk_4_40_04_04/source/ti/common/nv" --include_path="D:/ti/simplelink_cc13x2_26x2_sdk_4_40_04_04/source/ti/common/cc26xx" --include_path="D:/ti/simplelink_cc13x2_26x2_sdk_4_40_04_04/source/ti/devices/cc13x2_cc26x2" --include_path="D:/ti/simplelink_cc13x2_26x2_sdk_4_40_04_04/source/ti/posix/ccs" --include_path="D:/ti/ccs1020/ccs/tools/compiler/ti-cgt-arm_20.2.4.LTS/include" --define=DeviceFamily_CC26X2 --define=FLASH_ROM_BUILD --define=NVOCMP_NWSAMEITEM=1 -g --c99 --gcc --diag_warning=225 --diag_warning=255 --diag_wrap=off --display_error_number --gen_func_subsections=on --abi=eabi --preproc_with_compile --preproc_dependency="Profiles/$(basename $(<F)).d_raw" --include_path="C:/Users/User/workspace_v10/simple_serial_socket_server_app_CC26X2R1_LAUNCHXL_tirtos_ccs/Release/syscfg" --obj_directory="Profiles" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

Profiles/%.obj: ../Profiles/%.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: Arm Compiler'
	"D:/ti/ccs1020/ccs/tools/compiler/ti-cgt-arm_20.2.4.LTS/bin/armcl" --cmd_file="C:/Users/User/workspace_v10/simple_serial_socket_server_app_CC26X2R1_LAUNCHXL_tirtos_ccs/Release/syscfg/ti_ble_app_config.opt" --cmd_file="C:/Users/User/workspace_v10/simple_serial_socket_server_app_CC26X2R1_LAUNCHXL_tirtos_ccs/Release/syscfg/ti_build_config.opt" --cmd_file="D:/ti/simplelink_cc13x2_26x2_sdk_4_40_04_04/source/ti/ble5stack/config/build_components.opt" --cmd_file="D:/ti/simplelink_cc13x2_26x2_sdk_4_40_04_04/source/ti/ble5stack/config/factory_config.opt"  -mv7M4 --code_state=16 --float_support=FPv4SPD16 -me -O4 --opt_for_speed=0 --include_path="C:/Users/User/workspace_v10/simple_serial_socket_server_app_CC26X2R1_LAUNCHXL_tirtos_ccs" --include_path="C:/Users/User/workspace_v10/simple_serial_socket_server_app_CC26X2R1_LAUNCHXL_tirtos_ccs/Release" --include_path="D:/ti/ble_examples-simplelink_cc13x2_26x2_sdk-4.10/examples/rtos/CC26X2R1_LAUNCHXL/ble5apps/simple_serial_socket_server/Application" --include_path="D:/ti/simplelink_cc13x2_26x2_sdk_4_40_04_04/source/ti/ble5stack/controller/cc26xx/inc" --include_path="D:/ti/simplelink_cc13x2_26x2_sdk_4_40_04_04/source/ti/ble5stack/inc" --include_path="D:/ti/simplelink_cc13x2_26x2_sdk_4_40_04_04/source/ti/ble5stack/rom" --include_path="D:/ti/simplelink_cc13x2_26x2_sdk_4_40_04_04/source/ti/ble5stack/common/cc26xx" --include_path="D:/ti/simplelink_cc13x2_26x2_sdk_4_40_04_04/source/ti/ble5stack/icall/inc" --include_path="D:/ti/simplelink_cc13x2_26x2_sdk_4_40_04_04/source/ti/ble5stack/hal/src/target/_common" --include_path="D:/ti/simplelink_cc13x2_26x2_sdk_4_40_04_04/source/ti/ble5stack/hal/src/target/_common/cc26xx" --include_path="D:/ti/simplelink_cc13x2_26x2_sdk_4_40_04_04/source/ti/ble5stack/hal/src/inc" --include_path="D:/ti/simplelink_cc13x2_26x2_sdk_4_40_04_04/source/ti/ble5stack/heapmgr" --include_path="D:/ti/simplelink_cc13x2_26x2_sdk_4_40_04_04/source/ti/ble5stack/profiles/dev_info" --include_path="D:/ti/ble_examples-simplelink_cc13x2_26x2_sdk-4.10/source/ti/ble5stack/profiles/simple_service_discovery" --include_path="D:/ti/simplelink_cc13x2_26x2_sdk_4_40_04_04/source/ti/ble5stack/profiles/simple_profile" --include_path="D:/ti/ble_examples-simplelink_cc13x2_26x2_sdk-4.10/source/ti/ble5stack/profiles/simple_serial_stream" --include_path="D:/ti/simplelink_cc13x2_26x2_sdk_4_40_04_04/source/ti/ble5stack/icall/src/inc" --include_path="D:/ti/simplelink_cc13x2_26x2_sdk_4_40_04_04/source/ti/ble5stack/osal/src/inc" --include_path="D:/ti/simplelink_cc13x2_26x2_sdk_4_40_04_04/source/ti/ble5stack/services/src/saddr" --include_path="D:/ti/simplelink_cc13x2_26x2_sdk_4_40_04_04/source/ti/ble5stack/services/src/sdata" --include_path="D:/ti/simplelink_cc13x2_26x2_sdk_4_40_04_04/source/ti/common/nv" --include_path="D:/ti/simplelink_cc13x2_26x2_sdk_4_40_04_04/source/ti/common/cc26xx" --include_path="D:/ti/simplelink_cc13x2_26x2_sdk_4_40_04_04/source/ti/devices/cc13x2_cc26x2" --include_path="D:/ti/simplelink_cc13x2_26x2_sdk_4_40_04_04/source/ti/posix/ccs" --include_path="D:/ti/ccs1020/ccs/tools/compiler/ti-cgt-arm_20.2.4.LTS/include" --define=DeviceFamily_CC26X2 --define=FLASH_ROM_BUILD --define=NVOCMP_NWSAMEITEM=1 -g --c99 --gcc --diag_warning=225 --diag_warning=255 --diag_wrap=off --display_error_number --gen_func_subsections=on --abi=eabi --preproc_with_compile --preproc_dependency="Profiles/$(basename $(<F)).d_raw" --include_path="C:/Users/User/workspace_v10/simple_serial_socket_server_app_CC26X2R1_LAUNCHXL_tirtos_ccs/Release/syscfg" --obj_directory="Profiles" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '


