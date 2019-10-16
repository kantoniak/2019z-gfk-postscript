#!/bin/bash

source "constants.sh"

# Create folder
rm -rf "${OUTPUT_FOLDER}/*"
mkdir -p "${OUTPUT_FOLDER}"

# Render frames
echo "Rendering movie..."
ffmpeg -r:v ${FPS} -i "${PNG_FRAMES_FOLDER}/frame_%d.png" -tune animation -codec:v libx264 -preset veryslow -pix_fmt yuv420p -crf 28 -an "${OUTPUT_FOLDER}/movie.mp4"
