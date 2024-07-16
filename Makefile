#---------------------------------------------------------------------------------
.SUFFIXES:
#---------------------------------------------------------------------------------

ifeq ($(strip $(DEVKITARM)),)
$(error "Please set DEVKITARM in your environment. export DEVKITARM=<path to>devkitARM")
endif
ifeq ($(strip $(DEVKITPRO)),)
$(error "Please set DEVKITPRO in your environment. export DEVKITPRO=<path to>devkitPRO")
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
META			:=	project
ROMFS			:=	romfs
ASSETS			:=  assets
INCLUDES		:=	include lib assets
SOURCES 		:=  $(wildcard $(shell find $(realpath source) -type d))
SOURCES			+=  $(wildcard $(shell find $(realpath lib) -type d))
SOURCES			+=  $(wildcard $(shell find $(realpath include) -type d))
SOURCES 		:=  $(foreach dir,$(SOURCES),$(patsubst $(CURDIR)/%,%,$(dir)))

# 3dsx
APP_DESCRIPTION :=  Re-reload of Craftus Reloaded
APP_AUTHOR		:=  Omega
ICON			:=	$(META)/icon.png

# CIA
BANNER_AUDIO	:=	$(META)/banner.wav
BANNER_IMAGE	:=	$(META)/banner.cgfx
RSF_PATH		:=	$(META)/app.rsf
LOGO			:=	$(META)/logo.bcma.lz
ICON_FLAGS		:=	nosavebackups,visible

#---------------------------------------------------------------------------------
# options for code generation
#---------------------------------------------------------------------------------
ARCH	:=	-march=armv6k -mtune=mpcore -mfloat-abi=hard -mtp=soft

CFLAGS	:=	-g -Wall -Wno-psabi -O2 -mword-relocations \
			-DC_V=\"$(CURRENT_VERSION)\" \
			-fomit-frame-pointer -ffunction-sections \
			$(ARCH)

CFLAGS	+=	$(INCLUDE) -D__3DS__ -D_GNU_SOURCE=1 `$(PREFIX)pkg-config opusfile --cflags`

CXXFLAGS	:= $(CFLAGS) -fno-rtti -fno-exceptions -std=c++17 $(CITRA)

ASFLAGS	:=	-g $(ARCH)
LDFLAGS	=	-specs=3dsx.specs -g $(ARCH) -Wl,-Map,$(notdir $*.map) -include -$(DEVKITPRO)/libctru/include/3ds/types.h

ifeq ($(DEBUG), 0)
LDFLAGS		+=	-fomit-frame-pointer -O2
LIBS		+=  -lcitro3d
else
LDFLAGS		+=	-g -D_DEBUG
LIBS		+=  -lcitro3dd
endif

LIBS		+= -lctru -lm `$(PREFIX)pkg-config opusfile --libs` 

#---------------------------------------------------------------------------------
# list of directories containing libraries, this must be the top level containing
# include and lib
#---------------------------------------------------------------------------------
LIBDIRS	:= $(PORTLIBS) $(CTRULIB)

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

#---------------------------------------------------------------------------------------
# File searching
#---------------------------------------------------------------------------------------

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
	export _3DSXFLAGS += --smdh=$(CURDIR)/$(TARGET).smdh
endif

ifneq ($(ROMFS),)
	export _3DSXFLAGS += --romfs=$(CURDIR)/$(ROMFS)
endif

.PHONY: $(BUILD) clean all

#---------------------------------------------------------------------------------------
# Main targets
#---------------------------------------------------------------------------------------
all: greetings 
	@[ -d $(BUILD) ] || mkdir -p $(BUILD)
	@$(MAKE) --no-print-directory -C $(BUILD) -f $(CURDIR)/Makefile
#---------------------------------------------------------------------------------
clean:
	rm -rf $(BUILD)/
	rm -f *.elf *.smdh *.lst *.cia *.3dsx *.cxi *.cfa

clean-all: clean-libs clean-pack clean´

#---------------------------------------------------------------------------------------
# Testing
#---------------------------------------------------------------------------------------
dbg: #debug dima
	$(DEVKITARM)/bin/arm-none-eabi-gdb.exe $(TARGET).elf
rund: #run dima
	@3dslink $(TARGET).3dsx -a 192.168.178.37
run:
	@echo running...
	@3dslink $(TARGET).3dsx

#---------------------------------------------------------------------------------------
# Greetings
#---------------------------------------------------------------------------------------


greetings:
	@echo $(TARGET) Compilation for 3DS started!
	@echo made by $(APP_AUTHOR)
	@echo $(VERSION_BUILD)
	@echo

#---------------------------------------------------------------------------------
else

DEPENDS	:=	$(OFILES:.o=.d)

#---------------------------------------------------------------------------------------
# Cia building preparation
#---------------------------------------------------------------------------------------

BANNERTOOL   ?= ../tools/bannertool.exe
MAKEROM      ?= ../tools/makerom.exe

MAKEROM_ARGS += -elf "$(OUTPUT).elf" -rsf "../$(RSF_PATH)" -banner "banner.bnr" -icon "icon.icn"
MAKEROM_ARGS += -major $(VERSION_MAJOR) -minor $(VERSION_MINOR) -micro $(VERSION_MICRO)

ifneq ($(strip $(LOGO)),)
	MAKEROM_ARGS += -logo "../$(LOGO)"
endif
ifneq ($(strip $(ROMFS)),)
	MAKEROM_ARGS += -DAPP_ROMFS="$(CURDIR)/../$(ROMFS)"
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

#---------------------------------------------------------------------------------------
ifeq ($(DEBUG), 1)
	VERSION_BUILD := Debug build
else
	VERSION_BUILD := Release build v$(VERSION_MAJOR).$(VERSION_MINOR).$(VERSION_MICRO)
endif

#---------------------------------------------------------------------------------
# main targets
#---------------------------------------------------------------------------------

$(OUTPUT).3dsx	:	$(OUTPUT).elf $(OUTPUT).smdh
	@$(BANNERTOOL) makebanner $(BANNER_IMAGE_ARG) "../$(BANNER_IMAGE)" $(BANNER_AUDIO_ARG) "../$(BANNER_AUDIO)" -o "banner.bnr"
	@echo building $(TARGET).cxi...
	@$(MAKEROM) -o "$(OUTPUT).cxi" -target t -exefslogo $(MAKEROM_ARGS)
	@echo building $(TARGET).cfa...
	@$(MAKEROM) -o "$(OUTPUT).cfa" -target t -rsf "../$(RSF_PATH)"
	@echo building $(TARGET).cia...
	@$(MAKEROM) -f cia -o "../$(TARGET).cia" -target t -i "../$(TARGET).cxi:0:0" -i "../$(TARGET).cfa:1:1"
	@echo Built cia package for $(TARGET), $(VERSION_BUILD).

$(OUTPUT).smdh:
	echo $(CURDIR)
	$(BANNERTOOL) makesmdh -s "$(TARGET)" -l "$(APP_DESCRIPTION)" -p "$(APP_AUTHOR)" -i "$(APP_ICON)" -f "$(ICON_FLAGS)" -o "icon.icn"

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