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

ASSETS_DIR="$ASSETS_DIR/$SUBDIR"
OUTPUT_DIR="$OUTPUT_DIR/$SUBDIR"
TMP_DIR="$TMP_DIR/$SUBDIR"

# Function to convert PNG to .t3x
convert_to_t3x_single() {
    input_file="$1"
    output_file="$OUTPUT_DIR/${1#$ASSETS_DIR/}"
    output_file="${output_file%.png}.t3x"
    mkdir -p "$(dirname "$output_file")"
    
    if [ ! -e "$output_file" ]; then
        flipped_file="$TMP_DIR/${input_file#$ASSETS_DIR/}"
        python "$PYTHON_SCRIPT" "$input_file" "$flipped_file"  # Flip the image and save to TMP directory
        output_filename="${output_file#*textures/}"  # Extract just the filename without the root
        echo "Crafting ${output_filename#$TMP_DIR}..."  # Adjusted echo statement
        "$TEX3DS" -o "$output_file" "$flipped_file" -m point -f $3 -z auto >/dev/null 2>&1
    fi
}

# Function to convert a directory into one atlas
convert_to_atlas() {
    input_dir="$1"
    output_dir="$OUTPUT_DIR/$(basename "$1")"
    
    output_filename="${output_dir#*textures/}"

    if [ ! -e "$output_dir.t3x" ]; then
	    rm "textures.t3s"
        echo "Breaking ${output_filename#$OUTPUT_DIR}/..."
		echo "-m point --atlas -f ${3} -z auto" >> "textures.t3s"
		echo "" >> "textures.t3s"
		
        find "$ASSETS_DIR/${output_filename#$OUTPUT_DIR}" -type f -name "*.png" | while read -r file; do
            flipped_file="$TMP_DIR/${file#$ASSETS_DIR/}"
            if ! ls "${flipped_file%.*}"* >/dev/null 2>&1; then
                python "$PYTHON_SCRIPT" "$file" "$flipped_file"  # Flip the image and save to TMP directory
            fi
        done
        find "$TMP_DIR/${output_dir#$OUTPUT_DIR/}" -type f -name "*.png" | while read -r file; do
           echo "${file}" >> "textures.t3s"
		done
        
        echo "Crafting ${output_filename#$OUTPUT_DIR}/..."
        "$TEX3DS" -o "$output_dir.t3x" -i "textures.t3s" >/dev/null 2>&1
    else
        echo "Skipping ${output_filename#$OUTPUT_DIR}/..."
    fi
}

pack_textures() {
    find "$1" -mindepth 1 -maxdepth 1 -type d | while read -r dir; do
        if [ "$(basename "$dir")" = "block" ]; then
            output_dir="$2/$(basename "$dir")"
            convert_to_atlas "$dir" "$output_dir" "etc1"
            continue
        fi
        if [ "$(basename "$dir")" = "item" ]; then
            output_dir="$2/$(basename "$dir")"
            convert_to_atlas "$dir" "$output_dir" "rgba8"
            continue
        fi
        if [ "$(basename "$dir")" = "entity" ]; then
            find "$dir" -mindepth 1 -maxdepth 4 -type f -name "*.png" | while read -r png_file; do
                convert_to_t3x_single "$png_file" "etc1"
            done
            continue
        fi
        find "$dir" -mindepth 1 -maxdepth 4 -type f -name "*.png" | while read -r png_file; do
            convert_to_t3x_single "$png_file" "rgba8"
        done
    done
    rm -f textures.t3s
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

echo 

# Pack textures
pack_textures "$ASSETS_DIR" "$TMP_DIR"  # Flip images and store in temporary directory
pack_textures "$TMP_DIR" "$OUTPUT_DIR"  # Convert flipped images to t3x and store in output directory

echo "Now place the content inside of 'OUTPUT/' in 'sdcard:/craft/assets/'."
echo "If further issues arise, join the discord for further support."
