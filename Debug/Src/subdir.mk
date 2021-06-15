################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Src/30010_io.c \
../Src/ExcelLut.c \
../Src/PWMGen.c \
../Src/Timer.c \
../Src/ansi.c \
../Src/battleship.c \
../Src/display.c \
../Src/main.c \
../Src/pinsetup.c \
../Src/stm32f30x_tim.c \
../Src/structures.c \
../Src/syscalls.c \
../Src/sysmem.c \
../Src/system_stm32f30x.c \
../Src/window.c 

OBJS += \
./Src/30010_io.o \
./Src/ExcelLut.o \
./Src/PWMGen.o \
./Src/Timer.o \
./Src/ansi.o \
./Src/battleship.o \
./Src/display.o \
./Src/main.o \
./Src/pinsetup.o \
./Src/stm32f30x_tim.o \
./Src/structures.o \
./Src/syscalls.o \
./Src/sysmem.o \
./Src/system_stm32f30x.o \
./Src/window.o 

C_DEPS += \
./Src/30010_io.d \
./Src/ExcelLut.d \
./Src/PWMGen.d \
./Src/Timer.d \
./Src/ansi.d \
./Src/battleship.d \
./Src/display.d \
./Src/main.d \
./Src/pinsetup.d \
./Src/stm32f30x_tim.d \
./Src/structures.d \
./Src/syscalls.d \
./Src/sysmem.d \
./Src/system_stm32f30x.d \
./Src/window.d 


