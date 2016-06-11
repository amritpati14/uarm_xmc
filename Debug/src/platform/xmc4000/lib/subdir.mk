################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/platform/xmc4000/lib/CCU8PWMLIB.c \
../src/platform/xmc4000/lib/DAVE3.c \
../src/platform/xmc4000/lib/MULTIPLEXER.c \
../src/platform/xmc4000/lib/RESET001.c \
../src/platform/xmc4000/lib/UART001.c \
../src/platform/xmc4000/lib/UART001_Conf.c 

O_SRCS += \
../src/platform/xmc4000/lib/CLK001.o \
../src/platform/xmc4000/lib/DAVE3.o \
../src/platform/xmc4000/lib/MULTIPLEXER.o \
../src/platform/xmc4000/lib/RESET001.o \
../src/platform/xmc4000/lib/UART001.o \
../src/platform/xmc4000/lib/UART001_Conf.o \
../src/platform/xmc4000/lib/system_XMC4500.o 

OBJS += \
./src/platform/xmc4000/lib/CCU8PWMLIB.o \
./src/platform/xmc4000/lib/DAVE3.o \
./src/platform/xmc4000/lib/MULTIPLEXER.o \
./src/platform/xmc4000/lib/RESET001.o \
./src/platform/xmc4000/lib/UART001.o \
./src/platform/xmc4000/lib/UART001_Conf.o 

C_DEPS += \
./src/platform/xmc4000/lib/CCU8PWMLIB.d \
./src/platform/xmc4000/lib/DAVE3.d \
./src/platform/xmc4000/lib/MULTIPLEXER.d \
./src/platform/xmc4000/lib/RESET001.d \
./src/platform/xmc4000/lib/UART001.d \
./src/platform/xmc4000/lib/UART001_Conf.d 


# Each subdirectory must supply rules for building sources it contributes
src/platform/xmc4000/lib/%.o: ../src/platform/xmc4000/lib/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM-GCC C Compiler'
	"C:\DAVE-4.2.2\eclipse\ARM-GCC-49/bin/arm-none-eabi-gcc" -DDAVE_CE -DXMC4500_F144x1024 -DALCOR_PLATFORM=XMC4000 -DALCOR_BOARD=HEXAGON -DALCOR_CPU=XMC4500F144K1024 -DALCOR_CPU_XMC4500F144K1024 -DALCOR_BOARD_HEXAGON -DALCOR_PLATFORM_XMC4000 -DFORXMC4500F144K1024 -DFORHEXAGON -DCORTEX_M4 -DPICOLISP_OPTIMIZE_MEMORY=0 -Dgcc -DUC_ID=4502 -I"C:\Users\GopalanR\Desktop\sadu\code_cleanup\hempl_picolisp_fat_spi\Libraries\XMCLib\inc" -I"C:\Users\GopalanR\Desktop\sadu\code_cleanup\hempl_picolisp_fat_spi/Libraries/CMSIS/Include" -I"C:\Users\GopalanR\Desktop\sadu\code_cleanup\hempl_picolisp_fat_spi/Libraries/CMSIS/Infineon/XMC4500_series/Include" -I"C:\Users\GopalanR\Desktop\sadu\code_cleanup\hempl_picolisp_fat_spi" -I"C:\Users\GopalanR\Desktop\sadu\code_cleanup\hempl_picolisp_fat_spi\Dave\Generated" -I"C:\Users\GopalanR\Desktop\sadu\code_cleanup\hempl_picolisp_fat_spi\Libraries" -I"C:\Users\GopalanR\Desktop\sadu\code_cleanup\hempl_picolisp_fat_spi\inc" -I"C:\Users\GopalanR\Desktop\sadu\code_cleanup\hempl_picolisp_fat_spi\src\platform\xmc4000" -I"C:\Users\GopalanR\Desktop\sadu\code_cleanup\hempl_picolisp_fat_spi\inc\newlib" -I"C:\Users\GopalanR\Desktop\sadu\code_cleanup\hempl_picolisp_fat_spi\src\iv" -I"C:\Users\GopalanR\Desktop\sadu\code_cleanup\hempl_picolisp_fat_spi\src\platform\xmc4000\lib" -I"C:\Users\GopalanR\Desktop\sadu\code_cleanup\hempl_picolisp_fat_spi\Libraries\XMCLib\inc" -I"C:\Users\GopalanR\Desktop\sadu\code_cleanup\hempl_picolisp_fat_spi\Dave\Generated\FATFS\ff_Src" -I"C:\Users\GopalanR\Desktop\sadu\code_cleanup\hempl_picolisp_fat_spi\Dave\Generated\CLOCK_XMC4" -I"C:\Users\GopalanR\Desktop\sadu\code_cleanup\hempl_picolisp_fat_spi\Dave\Generated\FATFS" -I"C:\Users\GopalanR\Desktop\sadu\code_cleanup\hempl_picolisp_fat_spi\Dave\Generated\UART" -O0 -ffunction-sections -fdata-sections -fomit-frame-pointer -fno-strict-aliasing -Wall -std=gnu99 -mfloat-abi=soft -Wa,-adhlns="$@.lst" -pipe -c -fmessage-length=0 -mlittle-endian -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d) $@" -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mthumb -g -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo.

