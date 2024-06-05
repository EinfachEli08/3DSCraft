#!/bin/bash

echo "3DSCraft Resource Packer 1.0"
echo "by ChatGPT + Moddimation"

# Set variables
TEX3DS="$DEVKITPRO/tools/bin/tex3ds.exe"
PYTHON_SCRIPT="flip.py"  # Name of the Python script to flip images
ASSETS_DIR="assets"  # Main assets directory
OUTPUT_DIR="OUTPUT"  # Final output directory
TMP_DIR="TMP"  # Temporary directory for flipped images

SUBDIR="minecraft/textures"
ASSETS_SUBDIR="$ASSETS_DIR/$SUBDIR"
OUTPUT_SUBDIR="$OUTPUT_DIR/$SUBDIR"
TMP_SUBDIR="$TMP_DIR/$SUBDIR"

isDelete=false

delete() {
    if [ "$isDelete" = true ]; then
        echo "Breaking $1..."
        rm -rf "$1"
    fi
}

# Function to convert PNG to .t3x
convert_to_t3x_single() {
    input_file="$1"
    output_file="$OUTPUT_DIR/${1#$ASSETS_DIR/}"
    output_file="${output_file%.png}.t3x"
    mkdir -p "$(dirname "$output_file")"
    
    if [ ! -e "$output_file" ]; then
        flipped_file="$TMP_DIR/${input_file#$ASSETS_DIR/}"
        python "$PYTHON_SCRIPT" "$input_file" "$flipped_file"  # Flip the image and save to TMP directory
        output_filename="$(basename "$output_file")"  # Extract just the filename
        echo "Crafting ${output_filename}..."  # Adjusted echo statement
        "$TEX3DS" -o "$output_file" "$flipped_file" -m point -f rgba8 -z auto >/dev/null 2>&1
    fi
}

# Function to convert a directory into one atlas
convert_to_atlas() {
    input_dir="$1"
    output_dir="$2"
    mkdir -p "$output_dir"
    
    png_files=""
    find "$input_dir" -type f -name "*.png" | while read -r file; do
        flipped_file="$TMP_DIR/${file#$ASSETS_DIR/}"
        py "$PYTHON_SCRIPT" "$file" "$flipped_file"  # Flip the image and save to TMP directory
        png_files="$png_files $flipped_file"  # Add flipped image to png_files list
    done
    
    output_filename="$(basename "$output_dir").t3x"  # Extract just the filename
    echo "Crafting ${output_filename}..."  # Adjusted echo statement
    "$TEX3DS" -o "$output_dir/$output_filename" $png_files -m point --atlas -f rgba8 -z auto >/dev/null 2>&1
}

pack_single_t3x() {
    for png_file in "$1"/*.png; do
        convert_to_t3x_single "$png_file"
    done
}

pack_textures() {
    for dir in "$1"/*/; do
        output_dir="$2/$(basename "$dir")"
        if [ "$(basename "$dir")" = "block" ]; then
            convert_to_atlas "$dir" "$output_dir"
            continue
        fi
        if [ "$(basename "$dir")" = "item" ]; then
            convert_to_atlas "$dir" "$output_dir"
            continue
        fi
        pack_single_t3x "$dir"
    done
}

clean() {
    rm -rf "$OUTPUT_DIR" "$TMP_DIR" "$TEXHEADERS_DIR" "$DIR_FILE"
    echo "Clean..."
}

if [ "$1" = "clean" ]; then
    clean
    exit
fi

if [ ! -d "$ASSETS_DIR" ]; then
    echo "Error: No assets found."
    echo "Place the assets in the directory named 'assets', containing the modName/minecraft as subfolder."
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

# Pack textures
pack_textures "$ASSETS_DIR/$SUBDIR" "$TMP_DIR/$SUBDIR"  # Flip images and store in temporary directory
pack_textures "$TMP_DIR/$SUBDIR" "$OUTPUT_DIR/$SUBDIR"  # Convert flipped images to t3x and store in output directory

echo "Now place the content inside of 'OUTPUT/' in 'sdcard:/craft/assets/'."
echo "If further issues arise, join the discord for further support."
