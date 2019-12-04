################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Each subdirectory must supply rules for building sources it contributes
Source/CAN_PCKA.obj: ../Source/CAN_PCKA.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/ti-cgt-c2000_15.12.4.LTS/bin/cl2000" -v28 -ml -mt -O3 --include_path="C:/ti/ccsv6/tools/compiler/ti-cgt-c2000_15.12.4.LTS/include" --include_path="C:/Users/ebenton/Documents/CERDEC TS/Firmware/CANbus/Flash2812_API_V210/include" --include_path="C:/Users/ebenton/Documents/CERDEC TS/Firmware/CANbus/DSP281x_common/include" --include_path="C:/Users/ebenton/Documents/CERDEC TS/Firmware/CANbus/DSP281x_headers/include" --include_path="C:/Users/ebenton/Documents/CERDEC TS/Firmware/CANbus/Headers" -g --define="_DEBUG" --define="LARGE_MODEL" --quiet --diag_warning=225 --issue_remarks -k --c_src_interlist --preproc_with_compile --preproc_dependency="Source/CAN_PCKA.d" --obj_directory="Source" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

Source/DSP281x_ECan.obj: ../Source/DSP281x_ECan.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/ti-cgt-c2000_15.12.4.LTS/bin/cl2000" -v28 -ml -mt -O3 --include_path="C:/ti/ccsv6/tools/compiler/ti-cgt-c2000_15.12.4.LTS/include" --include_path="C:/Users/ebenton/Documents/CERDEC TS/Firmware/CANbus/Flash2812_API_V210/include" --include_path="C:/Users/ebenton/Documents/CERDEC TS/Firmware/CANbus/DSP281x_common/include" --include_path="C:/Users/ebenton/Documents/CERDEC TS/Firmware/CANbus/DSP281x_headers/include" --include_path="C:/Users/ebenton/Documents/CERDEC TS/Firmware/CANbus/Headers" -g --define="_DEBUG" --define="LARGE_MODEL" --quiet --diag_warning=225 --issue_remarks -k --c_src_interlist --preproc_with_compile --preproc_dependency="Source/DSP281x_ECan.d" --obj_directory="Source" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

Source/System_Object.obj: ../Source/System_Object.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/ti-cgt-c2000_15.12.4.LTS/bin/cl2000" -v28 -ml -mt -O3 --include_path="C:/ti/ccsv6/tools/compiler/ti-cgt-c2000_15.12.4.LTS/include" --include_path="C:/Users/ebenton/Documents/CERDEC TS/Firmware/CANbus/Flash2812_API_V210/include" --include_path="C:/Users/ebenton/Documents/CERDEC TS/Firmware/CANbus/DSP281x_common/include" --include_path="C:/Users/ebenton/Documents/CERDEC TS/Firmware/CANbus/DSP281x_headers/include" --include_path="C:/Users/ebenton/Documents/CERDEC TS/Firmware/CANbus/Headers" -g --define="_DEBUG" --define="LARGE_MODEL" --quiet --diag_warning=225 --issue_remarks -k --c_src_interlist --preproc_with_compile --preproc_dependency="Source/System_Object.d" --obj_directory="Source" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

Source/ad7738.obj: ../Source/ad7738.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/ti-cgt-c2000_15.12.4.LTS/bin/cl2000" -v28 -ml -mt -O3 --include_path="C:/ti/ccsv6/tools/compiler/ti-cgt-c2000_15.12.4.LTS/include" --include_path="C:/Users/ebenton/Documents/CERDEC TS/Firmware/CANbus/Flash2812_API_V210/include" --include_path="C:/Users/ebenton/Documents/CERDEC TS/Firmware/CANbus/DSP281x_common/include" --include_path="C:/Users/ebenton/Documents/CERDEC TS/Firmware/CANbus/DSP281x_headers/include" --include_path="C:/Users/ebenton/Documents/CERDEC TS/Firmware/CANbus/Headers" -g --define="_DEBUG" --define="LARGE_MODEL" --quiet --diag_warning=225 --issue_remarks -k --c_src_interlist --preproc_with_compile --preproc_dependency="Source/ad7738.d" --obj_directory="Source" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

