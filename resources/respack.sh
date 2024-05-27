#!/bin/bash

echo "3DSCraft Resource Packer 1.0"
echo "by ChatGPT + Moddimation"

# Set variables
TEX3DS="$DEVKITPRO/tools/bin/tex3ds.exe"
SUBDIR="minecraft/textures"
ASSETS_DIR="assets/$SUBDIR"
PATCH_DIR="patch/$SUBDIR"
OUTPUT_DIR="OUTPUT/$SUBDIR"
TEXHEADERS_DIR="../include/texheaders"

isDelete=false

delete() {
    if [ "$isDelete" = true ]; then
        echo "Breaking $1..."
        rm -rf "$1"
    fi
}

# Function to convert PNG to .t3x
convert_to_t3x() {
    output_file="$OUTPUT_DIR/${1#$2/}"
    output_file="${output_file%.png}.t3x"
    mkdir -p "$(dirname "$output_file")"
    
    if [ ! -e "$output_file" ]; then
        echo "Placing $output_file..."
        "$TEX3DS" -o "$output_file" "$1" -m point -f etc1 -z auto >/dev/null 2>&1
        delete "$1"
    fi
}

# Function to convert a directory into one atlas
convert_to_atlas() {
    output_file="$OUTPUT_DIR/${1#$2/}"
    output_file="${output_file%.png}.t3x"
    mkdir -p "$(dirname "$output_file")"
    
    if [ ! -e "$output_file" ]; then
        echo "Placing $output_file..."
        "$TEX3DS" -o "$output_file" "$1"/*.png -m point --atlas -f etc1 -z auto -H "$TEXHEADERS_DIR/$(basename "$output_file" .t3x).h" >/dev/null 2>&1
        delete "$1"
    fi
}

pack_textures() {
    mkdir -p "$TEXHEADERS_DIR"
    find "$1" -mindepth 1 -maxdepth 1 -type d | while read -r dir; do
        echo "Entering $dir..."
        if [ "$(basename "$dir")" = "block" ] || [ "$(basename "$dir")" = "item" ]; then
            convert_to_atlas "$dir" "$1"
        else
            find "$dir" -type f -name '*.png' | while read -r png_file; do
                convert_to_t3x "$png_file" "$1"
            done
        fi
        echo "Leaving $dir..."
    done
}

clean() {
    rm -rf "$OUTPUT_DIR"
    rm -rf "$TEXHEADERS_DIR"
    echo "Clean..."
}

if [ "$1" = "clean" ]; then
    clean
    exit
fi

if [ ! -d "assets" ]; then
    echo "Error: No assets found."
    echo "Place the assets in this directory, containing the modName/minecraft as subfolder."
    exit 1
fi
    
# Prompt for confirmation to delete original assets
read -p "Delete original assets afterwards? (y/n): " confirm
case "$confirm" in
    [yY])
        isDelete=true
        ;;
    *)
        isDelete=false
        ;;
esac
echo 

pack_textures "$ASSETS_DIR"
echo 
echo "Patching..."
echo
pack_textures "$PATCH_DIR"

echo
echo "Now place the content inside of 'OUTPUT/' in 'sdcard:/craft/assets/'."
echo "If further issues arise, join the discord for further support."