# Each subdirectory must supply rules for building sources it contributes
Src/30010_io.o: ../Src/30010_io.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32 -DSTM32F302R8Tx -DSTM32F3 -DNUCLEO_F302R8 -DDEBUG '-DUSE_STDPERIPH_DRIVER=1' -c -I"C:/Users/Niels/Desktop/Personalshit/Personalshit/SPL/inc" -I"C:/Users/Niels/Desktop/Personalshit/Personalshit/Inc" -I"C:/Users/Niels/Desktop/Personalshit/Personalshit/cmsis" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Src/30010_io.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Src/ExcelLut.o: ../Src/ExcelLut.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32 -DSTM32F302R8Tx -DSTM32F3 -DNUCLEO_F302R8 -DDEBUG '-DUSE_STDPERIPH_DRIVER=1' -c -I"C:/Users/Niels/Desktop/Personalshit/Personalshit/SPL/inc" -I"C:/Users/Niels/Desktop/Personalshit/Personalshit/Inc" -I"C:/Users/Niels/Desktop/Personalshit/Personalshit/cmsis" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Src/ExcelLut.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Src/PWMGen.o: ../Src/PWMGen.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32 -DSTM32F302R8Tx -DSTM32F3 -DNUCLEO_F302R8 -DDEBUG '-DUSE_STDPERIPH_DRIVER=1' -c -I"C:/Users/Niels/Desktop/Personalshit/Personalshit/SPL/inc" -I"C:/Users/Niels/Desktop/Personalshit/Personalshit/Inc" -I"C:/Users/Niels/Desktop/Personalshit/Personalshit/cmsis" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Src/PWMGen.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Src/Timer.o: ../Src/Timer.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32 -DSTM32F302R8Tx -DSTM32F3 -DNUCLEO_F302R8 -DDEBUG '-DUSE_STDPERIPH_DRIVER=1' -c -I"C:/Users/Niels/Desktop/Personalshit/Personalshit/SPL/inc" -I"C:/Users/Niels/Desktop/Personalshit/Personalshit/Inc" -I"C:/Users/Niels/Desktop/Personalshit/Personalshit/cmsis" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Src/Timer.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Src/ansi.o: ../Src/ansi.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32 -DSTM32F302R8Tx -DSTM32F3 -DNUCLEO_F302R8 -DDEBUG '-DUSE_STDPERIPH_DRIVER=1' -c -I"C:/Users/Niels/Desktop/Personalshit/Personalshit/SPL/inc" -I"C:/Users/Niels/Desktop/Personalshit/Personalshit/Inc" -I"C:/Users/Niels/Desktop/Personalshit/Personalshit/cmsis" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Src/ansi.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Src/battleship.o: ../Src/battleship.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32 -DSTM32F302R8Tx -DSTM32F3 -DNUCLEO_F302R8 -DDEBUG '-DUSE_STDPERIPH_DRIVER=1' -c -I"C:/Users/Niels/Desktop/Personalshit/Personalshit/SPL/inc" -I"C:/Users/Niels/Desktop/Personalshit/Personalshit/Inc" -I"C:/Users/Niels/Desktop/Personalshit/Personalshit/cmsis" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Src/battleship.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Src/display.o: ../Src/display.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32 -DSTM32F302R8Tx -DSTM32F3 -DNUCLEO_F302R8 -DDEBUG '-DUSE_STDPERIPH_DRIVER=1' -c -I"C:/Users/Niels/Desktop/Personalshit/Personalshit/SPL/inc" -I"C:/Users/Niels/Desktop/Personalshit/Personalshit/Inc" -I"C:/Users/Niels/Desktop/Personalshit/Personalshit/cmsis" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Src/display.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Src/main.o: ../Src/main.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32 -DSTM32F302R8Tx -DSTM32F3 -DNUCLEO_F302R8 -DDEBUG '-DUSE_STDPERIPH_DRIVER=1' -c -I"C:/Users/Niels/Desktop/Personalshit/Personalshit/SPL/inc" -I"C:/Users/Niels/Desktop/Personalshit/Personalshit/Inc" -I"C:/Users/Niels/Desktop/Personalshit/Personalshit/cmsis" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Src/main.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Src/pinsetup.o: ../Src/pinsetup.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32 -DSTM32F302R8Tx -DSTM32F3 -DNUCLEO_F302R8 -DDEBUG '-DUSE_STDPERIPH_DRIVER=1' -c -I"C:/Users/Niels/Desktop/Personalshit/Personalshit/SPL/inc" -I"C:/Users/Niels/Desktop/Personalshit/Personalshit/Inc" -I"C:/Users/Niels/Desktop/Personalshit/Personalshit/cmsis" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Src/pinsetup.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Src/stm32f30x_tim.o: ../Src/stm32f30x_tim.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32 -DSTM32F302R8Tx -DSTM32F3 -DNUCLEO_F302R8 -DDEBUG '-DUSE_STDPERIPH_DRIVER=1' -c -I"C:/Users/Niels/Desktop/Personalshit/Personalshit/SPL/inc" -I"C:/Users/Niels/Desktop/Personalshit/Personalshit/Inc" -I"C:/Users/Niels/Desktop/Personalshit/Personalshit/cmsis" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Src/stm32f30x_tim.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Src/structures.o: ../Src/structures.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32 -DSTM32F302R8Tx -DSTM32F3 -DNUCLEO_F302R8 -DDEBUG '-DUSE_STDPERIPH_DRIVER=1' -c -I"C:/Users/Niels/Desktop/Personalshit/Personalshit/SPL/inc" -I"C:/Users/Niels/Desktop/Personalshit/Personalshit/Inc" -I"C:/Users/Niels/Desktop/Personalshit/Personalshit/cmsis" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Src/structures.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Src/syscalls.o: ../Src/syscalls.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32 -DSTM32F302R8Tx -DSTM32F3 -DNUCLEO_F302R8 -DDEBUG '-DUSE_STDPERIPH_DRIVER=1' -c -I"C:/Users/Niels/Desktop/Personalshit/Personalshit/SPL/inc" -I"C:/Users/Niels/Desktop/Personalshit/Personalshit/Inc" -I"C:/Users/Niels/Desktop/Personalshit/Personalshit/cmsis" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Src/syscalls.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Src/sysmem.o: ../Src/sysmem.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32 -DSTM32F302R8Tx -DSTM32F3 -DNUCLEO_F302R8 -DDEBUG '-DUSE_STDPERIPH_DRIVER=1' -c -I"C:/Users/Niels/Desktop/Personalshit/Personalshit/SPL/inc" -I"C:/Users/Niels/Desktop/Personalshit/Personalshit/Inc" -I"C:/Users/Niels/Desktop/Personalshit/Personalshit/cmsis" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Src/sysmem.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Src/system_stm32f30x.o: ../Src/system_stm32f30x.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32 -DSTM32F302R8Tx -DSTM32F3 -DNUCLEO_F302R8 -DDEBUG '-DUSE_STDPERIPH_DRIVER=1' -c -I"C:/Users/Niels/Desktop/Personalshit/Personalshit/SPL/inc" -I"C:/Users/Niels/Desktop/Personalshit/Personalshit/Inc" -I"C:/Users/Niels/Desktop/Personalshit/Personalshit/cmsis" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Src/system_stm32f30x.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Src/window.o: ../Src/window.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32 -DSTM32F302R8Tx -DSTM32F3 -DNUCLEO_F302R8 -DDEBUG '-DUSE_STDPERIPH_DRIVER=1' -c -I"C:/Users/Niels/Desktop/Personalshit/Personalshit/SPL/inc" -I"C:/Users/Niels/Desktop/Personalshit/Personalshit/Inc" -I"C:/Users/Niels/Desktop/Personalshit/Personalshit/cmsis" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Src/window.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

