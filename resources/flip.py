import os
import sys
from PIL import Image

def flip_image(image, input_path, output_dir, slice_number=None):
    # Flip the image vertically
    flipped_image = image.transpose(Image.Transpose.FLIP_TOP_BOTTOM)
    
    # Construct the output filename
    filename, ext = os.path.splitext(os.path.basename(input_path))
    if slice_number is not None:
        filename += f"_f{slice_number}"
    
    # Save the flipped image
    output_path = os.path.join(output_dir, f"{filename}{ext}")
    flipped_image.save(output_path)

def split_and_flip_image(input_path, output_dir):
    # Open the image
    image = Image.open(input_path)
    
    flip_image(image, input_path, output_dir)


if __name__ == "__main__":
    input_file = sys.argv[1]
    output_dir = sys.argv[2]
    output_dir = os.path.dirname(output_dir)

    # Print the filename without the root directory
    path_parts = input_file.split('textures/')
    if len(path_parts) > 1:
        print(f"Mining   {path_parts[-1]}...")
    else:
        print(f"CREEPER!:{input_file}!")
        
    #print(f"{input_file}")
    #print(f"{output_dir}")

    # Ensure output directory exists and is a directory
    if not os.path.exists(output_dir):
        os.makedirs(output_dir)
    elif not os.path.isdir(output_dir):
        print("Error: Output path is not a directory.")
        sys.exit(1)

    # Split the original image into slices and flip each slice
    split_and_flip_image(input_file, output_dir)
