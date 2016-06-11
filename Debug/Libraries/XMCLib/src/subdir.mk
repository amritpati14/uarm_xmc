################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Libraries/XMCLib/src/xmc4_eru.c \
../Libraries/XMCLib/src/xmc4_flash.c \
../Libraries/XMCLib/src/xmc4_gpio.c \
../Libraries/XMCLib/src/xmc4_rtc.c \
../Libraries/XMCLib/src/xmc4_scu.c \
../Libraries/XMCLib/src/xmc_can.c \
../Libraries/XMCLib/src/xmc_ccu4.c \
../Libraries/XMCLib/src/xmc_ccu8.c \
../Libraries/XMCLib/src/xmc_common.c \
../Libraries/XMCLib/src/xmc_dac.c \
../Libraries/XMCLib/src/xmc_dma.c \
../Libraries/XMCLib/src/xmc_dsd.c \
../Libraries/XMCLib/src/xmc_ebu.c \
../Libraries/XMCLib/src/xmc_ecat.c \
../Libraries/XMCLib/src/xmc_eru.c \
../Libraries/XMCLib/src/xmc_eth_mac.c \
../Libraries/XMCLib/src/xmc_fce.c \
../Libraries/XMCLib/src/xmc_gpio.c \
../Libraries/XMCLib/src/xmc_hrpwm.c \
../Libraries/XMCLib/src/xmc_i2c.c \
../Libraries/XMCLib/src/xmc_i2s.c \
../Libraries/XMCLib/src/xmc_ledts.c \
../Libraries/XMCLib/src/xmc_posif.c \
../Libraries/XMCLib/src/xmc_rtc.c \
../Libraries/XMCLib/src/xmc_sdmmc.c \
../Libraries/XMCLib/src/xmc_spi.c \
../Libraries/XMCLib/src/xmc_uart.c \
../Libraries/XMCLib/src/xmc_usbd.c \
../Libraries/XMCLib/src/xmc_usic.c \
../Libraries/XMCLib/src/xmc_vadc.c \
../Libraries/XMCLib/src/xmc_wdt.c 

OBJS += \
./Libraries/XMCLib/src/xmc4_eru.o \
./Libraries/XMCLib/src/xmc4_flash.o \
./Libraries/XMCLib/src/xmc4_gpio.o \
./Libraries/XMCLib/src/xmc4_rtc.o \
./Libraries/XMCLib/src/xmc4_scu.o \
./Libraries/XMCLib/src/xmc_can.o \
./Libraries/XMCLib/src/xmc_ccu4.o \
./Libraries/XMCLib/src/xmc_ccu8.o \
./Libraries/XMCLib/src/xmc_common.o \
./Libraries/XMCLib/src/xmc_dac.o \
./Libraries/XMCLib/src/xmc_dma.o \
./Libraries/XMCLib/src/xmc_dsd.o \
./Libraries/XMCLib/src/xmc_ebu.o \
./Libraries/XMCLib/src/xmc_ecat.o \
./Libraries/XMCLib/src/xmc_eru.o \
./Libraries/XMCLib/src/xmc_eth_mac.o \
./Libraries/XMCLib/src/xmc_fce.o \
./Libraries/XMCLib/src/xmc_gpio.o \
./Libraries/XMCLib/src/xmc_hrpwm.o \
./Libraries/XMCLib/src/xmc_i2c.o \
./Libraries/XMCLib/src/xmc_i2s.o \
./Libraries/XMCLib/src/xmc_ledts.o \
./Libraries/XMCLib/src/xmc_posif.o \
./Libraries/XMCLib/src/xmc_rtc.o \
./Libraries/XMCLib/src/xmc_sdmmc.o \
./Libraries/XMCLib/src/xmc_spi.o \
./Libraries/XMCLib/src/xmc_uart.o \
./Libraries/XMCLib/src/xmc_usbd.o \
./Libraries/XMCLib/src/xmc_usic.o \
./Libraries/XMCLib/src/xmc_vadc.o \
./Libraries/XMCLib/src/xmc_wdt.o 

