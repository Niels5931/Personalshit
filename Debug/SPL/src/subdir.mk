################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../SPL/src/stm32f30x_adc.c \
../SPL/src/stm32f30x_can.c \
../SPL/src/stm32f30x_comp.c \
../SPL/src/stm32f30x_crc.c \
../SPL/src/stm32f30x_dac.c \
../SPL/src/stm32f30x_dbgmcu.c \
../SPL/src/stm32f30x_dma.c \
../SPL/src/stm32f30x_exti.c \
../SPL/src/stm32f30x_flash.c \
../SPL/src/stm32f30x_gpio.c \
../SPL/src/stm32f30x_i2c.c \
../SPL/src/stm32f30x_iwdg.c \
../SPL/src/stm32f30x_misc.c \
../SPL/src/stm32f30x_opamp.c \
../SPL/src/stm32f30x_pwr.c \
../SPL/src/stm32f30x_rcc.c \
../SPL/src/stm32f30x_rtc.c \
../SPL/src/stm32f30x_spi.c \
../SPL/src/stm32f30x_syscfg.c \
../SPL/src/stm32f30x_tim.c \
../SPL/src/stm32f30x_usart.c \
../SPL/src/stm32f30x_wwdg.c 

OBJS += \
./SPL/src/stm32f30x_adc.o \
./SPL/src/stm32f30x_can.o \
./SPL/src/stm32f30x_comp.o \
./SPL/src/stm32f30x_crc.o \
./SPL/src/stm32f30x_dac.o \
./SPL/src/stm32f30x_dbgmcu.o \
./SPL/src/stm32f30x_dma.o \
./SPL/src/stm32f30x_exti.o \
./SPL/src/stm32f30x_flash.o \
./SPL/src/stm32f30x_gpio.o \
./SPL/src/stm32f30x_i2c.o \
./SPL/src/stm32f30x_iwdg.o \
./SPL/src/stm32f30x_misc.o \
./SPL/src/stm32f30x_opamp.o \
./SPL/src/stm32f30x_pwr.o \
./SPL/src/stm32f30x_rcc.o \
./SPL/src/stm32f30x_rtc.o \
./SPL/src/stm32f30x_spi.o \
./SPL/src/stm32f30x_syscfg.o \
./SPL/src/stm32f30x_tim.o \
./SPL/src/stm32f30x_usart.o \
./SPL/src/stm32f30x_wwdg.o 

C_DEPS += \
./SPL/src/stm32f30x_adc.d \
./SPL/src/stm32f30x_can.d \
./SPL/src/stm32f30x_comp.d \
./SPL/src/stm32f30x_crc.d \
./SPL/src/stm32f30x_dac.d \
./SPL/src/stm32f30x_dbgmcu.d \
./SPL/src/stm32f30x_dma.d \
./SPL/src/stm32f30x_exti.d \
./SPL/src/stm32f30x_flash.d \
./SPL/src/stm32f30x_gpio.d \
./SPL/src/stm32f30x_i2c.d \
./SPL/src/stm32f30x_iwdg.d \
./SPL/src/stm32f30x_misc.d \
./SPL/src/stm32f30x_opamp.d \
./SPL/src/stm32f30x_pwr.d \
./SPL/src/stm32f30x_rcc.d \
./SPL/src/stm32f30x_rtc.d \
./SPL/src/stm32f30x_spi.d \
./SPL/src/stm32f30x_syscfg.d \
./SPL/src/stm32f30x_tim.d \
./SPL/src/stm32f30x_usart.d \
./SPL/src/stm32f30x_wwdg.d 