Source/data.obj: ../Source/data.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/ti-cgt-c2000_15.12.4.LTS/bin/cl2000" -v28 -ml -mt -O3 --include_path="C:/ti/ccsv6/tools/compiler/ti-cgt-c2000_15.12.4.LTS/include" --include_path="C:/Users/ebenton/Documents/CERDEC TS/Firmware/CANbus/Flash2812_API_V210/include" --include_path="C:/Users/ebenton/Documents/CERDEC TS/Firmware/CANbus/DSP281x_common/include" --include_path="C:/Users/ebenton/Documents/CERDEC TS/Firmware/CANbus/DSP281x_headers/include" --include_path="C:/Users/ebenton/Documents/CERDEC TS/Firmware/CANbus/Headers" -g --define="_DEBUG" --define="LARGE_MODEL" --quiet --diag_warning=225 --issue_remarks -k --c_src_interlist --preproc_with_compile --preproc_dependency="Source/data.d" --obj_directory="Source" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

Source/diskio.obj: ../Source/diskio.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/ti-cgt-c2000_15.12.4.LTS/bin/cl2000" -v28 -ml -mt -O3 --include_path="C:/ti/ccsv6/tools/compiler/ti-cgt-c2000_15.12.4.LTS/include" --include_path="C:/Users/ebenton/Documents/CERDEC TS/Firmware/CANbus/Flash2812_API_V210/include" --include_path="C:/Users/ebenton/Documents/CERDEC TS/Firmware/CANbus/DSP281x_common/include" --include_path="C:/Users/ebenton/Documents/CERDEC TS/Firmware/CANbus/DSP281x_headers/include" --include_path="C:/Users/ebenton/Documents/CERDEC TS/Firmware/CANbus/Headers" -g --define="_DEBUG" --define="LARGE_MODEL" --quiet --diag_warning=225 --issue_remarks -k --c_src_interlist --preproc_with_compile --preproc_dependency="Source/diskio.d" --obj_directory="Source" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

Source/ds1wire.obj: ../Source/ds1wire.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/ti-cgt-c2000_15.12.4.LTS/bin/cl2000" -v28 -ml -mt -O3 --include_path="C:/ti/ccsv6/tools/compiler/ti-cgt-c2000_15.12.4.LTS/include" --include_path="C:/Users/ebenton/Documents/CERDEC TS/Firmware/CANbus/Flash2812_API_V210/include" --include_path="C:/Users/ebenton/Documents/CERDEC TS/Firmware/CANbus/DSP281x_common/include" --include_path="C:/Users/ebenton/Documents/CERDEC TS/Firmware/CANbus/DSP281x_headers/include" --include_path="C:/Users/ebenton/Documents/CERDEC TS/Firmware/CANbus/Headers" -g --define="_DEBUG" --define="LARGE_MODEL" --quiet --diag_warning=225 --issue_remarks -k --c_src_interlist --preproc_with_compile --preproc_dependency="Source/ds1wire.d" --obj_directory="Source" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

Source/extio.obj: ../Source/extio.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/ti-cgt-c2000_15.12.4.LTS/bin/cl2000" -v28 -ml -mt -O3 --include_path="C:/ti/ccsv6/tools/compiler/ti-cgt-c2000_15.12.4.LTS/include" --include_path="C:/Users/ebenton/Documents/CERDEC TS/Firmware/CANbus/Flash2812_API_V210/include" --include_path="C:/Users/ebenton/Documents/CERDEC TS/Firmware/CANbus/DSP281x_common/include" --include_path="C:/Users/ebenton/Documents/CERDEC TS/Firmware/CANbus/DSP281x_headers/include" --include_path="C:/Users/ebenton/Documents/CERDEC TS/Firmware/CANbus/Headers" -g --define="_DEBUG" --define="LARGE_MODEL" --quiet --diag_warning=225 --issue_remarks -k --c_src_interlist --preproc_with_compile --preproc_dependency="Source/extio.d" --obj_directory="Source" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

