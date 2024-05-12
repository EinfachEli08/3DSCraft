#---------------------------------------------------------------------------------
.SUFFIXES:
#---------------------------------------------------------------------------------

ifeq ($(strip $(DEVKITARM)),)
$(error "Please set DEVKITARM in your environment. export DEVKITARM=<path to>devkitARM")
endif

TOPDIR ?= $(CURDIR)
include $(DEVKITARM)/3ds_rules

VERSION_MAJOR	:= 1
VERSION_MINOR	:= 0
VERSION_MICRO	:= 0

DEBUG			?=	1

TARGET			:=	3DSCraft
BUILD			:=	build
DATA			:=	data
META			:=	metadata
ROMFS			:=	romfs
INCLUDES		:=	include lib
SOURCES 		:= $(wildcard $(shell find $(realpath src) -type d))
SOURCES 		:= $(foreach dir,$(SOURCES),$(patsubst $(CURDIR)/%,%,$(dir)))

# 3dsx
APP_DESCRIPTION :=  Re-reload of Craftus Reloaded
APP_AUTHOR		:=  u/SomeRandoLameo
ICON			:=	$(META)/icon.png

# CIA
BANNER_AUDIO	:=	$(META)/banner.wav
BANNER_IMAGE	:=	$(META)/banner.cgfx
RSF_PATH		:=	$(META)/app.rsf
LOGO			:=	$(META)/logo.bcma.lz
UNIQUE_ID		:=	0x181169
PRODUCT_CODE	:=	CTR-3D-CRFT
ICON_FLAGS		:=	nosavebackups,visible

ifeq ($(DEBUG), 0)
CFLAGS_ADD		:=	-fomit-frame-pointer -O2
else
CFLAGS_ADD		:=	-g -D_DEBUG
endif
LIBS			:= -lgame -lcitro3dd -lctru -lstdc++ -lm -ljansson -lcurl #tex3ds

#---------------------------------------------------------------------------------
# options for code generation
#---------------------------------------------------------------------------------
ARCH	:=	-march=armv6k -mtune=mpcore -mfloat-abi=hard -mtp=soft

CFLAGS	:=	-g -Wall -Wno-psabi -O2 -mword-relocations \
			-DC_V=\"$(CURRENT_VERSION)\" \
			-fomit-frame-pointer -ffunction-sections \
			$(ARCH)

CFLAGS	+=	$(INCLUDE) -D__3DS__ -D_GNU_SOURCE=1

CXXFLAGS	:= $(CFLAGS) -fno-rtti -fno-exceptions -std=gnu++17 $(CITRA)

ASFLAGS	:=	-g $(ARCH)
LDFLAGS	=	-specs=3dsx.specs -g $(ARCH) -Wl,-Map,$(notdir $*.map)

#---------------------------------------------------------------------------------
# list of directories containing libraries, this must be the top level containing
# include and lib
#---------------------------------------------------------------------------------
LIBDIRS	:= $(CURDIR) $(PORTLIBS) $(CTRULIB)

#---------------------------------------------------------------------------------
# no real need to edit anything past this point unless you need to add additional
# rules for different file extensions
#---------------------------------------------------------------------------------
ifneq ($(BUILD),$(notdir $(CURDIR)))
#---------------------------------------------------------------------------------

export OUTPUT	:=	$(CURDIR)/$(TARGET)
export TOPDIR	:=	$(CURDIR)

export VPATH	:=	$(foreach dir,$(SOURCES),$(CURDIR)/$(dir)) \
			$(foreach dir,$(DATA),$(CURDIR)/$(dir))

export DEPSDIR	:=	$(CURDIR)/$(BUILD)

