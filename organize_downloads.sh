#!/bin/bash

# Set your downloads folder
DOWNLOADS_DIR="/c/downloads"

# Create category folders if they don't exist
mkdir -p "$DOWNLOADS_DIR/PDFs"
mkdir -p "$DOWNLOADS_DIR/Images"
mkdir -p "$DOWNLOADS_DIR/Archives"
mkdir -p "$DOWNLOADS_DIR/Others"

# Loop through all files
for file in "$DOWNLOADS_DIR"/*; do
    if [[ -f "$file" ]]; then
        extension="${file##*.}"
        case "$extension" in
            pdf|PDF)
                mv "$file" "$DOWNLOADS_DIR/PDFs/"
                ;;
            jpg|jpeg|png|JPG|PNG)
                mv "$file" "$DOWNLOADS_DIR/Images/"
                ;;
            zip|rar|7z|tar)
                mv "$file" "$DOWNLOADS_DIR/Archives/"
                ;;
            *)
                mv "$file" "$DOWNLOADS_DIR/Others/"
                ;;
        esac
    fi
done

echo "✨ Organization complete, baby! ✨"


