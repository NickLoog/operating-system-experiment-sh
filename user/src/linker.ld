OUTPUT_ARCH(riscv)
ENTRY(_start)
BASE_ADDRESS = 0x80400000;

SECTIONS
{
    . = BASE_ADDRESS;
    srodata = .;
    .rodata : {
        *(.rodata .rodata.*)
    }
    stext = .;
    .text : {
        *(.text.entry) /* Important: place _start code first */
        *(.text .text.*)
    }
    sdata = .;
    .data : {
        *(.data .data.*)
    }
    .stack : {
        *(.bss.stack)
    }
    sbss = .;
    .bss : {
        *(.bss .bss.*)
        *(.sbss .sbss.*)
    }
    ebss = .;
    /* End of memory */
    _end = .;
}