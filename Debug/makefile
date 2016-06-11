################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include src/uARM/subdir.mk
-include src/shell/subdir.mk
-include src/platform/xmc4000/lib/subdir.mk
-include src/platform/xmc4000/subdir.mk
-include src/platform/subdir.mk
-include src/newlib/subdir.mk
-include src/iv/subdir.mk
-include src/subdir.mk
-include Startup/subdir.mk
-include Libraries/XMCLib/src/subdir.mk
-include Libraries/Newlib/subdir.mk
-include Dave/Generated/UART/subdir.mk
-include Dave/Generated/SPI_MASTER/subdir.mk
-include Dave/Generated/SDMMC_BLOCK/subdir.mk
-include Dave/Generated/RTC/subdir.mk
-include Dave/Generated/FATFS/ff_Src/subdir.mk
-include Dave/Generated/FATFS/subdir.mk
-include Dave/Generated/CPU_CTRL_XMC4/subdir.mk
-include Dave/Generated/CLOCK_XMC4/subdir.mk
-include Dave/Generated/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
SECONDARY_FLASH += \
uarm_hempl_xmc.hex \

SECONDARY_LIST += \
uarm_hempl_xmc.lst \

SECONDARY_SIZE += \
uarm_hempl_xmc.siz \


LIST_FILES = $(addsuffix .o.lst, $(basename $(OBJS))) 
MAP_FILE = uarm_hempl_xmc.map

# All Target
all: uarm_hempl_xmc.elf secondary-outputs

# Tool invocations
uarm_hempl_xmc.elf: $(OBJS) ../linker_script.ld $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: ARM-GCC C Linker'
	$(file >objects.rsp,$(OBJS))
	"C:\DAVE-4.2.2\eclipse\ARM-GCC-49/bin/arm-none-eabi-gcc" -T"../linker_script.ld" -nostartfiles -nostdlib -specs=nano.specs -specs=nosys.specs -u _printf_float -u _scanf_float -Wl,-Map,$(MAP_FILE) -Wl,-static -Wl,--gc-sections -Wl,--allow-multiple-definition -mfloat-abi=soft -mcpu=cortex-m4 -mthumb -g -gdwarf-2 -o "uarm_hempl_xmc.elf" "@objects.rsp" $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo.
uarm_hempl_xmc.hex: uarm_hempl_xmc.elf
	@echo 'Invoking: ARM-GCC Create Flash Image'
	"C:\DAVE-4.2.2\eclipse\ARM-GCC-49/bin/arm-none-eabi-objcopy" -O ihex "uarm_hempl_xmc.elf"  "uarm_hempl_xmc.hex"
	@echo 'Finished building: $@'
	@echo.
uarm_hempl_xmc.lst: uarm_hempl_xmc.elf
	@echo 'Invoking: ARM-GCC Create Listing'
	"C:\DAVE-4.2.2\eclipse\ARM-GCC-49/bin/arm-none-eabi-objdump" -h -S "uarm_hempl_xmc.elf" > "uarm_hempl_xmc.lst"
	@echo 'Finished building: $@'
	@echo.
uarm_hempl_xmc.siz: uarm_hempl_xmc.elf
	@echo 'Invoking: ARM-GCC Print Size'
	"C:\DAVE-4.2.2\eclipse\ARM-GCC-49/bin/arm-none-eabi-size"  --format=berkeley "uarm_hempl_xmc.elf"
	@echo 'Finished building: $@'
	@echo.
