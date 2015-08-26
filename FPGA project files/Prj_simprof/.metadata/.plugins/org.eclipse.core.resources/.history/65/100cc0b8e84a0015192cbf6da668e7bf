################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/simprof.c \
../src/simprof_selftest.c \
../src/simproftest.c 

LD_SRCS += \
../src/lscript.ld 

OBJS += \
./src/simprof.o \
./src/simprof_selftest.o \
./src/simproftest.o 

C_DEPS += \
./src/simprof.d \
./src/simprof_selftest.d \
./src/simproftest.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo Building file: $<
	@echo Invoking: MicroBlaze gcc compiler
	mb-gcc -Wall -O0 -g3 -c -fmessage-length=0 -I../../empty_application_bsp_0/microblaze_0/include -mxl-barrel-shift -mxl-pattern-compare -mcpu=v8.10.a -mno-xl-soft-mul -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo Finished building: $<
	@echo ' '