C_DEPS += \
./Libraries/XMCLib/src/xmc4_eru.d \
./Libraries/XMCLib/src/xmc4_flash.d \
./Libraries/XMCLib/src/xmc4_gpio.d \
./Libraries/XMCLib/src/xmc4_rtc.d \
./Libraries/XMCLib/src/xmc4_scu.d \
./Libraries/XMCLib/src/xmc_can.d \
./Libraries/XMCLib/src/xmc_ccu4.d \
./Libraries/XMCLib/src/xmc_ccu8.d \
./Libraries/XMCLib/src/xmc_common.d \
./Libraries/XMCLib/src/xmc_dac.d \
./Libraries/XMCLib/src/xmc_dma.d \
./Libraries/XMCLib/src/xmc_dsd.d \
./Libraries/XMCLib/src/xmc_ebu.d \
./Libraries/XMCLib/src/xmc_ecat.d \
./Libraries/XMCLib/src/xmc_eru.d \
./Libraries/XMCLib/src/xmc_eth_mac.d \
./Libraries/XMCLib/src/xmc_fce.d \
./Libraries/XMCLib/src/xmc_gpio.d \
./Libraries/XMCLib/src/xmc_hrpwm.d \
./Libraries/XMCLib/src/xmc_i2c.d \
./Libraries/XMCLib/src/xmc_i2s.d \
./Libraries/XMCLib/src/xmc_ledts.d \
./Libraries/XMCLib/src/xmc_posif.d \
./Libraries/XMCLib/src/xmc_rtc.d \
./Libraries/XMCLib/src/xmc_sdmmc.d \
./Libraries/XMCLib/src/xmc_spi.d \
./Libraries/XMCLib/src/xmc_uart.d \
./Libraries/XMCLib/src/xmc_usbd.d \
./Libraries/XMCLib/src/xmc_usic.d \
./Libraries/XMCLib/src/xmc_vadc.d \
./Libraries/XMCLib/src/xmc_wdt.d 


# Each subdirectory must supply rules for building sources it contributes
Libraries/XMCLib/src/%.o: ../Libraries/XMCLib/src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM-GCC C Compiler'
	"C:\DAVE-4.2.2\eclipse\ARM-GCC-49/bin/arm-none-eabi-gcc" -DDAVE_CE -DXMC4500_F144x1024 -DALCOR_PLATFORM=XMC4000 -DALCOR_BOARD=HEXAGON -DALCOR_CPU=XMC4500F144K1024 -DALCOR_CPU_XMC4500F144K1024 -DALCOR_BOARD_HEXAGON -DALCOR_PLATFORM_XMC4000 -DFORXMC4500F144K1024 -DFORHEXAGON -DCORTEX_M4 -DPICOLISP_OPTIMIZE_MEMORY=0 -Dgcc -DUC_ID=4502 -I"C:\Users\GopalanR\Desktop\sadu\code_cleanup\hempl_picolisp_fat_spi\Libraries\XMCLib\inc" -I"C:\Users\GopalanR\Desktop\sadu\code_cleanup\hempl_picolisp_fat_spi/Libraries/CMSIS/Include" -I"C:\Users\GopalanR\Desktop\sadu\code_cleanup\hempl_picolisp_fat_spi/Libraries/CMSIS/Infineon/XMC4500_series/Include" -I"C:\Users\GopalanR\Desktop\sadu\code_cleanup\hempl_picolisp_fat_spi" -I"C:\Users\GopalanR\Desktop\sadu\code_cleanup\hempl_picolisp_fat_spi\Dave\Generated" -I"C:\Users\GopalanR\Desktop\sadu\code_cleanup\hempl_picolisp_fat_spi\Libraries" -I"C:\Users\GopalanR\Desktop\sadu\code_cleanup\hempl_picolisp_fat_spi\inc" -I"C:\Users\GopalanR\Desktop\sadu\code_cleanup\hempl_picolisp_fat_spi\src\platform\xmc4000" -I"C:\Users\GopalanR\Desktop\sadu\code_cleanup\hempl_picolisp_fat_spi\inc\newlib" -I"C:\Users\GopalanR\Desktop\sadu\code_cleanup\hempl_picolisp_fat_spi\src\iv" -I"C:\Users\GopalanR\Desktop\sadu\code_cleanup\hempl_picolisp_fat_spi\src\platform\xmc4000\lib" -I"C:\Users\GopalanR\Desktop\sadu\code_cleanup\hempl_picolisp_fat_spi\Libraries\XMCLib\inc" -I"C:\Users\GopalanR\Desktop\sadu\code_cleanup\hempl_picolisp_fat_spi\Dave\Generated\FATFS\ff_Src" -I"C:\Users\GopalanR\Desktop\sadu\code_cleanup\hempl_picolisp_fat_spi\Dave\Generated\CLOCK_XMC4" -I"C:\Users\GopalanR\Desktop\sadu\code_cleanup\hempl_picolisp_fat_spi\Dave\Generated\FATFS" -I"C:\Users\GopalanR\Desktop\sadu\code_cleanup\hempl_picolisp_fat_spi\Dave\Generated\UART" -O0 -ffunction-sections -fdata-sections -fomit-frame-pointer -fno-strict-aliasing -Wall -std=gnu99 -mfloat-abi=soft -Wa,-adhlns="$@.lst" -pipe -c -fmessage-length=0 -mlittle-endian -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d) $@" -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mthumb -g -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo.

