################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/common.c \
../src/common_fs.c \
../src/common_tmr.c \
../src/common_uart.c \
../src/dlmalloc.c \
../src/ebu.c \
../src/elua_int.c \
../src/linenoise.c \
../src/mmcfs.c \
../src/salloc.c \
../src/term.c 

OBJS += \
./src/common.o \
./src/common_fs.o \
./src/common_tmr.o \
./src/common_uart.o \
./src/dlmalloc.o \
./src/ebu.o \
./src/elua_int.o \
./src/linenoise.o \
./src/mmcfs.o \
./src/salloc.o \
./src/term.o 

C_DEPS += \
./src/common.d \
./src/common_fs.d \
./src/common_tmr.d \
./src/common_uart.d \
./src/dlmalloc.d \
./src/ebu.d \
./src/elua_int.d \
./src/linenoise.d \
./src/mmcfs.d \
./src/salloc.d \
./src/term.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM-GCC C Compiler'
	"C:\DAVE-4.2.2\eclipse\ARM-GCC-49/bin/arm-none-eabi-gcc" -DDAVE_CE -DXMC4500_F144x1024 -DALCOR_PLATFORM=XMC4000 -DALCOR_BOARD=HEXAGON -DALCOR_CPU=XMC4500F144K1024 -DALCOR_CPU_XMC4500F144K1024 -DALCOR_BOARD_HEXAGON -DALCOR_PLATFORM_XMC4000 -DFORXMC4500F144K1024 -DFORHEXAGON -DCORTEX_M4 -DPICOLISP_OPTIMIZE_MEMORY=0 -Dgcc -DUC_ID=4502 -I"C:\Users\GopalanR\Desktop\sadu\code_cleanup\hempl_picolisp_fat_spi\Libraries\XMCLib\inc" -I"C:\Users\GopalanR\Desktop\sadu\code_cleanup\hempl_picolisp_fat_spi/Libraries/CMSIS/Include" -I"C:\Users\GopalanR\Desktop\sadu\code_cleanup\hempl_picolisp_fat_spi/Libraries/CMSIS/Infineon/XMC4500_series/Include" -I"C:\Users\GopalanR\Desktop\sadu\code_cleanup\hempl_picolisp_fat_spi" -I"C:\Users\GopalanR\Desktop\sadu\code_cleanup\hempl_picolisp_fat_spi\Dave\Generated" -I"C:\Users\GopalanR\Desktop\sadu\code_cleanup\hempl_picolisp_fat_spi\Libraries" -I"C:\Users\GopalanR\Desktop\sadu\code_cleanup\hempl_picolisp_fat_spi\inc" -I"C:\Users\GopalanR\Desktop\sadu\code_cleanup\hempl_picolisp_fat_spi\src\platform\xmc4000" -I"C:\Users\GopalanR\Desktop\sadu\code_cleanup\hempl_picolisp_fat_spi\inc\newlib" -I"C:\Users\GopalanR\Desktop\sadu\code_cleanup\hempl_picolisp_fat_spi\src\iv" -I"C:\Users\GopalanR\Desktop\sadu\code_cleanup\hempl_picolisp_fat_spi\src\platform\xmc4000\lib" -I"C:\Users\GopalanR\Desktop\sadu\code_cleanup\hempl_picolisp_fat_spi\Libraries\XMCLib\inc" -I"C:\Users\GopalanR\Desktop\sadu\code_cleanup\hempl_picolisp_fat_spi\Dave\Generated\FATFS\ff_Src" -I"C:\Users\GopalanR\Desktop\sadu\code_cleanup\hempl_picolisp_fat_spi\Dave\Generated\CLOCK_XMC4" -I"C:\Users\GopalanR\Desktop\sadu\code_cleanup\hempl_picolisp_fat_spi\Dave\Generated\FATFS" -I"C:\Users\GopalanR\Desktop\sadu\code_cleanup\hempl_picolisp_fat_spi\Dave\Generated\UART" -O0 -ffunction-sections -fdata-sections -fomit-frame-pointer -fno-strict-aliasing -Wall -std=gnu99 -mfloat-abi=soft -Wa,-adhlns="$@.lst" -pipe -c -fmessage-length=0 -mlittle-endian -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d) $@" -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mthumb -g -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo.

