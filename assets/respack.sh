#!/bin/bash

# Set variables
TEX3DS="$DEVKITPRO/tools/bin/tex3ds.exe"
ASSETS_DIR="assets/minecraft/textures"
OUTPUT_DIR="OUTPUT/textures"

# Function to convert PNG to .t3x
convert_to_t3x() {
    output_file="$OUTPUT_DIR/${1#$ASSETS_DIR/}"
    output_file="${output_file%.png}.t3x"
    mkdir -p "$(dirname "$output_file")"
    
    if ! [ -f "$output_file" ]; then
	    rm -rf $1
        "$TEX3DS" -o "$output_file" "$1" -m point -f rgba8888 -z auto >/dev/null 2>&1
    fi
}

# Function to pack textures
pack_textures() {
    echo "3DSCraft Resource Packer 1.0"
	echo "by ChatGPT"
    find "$ASSETS_DIR" -type f -name '*.png' | while read -r png_file; do
        echo "Breaking $png_file"
		convert_to_t3x "$png_file"
        echo "Placing ${png_file%.png}.t3x"
    done
	echo "Now place the content inside of 'OUTPUT/' in 'sdcard:/craft/assets/'."
	echo "If further issues arrise, join the discord for further support."
}

# Function to clean pack
clean_pack() {
    rm -rf "$OUTPUT_DIR"
}

# Execute main function
pack_textures

# Print message
echo "All PNG files converted to .t3x and stored in $OUTPUT_DIR"
