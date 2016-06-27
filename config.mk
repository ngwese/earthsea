#
# Copyright (c) 2009-2010 Atmel Corporation. All rights reserved.
#
# \asf_license_start
#
# \page License
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are met:
#
# 1. Redistributions of source code must retain the above copyright notice,
#    this list of conditions and the following disclaimer.
#
# 2. Redistributions in binary form must reproduce the above copyright notice,
#    this list of conditions and the following disclaimer in the documentation
#    and/or other materials provided with the distribution.
#
# 3. The name of Atmel may not be used to endorse or promote products derived
#    from this software without specific prior written permission.
#
# 4. This software may only be redistributed and used in connection with an
#    Atmel microcontroller product.
#
# THIS SOFTWARE IS PROVIDED BY ATMEL "AS IS" AND ANY EXPRESS OR IMPLIED
# WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
# MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT ARE
# EXPRESSLY AND SPECIFICALLY DISCLAIMED. IN NO EVENT SHALL ATMEL BE LIABLE FOR
# ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
# DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
# OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
# HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
# STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
# ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
# POSSIBILITY OF SUCH DAMAGE.
#
# \asf_license_stop


# project name
THIS = earthsea

# Path to top level ASF directory relative to this project directory.
PRJ_PATH = .

# Target CPU architecture: ap, ucr1, ucr2 or ucr3
ARCH = ucr1

# Target part: none, ap7xxx or uc3xxxxx
# PART = uc3b064
PART = uc3b0256

# Target device flash memory details (used by the avr32program programming
# tool: [cfi|internal]@address
FLASH = internal@0x80000000

# Clock source to use when programming; xtal, extclk or int
PROG_CLOCK = int

# Application target name. Given with suffix .a for library and .elf for a
# standalone application.
TARGET = $(THIS).elf

# List of C source files.
CSRCS = \
       src/main.c                                                      \
       libavr32/src/adc.c                                              \
       libavr32/src/events.c                                           \
       libavr32/src/init_trilogy.c                                     \
       libavr32/src/init_common.c                                      \
       libavr32/src/i2c.c                                              \
       libavr32/src/monome.c                                           \
       libavr32/src/timers.c                                           \
       libavr32/src/notes.c                                            \
       libavr32/src/usb.c                                              \
       libavr32/src/util.c                                             \
       libavr32/src/usb/ftdi/ftdi.c                                    \
       libavr32/src/usb/ftdi/uhi_ftdi.c                                \
       libavr32/src/usb/hid/hid.c                                      \
       libavr32/src/usb/hid/uhi_hid.c                                  \
       libavr32/src/usb/midi/uhi_midi.c                                \
       libavr32/src/usb/midi/midi.c                                    \
       libavr32/asf/avr32/drivers/adc/adc.c                            \
       libavr32/asf/avr32/drivers/flashc/flashc.c                      \
       libavr32/asf/avr32/drivers/gpio/gpio.c                          \
       libavr32/asf/avr32/drivers/intc/intc.c                          \
       libavr32/asf/avr32/drivers/pm/pm.c                              \
       libavr32/asf/avr32/drivers/pm/pm_conf_clocks.c                  \
       libavr32/asf/avr32/drivers/pm/power_clocks_lib.c                \
       libavr32/asf/avr32/drivers/spi/spi.c                            \
       libavr32/asf/avr32/drivers/tc/tc.c                              \
       libavr32/asf/avr32/drivers/twi/twi.c                            \
       libavr32/asf/avr32/drivers/usart/usart.c                        \
       libavr32/asf/avr32/drivers/usbb/usbb_host.c                     \
       libavr32/asf/avr32/utils/debug/print_funcs.c                    \
       libavr32/asf/common/services/usb/class/msc/host/uhi_msc.c       \
       libavr32/asf/common/services/usb/class/msc/host/uhi_msc_mem.c   \
       libavr32/asf/common/services/spi/uc3_spi/spi_master.c           \
       libavr32/asf/common/services/usb/uhc/uhc.c                      \
       libavr32/asf/common/services/clock/uc3b0_b1/sysclk.c

# List of assembler source files.
ASSRCS = \
       libavr32/asf/avr32/utils/startup/trampoline_uc3.S               \
       libavr32/asf/avr32/drivers/intc/exception.S                     \


# List of include paths.
INC_PATH = \
       libavr32/src                                                    \
       libavr32/src/usb                                                \
       libavr32/src/usb/ftdi                                           \
       libavr32/src/usb/hid                                            \
       libavr32/src/usb/midi                                           \
       libavr32/conf                                                   \
       libavr32/conf/trilogy                                           \
       libavr32/asf/avr32/boards                                       \
       libavr32/asf/avr32/drivers/cpu/cycle_counter                    \
       libavr32/asf/avr32/drivers/flashc                               \
       libavr32/asf/avr32/drivers/gpio                                 \
       libavr32/asf/avr32/drivers/intc                                 \
       libavr32/asf/avr32/drivers/pm                                   \
       libavr32/asf/avr32/drivers/spi                                  \
       libavr32/asf/avr32/drivers/tc                                   \
       libavr32/asf/avr32/drivers/twi                                  \
       libavr32/asf/avr32/drivers/usart                                \
       libavr32/asf/avr32/drivers/usbb                                 \
       libavr32/asf/avr32/utils                                        \
       libavr32/asf/avr32/utils/debug                                  \
       libavr32/asf/avr32/utils/preprocessor                           \
       libavr32/asf/common/boards                                      \
       libavr32/asf/common/boards/user_board                           \
       libavr32/asf/common/services/storage/ctrl_access                \
       libavr32/asf/common/services/clock                              \
       libavr32/asf/common/services/delay                              \
       libavr32/asf/common/services/usb/                               \
       libavr32/asf/common/services/usb/uhc                            \
       libavr32/asf/common/services/usb/class/msc                      \
       libavr32/asf/common/services/usb/class/msc/host                 \
       libavr32/asf/common/services/usb/class/hid                      \
       libavr32/asf/common/services/spi/uc3_spi                        \
       libavr32/asf/common/utils                                       

# Additional search paths for libraries.
LIB_PATH = 

# List of libraries to use during linking.
LIBS = 

# Path relative to top level directory pointing to a linker script.
# LINKER_SCRIPT = avr32/utils/linker_scripts/at32uc3b/0256/gcc/link_uc3b0256.lds
# LINKER_SCRIPT = avr32/drivers/flashc/flash_example/at32uc3b0256_evk1101/link_uc3b0256.lds
LINKER_SCRIPT = libavr32/src/link_uc3b0256.lds


# Additional options for debugging. By default the common Makefile.in will
# add -g3.
DBGFLAGS = 

# Application optimization used during compilation and linking:
# -O0, -O1, -O2, -O3 or -Os
OPTIMIZATION = -Os

# Extra flags to use when archiving.
ARFLAGS = 

# Extra flags to use when assembling.
ASFLAGS = 

# Extra flags to use when compiling.
CFLAGS = 

# Extra flags to use when preprocessing.
#
# Preprocessor symbol definitions
#   To add a definition use the format "-D name[=definition]".
#   To cancel a definition use the format "-U name".
#
# The most relevant symbols to define for the preprocessor are:
#   BOARD      Target board in use, see boards/board.h for a list.
#   EXT_BOARD  Optional extension board in use, see boards/board.h for a list.
CPPFLAGS = \
      -D BOARD=USER_BOARD -D UHD_ENABLE                             

# Extra flags to use when linking
LDFLAGS = \
        -Wl,-e,_trampoline

# Pre- and post-build commands
PREBUILD_CMD = 
POSTBUILD_CMD = 