# Other Targets
clean:
	-$(RM) $(SECONDARY_FLASH)$(SECONDARY_LIST)$(SECONDARY_SIZE)$(ARM_GCC_FOR_XMC_LINKER_OUTPUT_TYPE_OUTPUTS)$(S_DEPS)$(S_UPPER_DEPS)$(C_DEPS)
	-$(RM) src/uARM/CPU.o src/uARM/MMU.o src/uARM/RAM.o src/uARM/SoC.o src/uARM/callout_RAM.o src/uARM/cp14.o src/uARM/cp15.o src/uARM/dcache.o src/uARM/icache.o src/uARM/main_pc.o src/uARM/math64.o src/uARM/mem.o src/uARM/pxa255_DMA.o src/uARM/pxa255_DSP.o src/uARM/pxa255_GPIO.o src/uARM/pxa255_IC.o src/uARM/pxa255_LCD.o src/uARM/pxa255_PwrClk.o src/uARM/pxa255_RTC.o src/uARM/pxa255_TIMR.o src/uARM/pxa255_UART.o src/uARM/rt.o src/common.o src/common_fs.o src/common_tmr.o src/common_uart.o src/dlmalloc.o src/ebu.o src/elua_int.o src/linenoise.o src/mmcfs.o src/salloc.o src/term.o src/shell/shell.o src/shell/shell_adv_cp_mv.o src/shell/shell_adv_rm.o src/shell/shell_cat.o src/shell/shell_help.o src/shell/shell_iv.o src/shell/shell_ls.o src/shell/shell_mkdir.o src/shell/shell_uarm.o src/shell/shell_ver.o src/platform/xmc4000/platform.o src/platform/xmc4000/lib/CCU8PWMLIB.o src/platform/xmc4000/lib/DAVE3.o src/platform/xmc4000/lib/MULTIPLEXER.o src/platform/xmc4000/lib/RESET001.o src/platform/xmc4000/lib/UART001.o src/platform/xmc4000/lib/UART001_Conf.o src/platform/arm_cortex_interrupts.o src/platform/arm_utils.o src/platform/cortex_utils.o src/newlib/devman.o src/newlib/genstd.o src/newlib/stdtcp.o src/newlib/stubs.o src/iv/iv.o main.o Startup/startup_XMC4500.o Startup/system_XMC4500.o Libraries/XMCLib/src/xmc4_eru.o Libraries/XMCLib/src/xmc4_flash.o Libraries/XMCLib/src/xmc4_gpio.o Libraries/XMCLib/src/xmc4_rtc.o Libraries/XMCLib/src/xmc4_scu.o Libraries/XMCLib/src/xmc_can.o Libraries/XMCLib/src/xmc_ccu4.o Libraries/XMCLib/src/xmc_ccu8.o Libraries/XMCLib/src/xmc_common.o Libraries/XMCLib/src/xmc_dac.o Libraries/XMCLib/src/xmc_dma.o Libraries/XMCLib/src/xmc_dsd.o Libraries/XMCLib/src/xmc_ebu.o Libraries/XMCLib/src/xmc_ecat.o Libraries/XMCLib/src/xmc_eru.o Libraries/XMCLib/src/xmc_eth_mac.o Libraries/XMCLib/src/xmc_fce.o Libraries/XMCLib/src/xmc_gpio.o Libraries/XMCLib/src/xmc_hrpwm.o Libraries/XMCLib/src/xmc_i2c.o 
	-$(RM) Libraries/XMCLib/src/xmc_i2s.o Libraries/XMCLib/src/xmc_ledts.o Libraries/XMCLib/src/xmc_posif.o Libraries/XMCLib/src/xmc_rtc.o Libraries/XMCLib/src/xmc_sdmmc.o Libraries/XMCLib/src/xmc_spi.o Libraries/XMCLib/src/xmc_uart.o Libraries/XMCLib/src/xmc_usbd.o Libraries/XMCLib/src/xmc_usic.o Libraries/XMCLib/src/xmc_vadc.o Libraries/XMCLib/src/xmc_wdt.o Libraries/Newlib/syscalls.o Dave/Generated/UART/uart.o Dave/Generated/UART/uart_conf.o Dave/Generated/SPI_MASTER/spi_master.o Dave/Generated/SPI_MASTER/spi_master_conf.o Dave/Generated/SDMMC_BLOCK/sdmmc_block.o Dave/Generated/SDMMC_BLOCK/sdmmc_block_conf.o Dave/Generated/SDMMC_BLOCK/sdmmc_block_private_spi.o Dave/Generated/RTC/rtc.o Dave/Generated/RTC/rtc_conf.o Dave/Generated/FATFS/fatfs.o Dave/Generated/FATFS/fatfs_conf.o Dave/Generated/FATFS/sltha.o Dave/Generated/FATFS/ff_Src/ff.o Dave/Generated/FATFS/ff_Src/syscall.o Dave/Generated/DAVE.o Dave/Generated/CPU_CTRL_XMC4/cpu_ctrl_xmc4.o Dave/Generated/CPU_CTRL_XMC4/cpu_ctrl_xmc4_conf.o Dave/Generated/CLOCK_XMC4/clock_xmc4.o Dave/Generated/CLOCK_XMC4/clock_xmc4_conf.o  uarm_hempl_xmc.elf $(LIST_FILES) $(MAP_FILE) objects.rsp
	-@echo.
secondary-outputs: $(SECONDARY_FLASH) $(SECONDARY_LIST) $(SECONDARY_SIZE)

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