CFILES			:=	$(foreach dir,$(SOURCES),$(notdir $(wildcard $(dir)/*.c)))
CPPFILES		:=	$(foreach dir,$(SOURCES),$(notdir $(wildcard $(dir)/*.cpp)))
SFILES			:=	$(foreach dir,$(SOURCES),$(notdir $(wildcard $(dir)/*.s)))
PICAFILES		:=	$(foreach dir,$(SOURCES),$(notdir $(wildcard $(dir)/*.v.pica)))
SHLISTFILES		:=	$(foreach dir,$(SOURCES),$(notdir $(wildcard $(dir)/*.shlist)))
BINFILES		:=	$(foreach dir,$(DATA),$(notdir $(wildcard $(dir)/*.*)))

#---------------------------------------------------------------------------------
# use CXX for linking C++ projects, CC for standard C
#---------------------------------------------------------------------------------
ifeq ($(strip $(CPPFILES)),)
#---------------------------------------------------------------------------------
	export LD	:=	$(CC)
#---------------------------------------------------------------------------------
else
#---------------------------------------------------------------------------------
	export LD	:=	$(CXX)
#---------------------------------------------------------------------------------
endif
#---------------------------------------------------------------------------------

export OFILES	:=	$(addsuffix .o,$(BINFILES)) \
			$(PICAFILES:.v.pica=.shbin.o) $(SHLISTFILES:.shlist=.shbin.o) \
			$(CPPFILES:.cpp=.o) $(CFILES:.c=.o) $(SFILES:.s=.o)

export INCLUDE	:=	$(foreach dir,$(INCLUDES),-I$(CURDIR)/$(dir)) \
			$(foreach dir,$(LIBDIRS),-I$(dir)/include) \
			-I$(CURDIR)/$(BUILD) $(foreach dir,$(LIBDIRS),-L$(dir)/lib)

export LIBPATHS	:=	$(foreach dir,$(LIBDIRS),-L$(dir)/lib)

ifeq ($(strip $(ICON)),)
	icons := $(wildcard *.png)
	ifneq (,$(findstring $(TARGET).png,$(icons)))
		export APP_ICON := $(TOPDIR)/$(TARGET).png
	else
		ifneq (,$(findstring icon.png,$(icons)))
			export APP_ICON := $(TOPDIR)/icon.png
		endif
	endif
else
	export APP_ICON := $(TOPDIR)/$(ICON)
endif

ifeq ($(strip $(NO_SMDH)),)
	MAKEROM_ARGS += --smdh=$(CURDIR)/$(TARGET).smdh
endif

ifneq ($(strip $(ROMFS)),)
	MAKEROM_ARGS += --romfs=$(CURDIR)/$(ROMFS)
endif

.PHONY: $(BUILD) clean all

#---------------------------------------------------------------------------------
BANNERTOOL   ?= tools/bannertool.exe
MAKEROM      ?= tools/makerom.exe

MAKEROM_ARGS := -elf "$(OUTPUT).elf" -rsf "$(RSF_PATH)" -banner "$(BUILD)/banner.bnr" -icon "$(BUILD)/icon.icn" -DAPP_TITLE="$(TARGET)" -DAPP_PRODUCT_CODE="$(PRODUCT_CODE)" -DAPP_UNIQUE_ID="$(UNIQUE_ID)"
MAKEROM_ARGS += -major $(VERSION_MAJOR) -minor $(VERSION_MINOR) -micro $(VERSION_MICRO)

ifneq ($(strip $(LOGO)),)
	MAKEROM_ARGS += -logo "$(LOGO)"
endif
ifneq ($(strip $(ROMFS)),)
	MAKEROM_ARGS += -DAPP_ROMFS="$(ROMFS)"
endif


ifeq ($(suffix $(BANNER_IMAGE)),.cgfx)
	BANNER_IMAGE_ARG := -ci
else
	BANNER_IMAGE_ARG := -i
endif

ifeq ($(suffix $(BANNER_AUDIO)),.cwav)
	BANNER_AUDIO_ARG := -ca
else
	BANNER_AUDIO_ARG := -a
endif

#---------------------------------------------------------------------------------
all: cia

3dsx: greetings
	@[ -d $(BUILD) ] || mkdir -p $(BUILD)
	@$(MAKE) --no-print-directory -C $(BUILD) -f $(CURDIR)/Makefile
cia: 3dsx
	@$(BANNERTOOL) makebanner $(BANNER_IMAGE_ARG) "$(BANNER_IMAGE)" $(BANNER_AUDIO_ARG) "$(BANNER_AUDIO)" -o "$(BUILD)/banner.bnr"
	@$(BANNERTOOL) makesmdh -s "$(TARGET)" -l "$(APP_DESCRIPTION)" -p "$(APP_AUTHOR)" -i "$(APP_ICON)" -f "$(ICON_FLAGS)" -o "$(BUILD)/icon.icn"
	@echo building $(TARGET).cia...
	@$(MAKEROM) -f cia -o "$(OUTPUT).cia" -target t -exefslogo $(MAKEROM_ARGS)
	@echo built $(TARGET).cia
#---------------------------------------------------------------------------------
clean:
	@echo clean ...
	@rm -fr $(BUILD) $(TARGET).elf
	@rm -fr $(OUTDIR)
#---------------------------------------------------------------------------------

dbg: #debug dima
	$(DEVKITARM)/bin/arm-none-eabi-gdb.exe $(TARGET).elf
rund: #run dima
	@3dslink $(TARGET).3dsx -a 192.168.178.37
run:
	@echo running...
	@3dslink $(TARGET).3dsx

#---------------------------------------------------------------------------------

greetings:
	@echo $(TARGET) Compilation for 3DS started!
	@echo made by $(APP_AUTHOR)
ifeq ($(DEBUG), 1)
	@echo Debug build
else
	@echo Release build v$(VERSION_MAJOR).$(VERSION_MINOR).$(VERSION_MICRO)
endif

#---------------------------------------------------------------------------------
else

DEPENDS	:=	$(OFILES:.o=.d)

#---------------------------------------------------------------------------------
# main targets
#---------------------------------------------------------------------------------
ifeq ($(strip $(NO_SMDH)),)
$(OUTPUT).3dsx	:	$(OUTPUT).elf $(OUTPUT).smdh
else
$(OUTPUT).3dsx	:	$(OUTPUT).elf
endif

$(OUTPUT).elf	:	$(OFILES)

#---------------------------------------------------------------------------------
# you need a rule like this for each extension you use as binary data
#---------------------------------------------------------------------------------
%.bin.o	:	%.bin
#---------------------------------------------------------------------------------
	@echo $(notdir $<)
	@$(bin2o)

#---------------------------------------------------------------------------------
# rules for assembling GPU shaders
#---------------------------------------------------------------------------------
define shader-as
	$(eval CURBIN := $(patsubst %.shbin.o,%.shbin,$(notdir $@)))
	picasso -o $(CURBIN) $1
	bin2s $(CURBIN) | $(AS) -o $@
	echo "extern const u8" `(echo $(CURBIN) | sed -e 's/^\([0-9]\)/_\1/' | tr . _)`"_end[];" > `(echo $(CURBIN) | tr . _)`.h
	echo "extern const u8" `(echo $(CURBIN) | sed -e 's/^\([0-9]\)/_\1/' | tr . _)`"[];" >> `(echo $(CURBIN) | tr . _)`.h
	echo "extern const u32" `(echo $(CURBIN) | sed -e 's/^\([0-9]\)/_\1/' | tr . _)`_size";" >> `(echo $(CURBIN) | tr . _)`.h
endef

%.shbin.o : %.v.pica %.g.pica
	@echo $(notdir $^)
	@$(call shader-as,$^)

%.shbin.o : %.v.pica
	@echo $(notdir $<)
	@$(call shader-as,$<)

%.shbin.o : %.shlist
	@echo $(notdir $<)
	@$(call shader-as,$(foreach file,$(shell cat $<),$(dir $<)/$(file)))
-include $(DEPENDS)

#---------------------------------------------------------------------------------------
endif
#---------------------------------------------------------------------------------------
AR := $(DEVKITARM)/bin/arm-none-eabi-ar.exe

LIBSOURCES := $(wildcard lib/**/*.cpp lib/**/*.c)
LIBOBJS := $(patsubst %.cpp, %.o, $(patsubst %.c, %.o, $(LIBSOURCES)))

lib: lib/$(OUTPUT).a

lib/$(OUTPUT).a: $(LIBOBJS)
	$(AR) rcs lib/libgame.a $^

lib/%.o: lib/%.cpp
	$(CXX) $(CXXFLAGS) $(INCLUDE) -c $< -o $@

lib/%.o: lib/%.c
	$(CC) $(CFLAGS) $(INCLUDE) -c $< -o $@

clean-libs:
	rm -f lib/**/*.o $(OUTPUT).a
