#!/bin/bash

# Define target folder
TARGET_DIR=~/Music/Downloaded-Songs

# Create the folder if it doesn't exist
mkdir -p "$TARGET_DIR"

# Ask for song name or URL
echo "🎶 Enter song name or YouTube URL:"
read query

# Download to target folder as MP3
echo "🔽 Downloading to $TARGET_DIR..."
yt-dlp -x --audio-format mp3 -o "$TARGET_DIR/%(title)s.%(ext)s" "ytsearch:$query"

echo "✅ Done! Check your Music/Downloaded-Songs folder 💿"


