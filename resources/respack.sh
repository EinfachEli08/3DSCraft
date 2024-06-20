#!/bin/bash

echo "3DSCraft Resource Packer 1.0"
echo "by ChatGPT + Moddimation"

namespace="minecraft"

# Set variables
TEX3DS="$DEVKITPRO/tools/bin/tex3ds.exe"
PYTHON_SCRIPT="flip.py" 
ASSETS_DIR="assets" 
PATCH_DIR="patch"
OUTPUT_DIR="OUTPUT"
TMP_DIR="TMP" 

SUBDIR="$namespace/textures"

ASSETS_SUB="$ASSETS_DIR/$SUBDIR"
PATCH_SUB="$PATCH_DIR/$SUBDIR"
OUTPUT_SUB="$OUTPUT_DIR/$SUBDIR"
TMP_SUB="$TMP_DIR/$SUBDIR"

# Function to convert PNG to .t3x
convert_to_t3x_single() {
    input_file="$1"
    output_file="$OUTPUT_SUB/${1#$2}"
    output_file="${output_file%.png}.t3x"
    mkdir -p "$(dirname "$output_file")"
    
    if [ ! -e "$output_file" ]; then
        flipped_file="$TMP_SUB/${input_file#$ASSETS_SUB/}"
        python "$PYTHON_SCRIPT" "$input_file" "$flipped_file"  # Flip the image and save to TMP directory
        output_filename="${output_file#*textures//}"  # Extract just the filename without the root
        echo "Crafting ${output_filename#$TMP_SUB}..."  # Adjusted echo statement
        "$TEX3DS" -o "$output_file" "$flipped_file" -m point -f $3 -z auto >/dev/null 2>&1
    fi
}

pack_textures() {
    find "$1" -mindepth 1 -maxdepth 1 -type d | while read -r dir; do
	    compression="rgba8"
        #if [ "$(basename "$dir")" = "entity" ]; then
        #    compression="etc1"
        #fi
        find "$dir" -mindepth 1 -maxdepth 4 -type f -name "*.png" | while read -r png_file; do
            convert_to_t3x_single "$png_file" "$1" compression
        done
    done
    rm -f textures.t3s
}

copy() {
	cp -r "$ASSETS_DIR/$namespace/$1" "$OUTPUT_DIR/$namespace/$1"
	echo "Teleporting $ASSETS_DIR/$namespace/$1 to $OUTPUT_DIR/$namespace/$1..."
}


clean() {
    rm -rf "$OUTPUT_SUB" "$TMP_SUB" "$TEXHEADERS_SUB" "$DIR_FILE"
    echo "Clean..."
}

if [ "$1" = "clean" ]; then
    clean
    exit
fi

if [ ! -d "$ASSETS_SUB" ]; then
    echo "Error: No assets found."
    echo "Place the assets in the directory named 'assets', containing the modName/minecraft as subfolder."
    exit 1
fi

echo 

# Pack textures
echo Convert textures to t3x
pack_textures "$ASSETS_SUB"
echo 
echo Complete. Patching...
pack_textures "$PATCH_SUB"
echo 

echo Done. copying json files...
copy "lang/"
copy "models/"
copy "texts/"

echo "Now place the content inside of 'OUTPUT/' in 'sdcard:/craft/assets/'."
echo "If further issues arise, join the discord for further support."
