
OUTPUT_FORMAT("elf32-littlearm")
OUTPUT_ARCH(arm)
ENTRY(Reset_Handler)

MEMORY
{
	FLASH_1_cached(RX) : ORIGIN = 0x08000000, LENGTH = 0x100000
	FLASH_1_uncached(RX) : ORIGIN = 0x0C000000, LENGTH = 0x100000
	PSRAM_1(!RX) : ORIGIN = 0x10000000, LENGTH = 0x10000
	DSRAM_1_system(!RX) : ORIGIN = 0x20000000, LENGTH = 0x10000
	DSRAM_2_comm(!RX) : ORIGIN = 0x30000000, LENGTH = 0x8000
}

stack_size = 4096;

SECTIONS
{
    /* TEXT section */

    .text :
    {
        sText = .;
        KEEP(*(.reset));
        *(.text .text.* .gnu.linkonce.t.*);

        /* C++ Support */
        KEEP(*(.init))
        KEEP(*(.fini))

        /* .ctors */
        *crtbegin.o(.ctors)
        *crtbegin?.o(.ctors)
        *(EXCLUDE_FILE(*crtend?.o *crtend.o) .ctors)
        *(SORT(.ctors.*))
        *(.ctors)

        /* .dtors */
        *crtbegin.o(.dtors)
        *crtbegin?.o(.dtors)
        *(EXCLUDE_FILE(*crtend?.o *crtend.o) .dtors)
        *(SORT(.dtors.*))
        *(.dtors)

        *(.rodata .rodata.*)
        *(.gnu.linkonce.r*)
        
        . = ALIGN(4);        
    } > FLASH_1_cached AT > FLASH_1_uncached

    /* Exception handling, exidx needs a dedicated section */
    .ARM.extab :
    {
        *(.ARM.extab* .gnu.linkonce.armextab.*)
    } > FLASH_1_cached AT > FLASH_1_uncached

    __exidx_start = .;
    .ARM.exidx :
    {
        *(.ARM.exidx* .gnu.linkonce.armexidx.*)
    } > FLASH_1_cached AT > FLASH_1_uncached
    __exidx_end = .;

    /* DSRAM layout (Lowest to highest)*/

    Stack (NOLOAD) : 
    {
        __stack_start = .;
        . = . + stack_size;
        __stack_end = .;
        __initial_sp = .;
    } > PSRAM_1
    
    /* functions with __attribute__((section(".ram_code"))) */
    .ram_code :
    {
        . = ALIGN(4);        
        __ram_code_start = .;
        *(.ram_code)    
        __ram_code_end = .;
    } > PSRAM_1 AT > FLASH_1_uncached
    __ram_code_load = LOADADDR (.ram_code);
    __ram_code_size = __ram_code_end - __ram_code_start;

    PSRAM_DATA : 
    {
        . = ALIGN(4);
        __data3_start = .;
        *(PSRAM_DATA)   
        __data3_end = .;
    } > PSRAM_1 AT > FLASH_1_uncached
    __data3_load = LOADADDR (PSRAM_DATA);
    __data3_size = __data3_end - __data3_start;

    PSRAM_BSS (NOLOAD) :
    {
        . = ALIGN(4);
        __bss3_start = .;
        *(PSRAM_BSS)    
        __bss3_end = .;
        . = ALIGN(8);        
        Heap_Bank3_Start = .;
    } > PSRAM_1
    __bss3_size = __bss3_end - __bss3_start;
    
    /* Standard DATA and user defined DATA/BSS/CONST sections */
    .data : 
    {
        . = ALIGN(4);        
        __data_start = .;
        * (.data);
        * (.data*);
        *(*.data);
        *(.gnu.linkonce.d*)
      
        . = ALIGN(4);
        /* preinit data */
        PROVIDE_HIDDEN (__preinit_array_start = .);
        KEEP(*(.preinit_array))
        PROVIDE_HIDDEN (__preinit_array_end = .);

        . = ALIGN(4);
        /* init data */
        PROVIDE_HIDDEN (__init_array_start = .);
        KEEP(*(SORT(.init_array.*)))
        KEEP(*(.init_array))
        PROVIDE_HIDDEN (__init_array_end = .);


        . = ALIGN(4);
        /* finit data */
        PROVIDE_HIDDEN (__fini_array_start = .);
        KEEP(*(SORT(.fini_array.*)))
        KEEP(*(.fini_array))
        PROVIDE_HIDDEN (__fini_array_end = .);

        __data_end = .;
    } > DSRAM_1_system AT > FLASH_1_uncached
    __data_load = LOADADDR (.data);
    __data_size = __data_end - __data_start;

    /* BSS section */
    .bss (NOLOAD) : 
    {
        . = ALIGN(4);        
        __bss_start = .;
        * (.bss);
        * (.bss*);
        * (COMMON);
        *(.gnu.linkonce.b*)
        __bss_end = .;
        . = ALIGN(8);
        Heap_Bank1_Start = .;
    } > DSRAM_1_system
    __bss_size = __bss_end - __bss_start;
    
    /* .no_init section */
    .no_init 0x2000FFC0 (NOLOAD) : 
    {
        Heap_Bank1_End = .;
        * (.no_init);
    } > DSRAM_1_system

    DSRAM2_DATA :
    {
        . = ALIGN(4);
        __data2_start = .;
        *(DSRAM2_DATA)      
        __data2_end = .;
    } > DSRAM_2_comm AT > FLASH_1_uncached
    __data2_load = LOADADDR(DSRAM2_DATA);
    __data2_size = __data2_end - __data2_start;

    DSRAM2_BSS (NOLOAD) :
    {
        . = ALIGN(4);
        __bss2_start = .;
        *(ETH_RAM)
        *(USB_RAM)
        *(DSRAM2_BSS)   
        __bss2_end = .;
        . = ALIGN(8);
        Heap_Bank2_Start = .;
    } > DSRAM_2_comm
    __bss2_size = __bss2_end - __bss2_start;
    
     end = .;

    Heap_Bank1_Size = Heap_Bank1_End - Heap_Bank1_Start;
    Heap_Bank2_Size = LENGTH(DSRAM_2_comm) - (Heap_Bank2_Start - ORIGIN(DSRAM_2_comm));
    Heap_Bank3_Size = LENGTH(PSRAM_1) - (Heap_Bank3_Start - ORIGIN(PSRAM_1));

    /DISCARD/ :
    {
        *(.comment)
    }

    .stab       0 (NOLOAD) : { *(.stab) }
    .stabstr    0 (NOLOAD) : { *(.stabstr) }

    /* DWARF 1 */
    .debug              0 : { *(.debug) }
    .line               0 : { *(.line) }

    /* GNU DWARF 1 extensions */
    .debug_srcinfo      0 : { *(.debug_srcinfo) }
    .debug_sfnames      0 : { *(.debug_sfnames) }

    /* DWARF 1.1 and DWARF 2 */
    .debug_aranges      0 : { *(.debug_aranges) }
    .debug_pubnames     0 : { *(.debug_pubnames) }
    .debug_pubtypes     0 : { *(.debug_pubtypes) }

    /* DWARF 2 */
    .debug_info         0 : { *(.debug_info .gnu.linkonce.wi.*) }
    .debug_abbrev       0 : { *(.debug_abbrev) }
    .debug_line         0 : { *(.debug_line) }
    .debug_frame        0 : { *(.debug_frame) }
    .debug_str          0 : { *(.debug_str) }
    .debug_loc          0 : { *(.debug_loc) }
    .debug_macinfo      0 : { *(.debug_macinfo) }

    /* DWARF 2.1 */
    .debug_ranges       0 : { *(.debug_ranges) }

    /* SGI/MIPS DWARF 2 extensions */
    .debug_weaknames    0 : { *(.debug_weaknames) }
    .debug_funcnames    0 : { *(.debug_funcnames) }
    .debug_typenames    0 : { *(.debug_typenames) }
    .debug_varnames     0 : { *(.debug_varnames) }

    /* Build attributes */
    .build_attributes   0 : { *(.ARM.attributes) }
}
