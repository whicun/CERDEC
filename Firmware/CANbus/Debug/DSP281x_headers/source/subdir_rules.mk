################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Each subdirectory must supply rules for building sources it contributes
DSP281x_headers/source/DSP281x_GlobalVariableDefs.obj: ../DSP281x_headers/source/DSP281x_GlobalVariableDefs.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/ti-cgt-c2000_15.12.7.LTS/bin/cl2000" -v28 -ml -mt -O3 --include_path="C:/ti/ccsv6/tools/compiler/ti-cgt-c2000_15.12.7.LTS/include" --include_path="C:/Users/ebenton/Documents/CERDEC TS/Firmware/CANbus/Flash2812_API_V210/include" --include_path="C:/Users/ebenton/Documents/CERDEC TS/Firmware/CANbus/DSP281x_common/include" --include_path="C:/Users/ebenton/Documents/CERDEC TS/Firmware/CANbus/DSP281x_headers/include" --include_path="C:/Users/ebenton/Documents/CERDEC TS/Firmware/CANbus/Headers" --advice:performance=all -g --define="_DEBUG" --define="LARGE_MODEL" --quiet --issue_remarks --diag_warning=225 -k --c_src_interlist --preproc_with_compile --preproc_dependency="DSP281x_headers/source/DSP281x_GlobalVariableDefs.d" --obj_directory="DSP281x_headers/source" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '


