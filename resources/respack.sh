#!/bin/bash

echo " 3DSCraft Resource Packer 1.3"
echo " by ChatGPT + Moddimation"

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

# Function to convert a directory into one atlas
convert_to_atlas() {
    input_dir="$1"
    output_dir="$OUTPUT_SUB/$(basename "$1")"

    output_filename="${output_dir#*textures/}"

	mkdir -p "../include/textureIdx"
	mkdir -p "$output_dir"

    if [ ! -e "$output_dir.t3x" ]; then
	    rm -f "textures.t3s"
        echo "Breaking ${output_filename#$OUTPUT_SUB}/..."
		echo "-m point --atlas -f ${3} -z auto" >> "textures.t3s"
		echo "" >> "textures.t3s"

		file_found=false
        find "$ASSETS_SUB/${output_filename#$OUTPUT_SUB}" -type f -name "*.mcmeta" | while read -r file; do
		    if [ "$file_found" = false ]; then
                echo "Moving   animation metadata..."
                mcmeta_found=true
            fi
		    filec="$OUTPUT_DIR/${file#$ASSETS_DIR/}"
			copy "${file}" "${filec}"
		done
		file_found=false
		
		# make option to skip this?
        find "$ASSETS_SUB/${output_filename#$OUTPUT_SUB}" -type f -name "*.png" | while read -r file; do
            flipped_file="$TMP_SUB/${file#$ASSETS_SUB/}"
            if ! ls "${flipped_file%.*}"* >/dev/null 2>&1; then
                python "$PYTHON_SCRIPT" "$file" "$flipped_file"  # Flip the image and save to TMP directory
            fi
        done
		
        find "$TMP_SUB/${output_filename#$OUTPUT_SUB}" -type f -name "*.mcanim" | while read -r file; do
			if [ "$file_found" = false ]; then
                echo "Moving   animation framecount-data..."
                mcmeta_found=true
            fi
		    filec="$OUTPUT_DIR/${file#$TMP_DIR/}"
			copy "${file}" "${filec}"
		done

        find "$TMP_DIR/${output_dir#$OUTPUT_DIR/}" -type f -name "*.png" | while read -r file; do
           echo "${file}" >> "textures.t3s"
		done

        echo "Crafting ${output_filename#$OUTPUT_SUB/}.t3x..."
        "$TEX3DS" -o "$output_dir.t3x" -i "textures.t3s" -H "../include/textureIdx/$output_filename.h" >/dev/null 2>&1
    fi
}

pack_textures() {
    find "$1" -mindepth 1 -maxdepth 1 -type d | while read -r dir; do
	    compression="rgba8"
		maxdepth=4
        
		echo "Explore  $dir/"
		if [ "$(basename "$dir")" = "block" ] || [ "$(basename "$dir")" = "item" ]; then
            output_dir="$2/$(basename "$dir")"
            convert_to_atlas "$dir" "$output_dir" "etc1"
            continue
        fi
		if [ "$(basename "$dir")" = "entity" ]; then
			maxdepth=3
            continue
        fi
        find "$dir" -mindepth 1 -maxdepth $maxdepth -type f -name "*.png" | while read -r png_file; do
            convert_to_t3x_single "$png_file" "$1" compression
        done
    done
    rm -f textures.t3s
}

copy() {
    if [ -n "$2" ]; then
        cp -r "$1" "$2"
        return
    fi
    echo "Moving   $(basename ${1})..."
    cp -r "$ASSETS_DIR/$namespace/$1" "$OUTPUT_DIR/$namespace/$1"
}


clean() {
    rm -rf "$OUTPUT_DIR" "$TMP_DIR" "$TEXHEADERS_SUB" "$DIR_FILE"
    echo "# Clean..."
}

if [ "$1" = "clean" ]; then
    clean
    exit
fi

if [ ! -d "$ASSETS_SUB" ]; then
    echo "# Error: No assets found."
    echo "  Place the assets in the directory named 'assets', containing the modName/minecraft as subfolder."
    exit 1
fi

echo 

# Pack textures
echo "# Convert textures for 3DSCraft"
pack_textures "$ASSETS_SUB"
echo 
echo "# Complete. Patching..."
pack_textures "$PATCH_SUB"
echo 

echo "# Done. Moving json files..."
copy "lang/"
copy "models/"
copy "texts/"

echo 
echo "# Process complete."
echo "  Now place the content inside of 'OUTPUT/' in 'sdcard:/craft/assets/'."
echo "  If any issues arise, join the discord for further support."
