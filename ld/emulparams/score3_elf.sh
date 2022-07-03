MACHINE=
SCRIPT_NAME=elf
TEMPLATE_NAME=elf
EXTRA_EM_FILE=scoreelf
OUTPUT_FORMAT="elf32-bigscore"
BIG_OUTPUT_FORMAT="elf32-bigscore"
LITTLE_OUTPUT_FORMAT="elf32-littlescore"
NO_RELA_RELOCS=yes
GROUP="-lm -lc -lglsim -lgcc -lstdc++"

TEXT_START_ADDR=0x00000000
MAXPAGESIZE=256
NONPAGED_TEXT_START_ADDR=0x0400000
SHLIB_TEXT_START_ADDR=0x5ffe0000
OTHER_GOT_SYMBOLS="${CREATE_SHLIB+PROVIDE (}_gp = ALIGN(16) + 0x3ff0${CREATE_SHLIB+)};"

OTHER_BSS_START_SYMBOLS="${CREATE_SHLIB+PROVIDE (}_bss_start__ = ALIGN(4)${CREATE_SHLIB+)};"
OTHER_BSS_END_SYMBOLS="${CREATE_SHLIB+PROVIDE (}_bss_end__ = .${CREATE_SHLIB+)}; ${CREATE_SHLIB+PROVIDE (}__bss_end__ = .${CREATE_SHLIB+)}; ${CREATE_SHLIB+PROVIDE (}__end__ = .${CREATE_SHLIB+)};"
DATA_START_SYMBOLS="${CREATE_SHLIB+PROVIDE (}_fdata = .${CREATE_SHLIB+)};"
SDATA_START_SYMBOLS="${CREATE_SHLIB+PROVIDE (}_sdata_begin = .${CREATE_SHLIB+)};"
OTHER_BSS_SYMBOLS="${CREATE_SHLIB+PROVIDE (}_bss_start = ALIGN(4)${CREATE_SHLIB+)};"
# This sets the stack to the top of the simulator memory (2^19 bytes).
STACK_ADDR=0x8000000

ARCH=score3
MACHINE=
ENTRY=_start
EMBEDDED=yes
GENERATE_SHLIB_SCRIPT=yes
