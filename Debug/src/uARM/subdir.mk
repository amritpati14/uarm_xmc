################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/uARM/CPU.c \
../src/uARM/MMU.c \
../src/uARM/RAM.c \
../src/uARM/SoC.c \
../src/uARM/callout_RAM.c \
../src/uARM/cp14.c \
../src/uARM/cp15.c \
../src/uARM/dcache.c \
../src/uARM/icache.c \
../src/uARM/main_pc.c \
../src/uARM/math64.c \
../src/uARM/mem.c \
../src/uARM/pxa255_DMA.c \
../src/uARM/pxa255_DSP.c \
../src/uARM/pxa255_GPIO.c \
../src/uARM/pxa255_IC.c \
../src/uARM/pxa255_LCD.c \
../src/uARM/pxa255_PwrClk.c \
../src/uARM/pxa255_RTC.c \
../src/uARM/pxa255_TIMR.c \
../src/uARM/pxa255_UART.c \
../src/uARM/rt.c 

OBJS += \
./src/uARM/CPU.o \
./src/uARM/MMU.o \
./src/uARM/RAM.o \
./src/uARM/SoC.o \
./src/uARM/callout_RAM.o \
./src/uARM/cp14.o \
./src/uARM/cp15.o \
./src/uARM/dcache.o \
./src/uARM/icache.o \
./src/uARM/main_pc.o \
./src/uARM/math64.o \
./src/uARM/mem.o \
./src/uARM/pxa255_DMA.o \
./src/uARM/pxa255_DSP.o \
./src/uARM/pxa255_GPIO.o \
./src/uARM/pxa255_IC.o \
./src/uARM/pxa255_LCD.o \
./src/uARM/pxa255_PwrClk.o \
./src/uARM/pxa255_RTC.o \
./src/uARM/pxa255_TIMR.o \
./src/uARM/pxa255_UART.o \
./src/uARM/rt.o 

C_DEPS += \
./src/uARM/CPU.d \
./src/uARM/MMU.d \
./src/uARM/RAM.d \
./src/uARM/SoC.d \
./src/uARM/callout_RAM.d \
./src/uARM/cp14.d \
./src/uARM/cp15.d \
./src/uARM/dcache.d \
./src/uARM/icache.d \
./src/uARM/main_pc.d \
./src/uARM/math64.d \
./src/uARM/mem.d \
./src/uARM/pxa255_DMA.d \
./src/uARM/pxa255_DSP.d \
./src/uARM/pxa255_GPIO.d \
./src/uARM/pxa255_IC.d \
./src/uARM/pxa255_LCD.d \
./src/uARM/pxa255_PwrClk.d \
./src/uARM/pxa255_RTC.d \
./src/uARM/pxa255_TIMR.d \
./src/uARM/pxa255_UART.d \
./src/uARM/rt.d 


# Each subdirectory must supply rules for building sources it contributes
src/uARM/%.o: ../src/uARM/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM-GCC C Compiler'
	"C:\DAVE-4.2.2\eclipse\ARM-GCC-49/bin/arm-none-eabi-gcc" -DDAVE_CE -DXMC4500_F144x1024 -DALCOR_PLATFORM=XMC4000 -DALCOR_BOARD=HEXAGON -DALCOR_CPU=XMC4500F144K1024 -DALCOR_CPU_XMC4500F144K1024 -DALCOR_BOARD_HEXAGON -DALCOR_PLATFORM_XMC4000 -DFORXMC4500F144K1024 -DFORHEXAGON -DCORTEX_M4 -DPICOLISP_OPTIMIZE_MEMORY=0 -Dgcc -DUC_ID=4502 -I"C:\Users\GopalanR\Desktop\sadu\code_cleanup\hempl_picolisp_fat_spi\Libraries\XMCLib\inc" -I"C:\Users\GopalanR\Desktop\sadu\code_cleanup\hempl_picolisp_fat_spi/Libraries/CMSIS/Include" -I"C:\Users\GopalanR\Desktop\sadu\code_cleanup\hempl_picolisp_fat_spi/Libraries/CMSIS/Infineon/XMC4500_series/Include" -I"C:\Users\GopalanR\Desktop\sadu\code_cleanup\hempl_picolisp_fat_spi" -I"C:\Users\GopalanR\Desktop\sadu\code_cleanup\hempl_picolisp_fat_spi\Dave\Generated" -I"C:\Users\GopalanR\Desktop\sadu\code_cleanup\hempl_picolisp_fat_spi\Libraries" -I"C:\Users\GopalanR\Desktop\sadu\code_cleanup\hempl_picolisp_fat_spi\inc" -I"C:\Users\GopalanR\Desktop\sadu\code_cleanup\hempl_picolisp_fat_spi\src\platform\xmc4000" -I"C:\Users\GopalanR\Desktop\sadu\code_cleanup\hempl_picolisp_fat_spi\inc\newlib" -I"C:\Users\GopalanR\Desktop\sadu\code_cleanup\hempl_picolisp_fat_spi\src\iv" -I"C:\Users\GopalanR\Desktop\sadu\code_cleanup\hempl_picolisp_fat_spi\src\platform\xmc4000\lib" -I"C:\Users\GopalanR\Desktop\sadu\code_cleanup\hempl_picolisp_fat_spi\Libraries\XMCLib\inc" -I"C:\Users\GopalanR\Desktop\sadu\code_cleanup\hempl_picolisp_fat_spi\Dave\Generated\FATFS\ff_Src" -I"C:\Users\GopalanR\Desktop\sadu\code_cleanup\hempl_picolisp_fat_spi\Dave\Generated\CLOCK_XMC4" -I"C:\Users\GopalanR\Desktop\sadu\code_cleanup\hempl_picolisp_fat_spi\Dave\Generated\FATFS" -I"C:\Users\GopalanR\Desktop\sadu\code_cleanup\hempl_picolisp_fat_spi\Dave\Generated\UART" -O0 -ffunction-sections -fdata-sections -fomit-frame-pointer -fno-strict-aliasing -Wall -std=gnu99 -mfloat-abi=soft -Wa,-adhlns="$@.lst" -pipe -c -fmessage-length=0 -mlittle-endian -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d) $@" -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mthumb -g -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo.

