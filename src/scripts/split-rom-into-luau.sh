#!/bin/bash


# Takes a text file and splits it into Luau modules
# with 1024 lines of 16 bytes of data.

# Usage: `split-rom-into-luau.sh rom.txt`

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <input_file>"
    exit 1
fi

input_file=$1


if [ ! -f "$input_file" ]; then
    echo "Error: File '$input_file' not found."
    exit 1
fi


output_dir="output-${input_file}"
output_prefix="split_"
split -l 1024 "$input_file" "$output_prefix"

mkdir -p -- "$output_dir"

for file in ${output_prefix}*; do
    prefix="return [["
    suffix="]]"
    temp_file="${file}_tmp"

    echo "$prefix" > "$temp_file"
    cat "$file" >> "$temp_file"
    echo "$suffix" >> "$temp_file"

    mv "$temp_file" "$file"
    mv "$file" "${output_dir}/${file}.luau"
done