Source/ff.obj: ../Source/ff.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/ti-cgt-c2000_15.12.4.LTS/bin/cl2000" -v28 -ml -mt -O3 --include_path="C:/ti/ccsv6/tools/compiler/ti-cgt-c2000_15.12.4.LTS/include" --include_path="C:/Users/ebenton/Documents/CERDEC TS/Firmware/CANbus/Flash2812_API_V210/include" --include_path="C:/Users/ebenton/Documents/CERDEC TS/Firmware/CANbus/DSP281x_common/include" --include_path="C:/Users/ebenton/Documents/CERDEC TS/Firmware/CANbus/DSP281x_headers/include" --include_path="C:/Users/ebenton/Documents/CERDEC TS/Firmware/CANbus/Headers" -g --define="_DEBUG" --define="LARGE_MODEL" --quiet --diag_warning=225 --issue_remarks -k --c_src_interlist --preproc_with_compile --preproc_dependency="Source/ff.d" --obj_directory="Source" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

Source/flash.obj: ../Source/flash.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/ti-cgt-c2000_15.12.4.LTS/bin/cl2000" -v28 -ml -mt -O3 --include_path="C:/ti/ccsv6/tools/compiler/ti-cgt-c2000_15.12.4.LTS/include" --include_path="C:/Users/ebenton/Documents/CERDEC TS/Firmware/CANbus/Flash2812_API_V210/include" --include_path="C:/Users/ebenton/Documents/CERDEC TS/Firmware/CANbus/DSP281x_common/include" --include_path="C:/Users/ebenton/Documents/CERDEC TS/Firmware/CANbus/DSP281x_headers/include" --include_path="C:/Users/ebenton/Documents/CERDEC TS/Firmware/CANbus/Headers" -g --define="_DEBUG" --define="LARGE_MODEL" --quiet --diag_warning=225 --issue_remarks -k --c_src_interlist --preproc_with_compile --preproc_dependency="Source/flash.d" --obj_directory="Source" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

Source/gpio.obj: ../Source/gpio.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/ti-cgt-c2000_15.12.4.LTS/bin/cl2000" -v28 -ml -mt -O3 --include_path="C:/ti/ccsv6/tools/compiler/ti-cgt-c2000_15.12.4.LTS/include" --include_path="C:/Users/ebenton/Documents/CERDEC TS/Firmware/CANbus/Flash2812_API_V210/include" --include_path="C:/Users/ebenton/Documents/CERDEC TS/Firmware/CANbus/DSP281x_common/include" --include_path="C:/Users/ebenton/Documents/CERDEC TS/Firmware/CANbus/DSP281x_headers/include" --include_path="C:/Users/ebenton/Documents/CERDEC TS/Firmware/CANbus/Headers" -g --define="_DEBUG" --define="LARGE_MODEL" --quiet --diag_warning=225 --issue_remarks -k --c_src_interlist --preproc_with_compile --preproc_dependency="Source/gpio.d" --obj_directory="Source" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

Source/lcd.obj: ../Source/lcd.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/ti-cgt-c2000_15.12.4.LTS/bin/cl2000" -v28 -ml -mt -O3 --include_path="C:/ti/ccsv6/tools/compiler/ti-cgt-c2000_15.12.4.LTS/include" --include_path="C:/Users/ebenton/Documents/CERDEC TS/Firmware/CANbus/Flash2812_API_V210/include" --include_path="C:/Users/ebenton/Documents/CERDEC TS/Firmware/CANbus/DSP281x_common/include" --include_path="C:/Users/ebenton/Documents/CERDEC TS/Firmware/CANbus/DSP281x_headers/include" --include_path="C:/Users/ebenton/Documents/CERDEC TS/Firmware/CANbus/Headers" -g --define="_DEBUG" --define="LARGE_MODEL" --quiet --diag_warning=225 --issue_remarks -k --c_src_interlist --preproc_with_compile --preproc_dependency="Source/lcd.d" --obj_directory="Source" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

