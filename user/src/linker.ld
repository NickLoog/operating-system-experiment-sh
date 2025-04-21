OUTPUT_ARCH(riscv)
ENTRY(_start)
BASE_ADDRESS = 0x80400000;

SECTIONS
{
    . = BASE_ADDRESS;
    stext = .;
    .text : {
        *(.text.entry) /* Important: place _start code first */
        *(.text .text.*)
    }
    srodata = .;
    .rodata : {
        *(.rodata .rodata.*)
    }

    /* --- 新增：明确放置 .eh_frame 和 .eh_frame_hdr --- */
    .eh_frame : {
        *(.eh_frame)
    }
    .eh_frame_hdr : {
         *(.eh_frame_hdr)
    }
    /* --- 结束新增 --- */

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