# Each subdirectory must supply rules for building sources it contributes
SPL/src/stm32f30x_adc.o: ../SPL/src/stm32f30x_adc.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32 -DSTM32F302R8Tx -DSTM32F3 -DNUCLEO_F302R8 -DDEBUG '-DUSE_STDPERIPH_DRIVER=1' -c -I"C:/Users/Niels/Desktop/Personalshit/Personalshit/SPL/inc" -I"C:/Users/Niels/Desktop/Personalshit/Personalshit/Inc" -I"C:/Users/Niels/Desktop/Personalshit/Personalshit/cmsis" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"SPL/src/stm32f30x_adc.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
SPL/src/stm32f30x_can.o: ../SPL/src/stm32f30x_can.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32 -DSTM32F302R8Tx -DSTM32F3 -DNUCLEO_F302R8 -DDEBUG '-DUSE_STDPERIPH_DRIVER=1' -c -I"C:/Users/Niels/Desktop/Personalshit/Personalshit/SPL/inc" -I"C:/Users/Niels/Desktop/Personalshit/Personalshit/Inc" -I"C:/Users/Niels/Desktop/Personalshit/Personalshit/cmsis" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"SPL/src/stm32f30x_can.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
SPL/src/stm32f30x_comp.o: ../SPL/src/stm32f30x_comp.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32 -DSTM32F302R8Tx -DSTM32F3 -DNUCLEO_F302R8 -DDEBUG '-DUSE_STDPERIPH_DRIVER=1' -c -I"C:/Users/Niels/Desktop/Personalshit/Personalshit/SPL/inc" -I"C:/Users/Niels/Desktop/Personalshit/Personalshit/Inc" -I"C:/Users/Niels/Desktop/Personalshit/Personalshit/cmsis" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"SPL/src/stm32f30x_comp.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
SPL/src/stm32f30x_crc.o: ../SPL/src/stm32f30x_crc.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32 -DSTM32F302R8Tx -DSTM32F3 -DNUCLEO_F302R8 -DDEBUG '-DUSE_STDPERIPH_DRIVER=1' -c -I"C:/Users/Niels/Desktop/Personalshit/Personalshit/SPL/inc" -I"C:/Users/Niels/Desktop/Personalshit/Personalshit/Inc" -I"C:/Users/Niels/Desktop/Personalshit/Personalshit/cmsis" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"SPL/src/stm32f30x_crc.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
SPL/src/stm32f30x_dac.o: ../SPL/src/stm32f30x_dac.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32 -DSTM32F302R8Tx -DSTM32F3 -DNUCLEO_F302R8 -DDEBUG '-DUSE_STDPERIPH_DRIVER=1' -c -I"C:/Users/Niels/Desktop/Personalshit/Personalshit/SPL/inc" -I"C:/Users/Niels/Desktop/Personalshit/Personalshit/Inc" -I"C:/Users/Niels/Desktop/Personalshit/Personalshit/cmsis" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"SPL/src/stm32f30x_dac.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
SPL/src/stm32f30x_dbgmcu.o: ../SPL/src/stm32f30x_dbgmcu.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32 -DSTM32F302R8Tx -DSTM32F3 -DNUCLEO_F302R8 -DDEBUG '-DUSE_STDPERIPH_DRIVER=1' -c -I"C:/Users/Niels/Desktop/Personalshit/Personalshit/SPL/inc" -I"C:/Users/Niels/Desktop/Personalshit/Personalshit/Inc" -I"C:/Users/Niels/Desktop/Personalshit/Personalshit/cmsis" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"SPL/src/stm32f30x_dbgmcu.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
SPL/src/stm32f30x_dma.o: ../SPL/src/stm32f30x_dma.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32 -DSTM32F302R8Tx -DSTM32F3 -DNUCLEO_F302R8 -DDEBUG '-DUSE_STDPERIPH_DRIVER=1' -c -I"C:/Users/Niels/Desktop/Personalshit/Personalshit/SPL/inc" -I"C:/Users/Niels/Desktop/Personalshit/Personalshit/Inc" -I"C:/Users/Niels/Desktop/Personalshit/Personalshit/cmsis" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"SPL/src/stm32f30x_dma.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
SPL/src/stm32f30x_exti.o: ../SPL/src/stm32f30x_exti.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32 -DSTM32F302R8Tx -DSTM32F3 -DNUCLEO_F302R8 -DDEBUG '-DUSE_STDPERIPH_DRIVER=1' -c -I"C:/Users/Niels/Desktop/Personalshit/Personalshit/SPL/inc" -I"C:/Users/Niels/Desktop/Personalshit/Personalshit/Inc" -I"C:/Users/Niels/Desktop/Personalshit/Personalshit/cmsis" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"SPL/src/stm32f30x_exti.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
SPL/src/stm32f30x_flash.o: ../SPL/src/stm32f30x_flash.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32 -DSTM32F302R8Tx -DSTM32F3 -DNUCLEO_F302R8 -DDEBUG '-DUSE_STDPERIPH_DRIVER=1' -c -I"C:/Users/Niels/Desktop/Personalshit/Personalshit/SPL/inc" -I"C:/Users/Niels/Desktop/Personalshit/Personalshit/Inc" -I"C:/Users/Niels/Desktop/Personalshit/Personalshit/cmsis" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"SPL/src/stm32f30x_flash.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
SPL/src/stm32f30x_gpio.o: ../SPL/src/stm32f30x_gpio.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32 -DSTM32F302R8Tx -DSTM32F3 -DNUCLEO_F302R8 -DDEBUG '-DUSE_STDPERIPH_DRIVER=1' -c -I"C:/Users/Niels/Desktop/Personalshit/Personalshit/SPL/inc" -I"C:/Users/Niels/Desktop/Personalshit/Personalshit/Inc" -I"C:/Users/Niels/Desktop/Personalshit/Personalshit/cmsis" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"SPL/src/stm32f30x_gpio.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
SPL/src/stm32f30x_i2c.o: ../SPL/src/stm32f30x_i2c.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32 -DSTM32F302R8Tx -DSTM32F3 -DNUCLEO_F302R8 -DDEBUG '-DUSE_STDPERIPH_DRIVER=1' -c -I"C:/Users/Niels/Desktop/Personalshit/Personalshit/SPL/inc" -I"C:/Users/Niels/Desktop/Personalshit/Personalshit/Inc" -I"C:/Users/Niels/Desktop/Personalshit/Personalshit/cmsis" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"SPL/src/stm32f30x_i2c.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
SPL/src/stm32f30x_iwdg.o: ../SPL/src/stm32f30x_iwdg.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32 -DSTM32F302R8Tx -DSTM32F3 -DNUCLEO_F302R8 -DDEBUG '-DUSE_STDPERIPH_DRIVER=1' -c -I"C:/Users/Niels/Desktop/Personalshit/Personalshit/SPL/inc" -I"C:/Users/Niels/Desktop/Personalshit/Personalshit/Inc" -I"C:/Users/Niels/Desktop/Personalshit/Personalshit/cmsis" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"SPL/src/stm32f30x_iwdg.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
SPL/src/stm32f30x_misc.o: ../SPL/src/stm32f30x_misc.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32 -DSTM32F302R8Tx -DSTM32F3 -DNUCLEO_F302R8 -DDEBUG '-DUSE_STDPERIPH_DRIVER=1' -c -I"C:/Users/Niels/Desktop/Personalshit/Personalshit/SPL/inc" -I"C:/Users/Niels/Desktop/Personalshit/Personalshit/Inc" -I"C:/Users/Niels/Desktop/Personalshit/Personalshit/cmsis" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"SPL/src/stm32f30x_misc.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
SPL/src/stm32f30x_opamp.o: ../SPL/src/stm32f30x_opamp.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32 -DSTM32F302R8Tx -DSTM32F3 -DNUCLEO_F302R8 -DDEBUG '-DUSE_STDPERIPH_DRIVER=1' -c -I"C:/Users/Niels/Desktop/Personalshit/Personalshit/SPL/inc" -I"C:/Users/Niels/Desktop/Personalshit/Personalshit/Inc" -I"C:/Users/Niels/Desktop/Personalshit/Personalshit/cmsis" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"SPL/src/stm32f30x_opamp.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
SPL/src/stm32f30x_pwr.o: ../SPL/src/stm32f30x_pwr.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32 -DSTM32F302R8Tx -DSTM32F3 -DNUCLEO_F302R8 -DDEBUG '-DUSE_STDPERIPH_DRIVER=1' -c -I"C:/Users/Niels/Desktop/Personalshit/Personalshit/SPL/inc" -I"C:/Users/Niels/Desktop/Personalshit/Personalshit/Inc" -I"C:/Users/Niels/Desktop/Personalshit/Personalshit/cmsis" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"SPL/src/stm32f30x_pwr.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
SPL/src/stm32f30x_rcc.o: ../SPL/src/stm32f30x_rcc.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32 -DSTM32F302R8Tx -DSTM32F3 -DNUCLEO_F302R8 -DDEBUG '-DUSE_STDPERIPH_DRIVER=1' -c -I"C:/Users/Niels/Desktop/Personalshit/Personalshit/SPL/inc" -I"C:/Users/Niels/Desktop/Personalshit/Personalshit/Inc" -I"C:/Users/Niels/Desktop/Personalshit/Personalshit/cmsis" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"SPL/src/stm32f30x_rcc.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
SPL/src/stm32f30x_rtc.o: ../SPL/src/stm32f30x_rtc.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32 -DSTM32F302R8Tx -DSTM32F3 -DNUCLEO_F302R8 -DDEBUG '-DUSE_STDPERIPH_DRIVER=1' -c -I"C:/Users/Niels/Desktop/Personalshit/Personalshit/SPL/inc" -I"C:/Users/Niels/Desktop/Personalshit/Personalshit/Inc" -I"C:/Users/Niels/Desktop/Personalshit/Personalshit/cmsis" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"SPL/src/stm32f30x_rtc.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
SPL/src/stm32f30x_spi.o: ../SPL/src/stm32f30x_spi.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32 -DSTM32F302R8Tx -DSTM32F3 -DNUCLEO_F302R8 -DDEBUG '-DUSE_STDPERIPH_DRIVER=1' -c -I"C:/Users/Niels/Desktop/Personalshit/Personalshit/SPL/inc" -I"C:/Users/Niels/Desktop/Personalshit/Personalshit/Inc" -I"C:/Users/Niels/Desktop/Personalshit/Personalshit/cmsis" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"SPL/src/stm32f30x_spi.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
SPL/src/stm32f30x_syscfg.o: ../SPL/src/stm32f30x_syscfg.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32 -DSTM32F302R8Tx -DSTM32F3 -DNUCLEO_F302R8 -DDEBUG '-DUSE_STDPERIPH_DRIVER=1' -c -I"C:/Users/Niels/Desktop/Personalshit/Personalshit/SPL/inc" -I"C:/Users/Niels/Desktop/Personalshit/Personalshit/Inc" -I"C:/Users/Niels/Desktop/Personalshit/Personalshit/cmsis" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"SPL/src/stm32f30x_syscfg.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
SPL/src/stm32f30x_tim.o: ../SPL/src/stm32f30x_tim.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32 -DSTM32F302R8Tx -DSTM32F3 -DNUCLEO_F302R8 -DDEBUG '-DUSE_STDPERIPH_DRIVER=1' -c -I"C:/Users/Niels/Desktop/Personalshit/Personalshit/SPL/inc" -I"C:/Users/Niels/Desktop/Personalshit/Personalshit/Inc" -I"C:/Users/Niels/Desktop/Personalshit/Personalshit/cmsis" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"SPL/src/stm32f30x_tim.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
SPL/src/stm32f30x_usart.o: ../SPL/src/stm32f30x_usart.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32 -DSTM32F302R8Tx -DSTM32F3 -DNUCLEO_F302R8 -DDEBUG '-DUSE_STDPERIPH_DRIVER=1' -c -I"C:/Users/Niels/Desktop/Personalshit/Personalshit/SPL/inc" -I"C:/Users/Niels/Desktop/Personalshit/Personalshit/Inc" -I"C:/Users/Niels/Desktop/Personalshit/Personalshit/cmsis" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"SPL/src/stm32f30x_usart.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
SPL/src/stm32f30x_wwdg.o: ../SPL/src/stm32f30x_wwdg.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32 -DSTM32F302R8Tx -DSTM32F3 -DNUCLEO_F302R8 -DDEBUG '-DUSE_STDPERIPH_DRIVER=1' -c -I"C:/Users/Niels/Desktop/Personalshit/Personalshit/SPL/inc" -I"C:/Users/Niels/Desktop/Personalshit/Personalshit/Inc" -I"C:/Users/Niels/Desktop/Personalshit/Personalshit/cmsis" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"SPL/src/stm32f30x_wwdg.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

