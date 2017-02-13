################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
LD_SRCS += \
../src/lscript.ld 

C_SRCS += \
../src/framebuffer.c \
../src/helloworld.c \
../src/platform.c \
../src/scaler_new.c \
../src/si570.c \
../src/test_pattern_gen.c \
../src/vid_io_intf.c \
../src/video_resolution.c \
../src/vtiming_det.c \
../src/vtiming_gen.c \
../src/zc702_i2c_utils.c 

OBJS += \
./src/framebuffer.o \
./src/helloworld.o \
./src/platform.o \
./src/scaler_new.o \
./src/si570.o \
./src/test_pattern_gen.o \
./src/vid_io_intf.o \
./src/video_resolution.o \
./src/vtiming_det.o \
./src/vtiming_gen.o \
./src/zc702_i2c_utils.o 

C_DEPS += \
./src/framebuffer.d \
./src/helloworld.d \
./src/platform.d \
./src/scaler_new.d \
./src/si570.d \
./src/test_pattern_gen.d \
./src/vid_io_intf.d \
./src/video_resolution.d \
./src/vtiming_det.d \
./src/vtiming_gen.d \
./src/zc702_i2c_utils.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM gcc compiler'
	arm-xilinx-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -I../../hdmi_in_out_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