Source/led.obj: ../Source/led.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/ti-cgt-c2000_15.12.4.LTS/bin/cl2000" -v28 -ml -mt -O3 --include_path="C:/ti/ccsv6/tools/compiler/ti-cgt-c2000_15.12.4.LTS/include" --include_path="C:/Users/ebenton/Documents/CERDEC TS/Firmware/CANbus/Flash2812_API_V210/include" --include_path="C:/Users/ebenton/Documents/CERDEC TS/Firmware/CANbus/DSP281x_common/include" --include_path="C:/Users/ebenton/Documents/CERDEC TS/Firmware/CANbus/DSP281x_headers/include" --include_path="C:/Users/ebenton/Documents/CERDEC TS/Firmware/CANbus/Headers" -g --define="_DEBUG" --define="LARGE_MODEL" --quiet --diag_warning=225 --issue_remarks -k --c_src_interlist --preproc_with_compile --preproc_dependency="Source/led.d" --obj_directory="Source" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

Source/mcbsp.obj: ../Source/mcbsp.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/ti-cgt-c2000_15.12.4.LTS/bin/cl2000" -v28 -ml -mt -O3 --include_path="C:/ti/ccsv6/tools/compiler/ti-cgt-c2000_15.12.4.LTS/include" --include_path="C:/Users/ebenton/Documents/CERDEC TS/Firmware/CANbus/Flash2812_API_V210/include" --include_path="C:/Users/ebenton/Documents/CERDEC TS/Firmware/CANbus/DSP281x_common/include" --include_path="C:/Users/ebenton/Documents/CERDEC TS/Firmware/CANbus/DSP281x_headers/include" --include_path="C:/Users/ebenton/Documents/CERDEC TS/Firmware/CANbus/Headers" -g --define="_DEBUG" --define="LARGE_MODEL" --quiet --diag_warning=225 --issue_remarks -k --c_src_interlist --preproc_with_compile --preproc_dependency="Source/mcbsp.d" --obj_directory="Source" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

Source/motor.obj: ../Source/motor.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/ti-cgt-c2000_15.12.4.LTS/bin/cl2000" -v28 -ml -mt -O3 --include_path="C:/ti/ccsv6/tools/compiler/ti-cgt-c2000_15.12.4.LTS/include" --include_path="C:/Users/ebenton/Documents/CERDEC TS/Firmware/CANbus/Flash2812_API_V210/include" --include_path="C:/Users/ebenton/Documents/CERDEC TS/Firmware/CANbus/DSP281x_common/include" --include_path="C:/Users/ebenton/Documents/CERDEC TS/Firmware/CANbus/DSP281x_headers/include" --include_path="C:/Users/ebenton/Documents/CERDEC TS/Firmware/CANbus/Headers" -g --define="_DEBUG" --define="LARGE_MODEL" --quiet --diag_warning=225 --issue_remarks -k --c_src_interlist --preproc_with_compile --preproc_dependency="Source/motor.d" --obj_directory="Source" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

Source/prod.obj: ../Source/prod.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/ti-cgt-c2000_15.12.4.LTS/bin/cl2000" -v28 -ml -mt -O3 --include_path="C:/ti/ccsv6/tools/compiler/ti-cgt-c2000_15.12.4.LTS/include" --include_path="C:/Users/ebenton/Documents/CERDEC TS/Firmware/CANbus/Flash2812_API_V210/include" --include_path="C:/Users/ebenton/Documents/CERDEC TS/Firmware/CANbus/DSP281x_common/include" --include_path="C:/Users/ebenton/Documents/CERDEC TS/Firmware/CANbus/DSP281x_headers/include" --include_path="C:/Users/ebenton/Documents/CERDEC TS/Firmware/CANbus/Headers" -g --define="_DEBUG" --define="LARGE_MODEL" --quiet --diag_warning=225 --issue_remarks -k --c_src_interlist --preproc_with_compile --preproc_dependency="Source/prod.d" --obj_directory="Source" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

Source/qep.obj: ../Source/qep.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/ti-cgt-c2000_15.12.4.LTS/bin/cl2000" -v28 -ml -mt -O3 --include_path="C:/ti/ccsv6/tools/compiler/ti-cgt-c2000_15.12.4.LTS/include" --include_path="C:/Users/ebenton/Documents/CERDEC TS/Firmware/CANbus/Flash2812_API_V210/include" --include_path="C:/Users/ebenton/Documents/CERDEC TS/Firmware/CANbus/DSP281x_common/include" --include_path="C:/Users/ebenton/Documents/CERDEC TS/Firmware/CANbus/DSP281x_headers/include" --include_path="C:/Users/ebenton/Documents/CERDEC TS/Firmware/CANbus/Headers" -g --define="_DEBUG" --define="LARGE_MODEL" --quiet --diag_warning=225 --issue_remarks -k --c_src_interlist --preproc_with_compile --preproc_dependency="Source/qep.d" --obj_directory="Source" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

Source/sci.obj: ../Source/sci.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/ti-cgt-c2000_15.12.4.LTS/bin/cl2000" -v28 -ml -mt -O3 --include_path="C:/ti/ccsv6/tools/compiler/ti-cgt-c2000_15.12.4.LTS/include" --include_path="C:/Users/ebenton/Documents/CERDEC TS/Firmware/CANbus/Flash2812_API_V210/include" --include_path="C:/Users/ebenton/Documents/CERDEC TS/Firmware/CANbus/DSP281x_common/include" --include_path="C:/Users/ebenton/Documents/CERDEC TS/Firmware/CANbus/DSP281x_headers/include" --include_path="C:/Users/ebenton/Documents/CERDEC TS/Firmware/CANbus/Headers" -g --define="_DEBUG" --define="LARGE_MODEL" --quiet --diag_warning=225 --issue_remarks -k --c_src_interlist --preproc_with_compile --preproc_dependency="Source/sci.d" --obj_directory="Source" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

Source/spi.obj: ../Source/spi.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/ti-cgt-c2000_15.12.4.LTS/bin/cl2000" -v28 -ml -mt -O3 --include_path="C:/ti/ccsv6/tools/compiler/ti-cgt-c2000_15.12.4.LTS/include" --include_path="C:/Users/ebenton/Documents/CERDEC TS/Firmware/CANbus/Flash2812_API_V210/include" --include_path="C:/Users/ebenton/Documents/CERDEC TS/Firmware/CANbus/DSP281x_common/include" --include_path="C:/Users/ebenton/Documents/CERDEC TS/Firmware/CANbus/DSP281x_headers/include" --include_path="C:/Users/ebenton/Documents/CERDEC TS/Firmware/CANbus/Headers" -g --define="_DEBUG" --define="LARGE_MODEL" --quiet --diag_warning=225 --issue_remarks -k --c_src_interlist --preproc_with_compile --preproc_dependency="Source/spi.d" --obj_directory="Source" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

Source/system.obj: ../Source/system.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/ti-cgt-c2000_15.12.4.LTS/bin/cl2000" -v28 -ml -mt -O3 --include_path="C:/ti/ccsv6/tools/compiler/ti-cgt-c2000_15.12.4.LTS/include" --include_path="C:/Users/ebenton/Documents/CERDEC TS/Firmware/CANbus/Flash2812_API_V210/include" --include_path="C:/Users/ebenton/Documents/CERDEC TS/Firmware/CANbus/DSP281x_common/include" --include_path="C:/Users/ebenton/Documents/CERDEC TS/Firmware/CANbus/DSP281x_headers/include" --include_path="C:/Users/ebenton/Documents/CERDEC TS/Firmware/CANbus/Headers" -g --define="_DEBUG" --define="LARGE_MODEL" --quiet --diag_warning=225 --issue_remarks -k --c_src_interlist --preproc_with_compile --preproc_dependency="Source/system.d" --obj_directory="Source" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '


