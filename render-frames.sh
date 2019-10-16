#!/bin/bash

source "constants.sh"

rm -rf "${PNG_FRAMES_FOLDER}/*"

# Render frames
echo "Rendering ${TOTAL_FRAMES} frames:"
for ((i=1; i<=TOTAL_FRAMES; i++))
do
    echo "Rendering frame ${i}..."
    bash ./render-frame.sh "${i}"
done
