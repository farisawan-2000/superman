TARGET = superman

ASM_DIRS = asm asm/asm asm/os
SRC_DIRS = src src/os
BIN_DIRS = bin
BUILD_DIR = build

GLOBAL_ASM_C_FILES != grep -rl 'GLOBAL_ASM(' $(wildcard src/*/*.c)
GLOBAL_ASM_O_FILES = $(foreach file,$(GLOBAL_ASM_C_FILES),$(BUILD_DIR)/$(file:.c=.o))

ASM_FILES = $(foreach dir,$(ASM_DIRS),$(wildcard $(dir)/*.s))
SRC_FILES = $(foreach dir,$(SRC_DIRS),$(wildcard $(dir)/*.c))
BIN_FILES = $(foreach dir,$(BIN_DIRS),$(wildcard $(dir)/*.bin))
O_FILES = $(foreach file,$(ASM_FILES),$(BUILD_DIR)/$(file:.s=.o)) \
		  $(foreach file,$(SRC_FILES),$(BUILD_DIR)/$(file:.c=.o)) \
		  $(foreach file,$(BIN_FILES),$(BUILD_DIR)/$(file:.bin=.o))

YAY0_FILES = $(foreach dir,$(YAY0_DIR),$(wildcard $(dir)/*.bin))
SZP_FILES = $(foreach file,$(YAY0_FILES),$(BUILD_DIR)/$(file:.bin=.szp))

ALL_DIRS = $(BUILD_DIR) $(addprefix $(BUILD_DIR)/,$(ASM_DIRS) $(BIN_DIRS) $(SRC_DIRS) $(YAY0_DIR))
DUMMY != mkdir -p $(ALL_DIRS)

AS = mips-linux-gnu-as
ASFLAGS := -march=vr4300 -mtune=vr4300 -mabi=32 -mips3 -Iinclude -I. -I$(BUILD_DIR)

CC = tools/ido/cc
OPT_FLAGS := -O2
TARGET_CFLAGS := -nostdinc -I include/libc -DTARGET_N64 -DF3DEX_GBI_2
CFLAGS = $(TARGET_CFLAGS) -Wab,-r4300_mul -non_shared -G0 -Xcpluscomm -Xfullwarn -signed -O2 -Iinclude -I. -Isrc/

LD = mips-linux-gnu-ld
LD_SCRIPT = superman.ld
LDFLAGS := --no-check-sections -m elf32btsmip -mips3 --accept-unknown-input-arch -T $(BUILD_DIR)/$(LD_SCRIPT) -T undefined_syms_auto.txt -T undefined_funcs_auto.txt

CPP := mips-linux-gnu-cpp -P -Wno-trigraphs
CPPFLAGS := -Iinclude/ -Iinclude/libc -I. -DTARGET_N64 -ffreestanding -D _LANGUAGE_C -D_FINALROM -DF3DEX_GBI_2 -D_MIPS_SZLONG=32

CC_CHECK := gcc -fsyntax-only -fsigned-char -m32 $(CPPFLAGS) -std=gnu90 -Wall -Wextra -Wno-unknown-pragmas -Wno-format-security -Wno-main -DNON_MATCHING -DAVOID_UB

N64CRC := tools/n64crc

OBJCOPY := mips-linux-gnu-objcopy
OBJCOPY_FLAGS = --pad-to=0x800000 --gap-fill=0xFF

DUMMY != make -C tools

PYTHON := python3
POSTPROCESS = $(PYTHON) tools/postprocess_asm.py


default: all

$(GLOBAL_ASM_O_FILES): CC = $(PYTHON) asm-processor/build.py tools/ido/cc -- $(AS) $(ASFLAGS) --

$(BUILD_DIR)/%.o: %.s $(SZP_FILES)
	$(AS) $(ASFLAGS) -o $@ $<

$(BUILD_DIR)/%.o: %.bin
	$(LD) -r -b binary -o $@ $<

$(BUILD_DIR)/%.o : %.c
	@$(CC_CHECK) -MMD -MP -MT $@ -MF $(BUILD_DIR)/$*.d $<
	$(CC) $(CFLAGS) -o $@ $<
	$(STRIP) $@ -N $(<:.i=.c)

$(BUILD_DIR)/%.szp: %.bin
	tools/slienc $< $@

$(BUILD_DIR)/$(LD_SCRIPT): $(LD_SCRIPT)
	$(CPP) $(VERSION_CFLAGS) -Umips -MMD -MP -MT $@ -MF $@.d -o $@ $< \
	-DBUILD_DIR=$(BUILD_DIR)

$(BUILD_DIR)/$(TARGET).elf: $(BUILD_DIR)/$(LD_SCRIPT) $(O_FILES) $(I_FILES)
	$(LD) $(LDFLAGS) -o $@ -Map $(BUILD_DIR)/$(TARGET).map

# final z64 updates checksum
$(BUILD_DIR)/$(TARGET).z64: $(BUILD_DIR)/$(TARGET).elf $(SZP_FILES)
	$(OBJCOPY) $< $@ -O binary $(OBJCOPY_FLAGS)
	$(N64CRC) $@

all: $(BUILD_DIR)/$(TARGET).z64
	@sha1sum -c superman.sha1

clean:
	rm -rf $(BUILD_DIR)

test:
	~/Downloads/mupen64plus/mupen64plus-gui $(BUILD_DIR)/$(TARGET).z64

hexedit:
	wine ~/.wine/drive_c/Program\ Files/HxD/HxD.exe baserom.z64

.PHONY: all clean default diff test distclean

# Remove built-in rules, to improve performance
MAKEFLAGS += --no-builtin-rules

print-% : ; $(info $* is a $(flavor $*) variable set to [$($*)]) @true

