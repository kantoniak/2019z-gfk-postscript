#!/bin/bash

source "constants.sh"

# Create folder
rm -rf "${OUTPUT_FOLDER}/*"
mkdir -p "${OUTPUT_FOLDER}"

# Render frames
echo "Rendering movie..."
ffmpeg -framerate ${FPS} -i "${PNG_FRAMES_FOLDER}/frame_%d.png" "${OUTPUT_FOLDER}/movie.mp4"