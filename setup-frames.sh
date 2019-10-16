#!/bin/bash

source "constants.sh"

# Create frame folders
rm -rf "${PS_FRAMES_FOLDER}" "${PNG_FRAMES_FOLDER}"
mkdir -p "${PS_FRAMES_FOLDER}"
mkdir -p "${PNG_FRAMES_FOLDER}"

# Render frame files
for ((i=1; i<=TOTAL_FRAMES; i++))
do
    FILENAME="${PS_FRAMES_FOLDER}/frame_${i}.ps"
    if [ -f $FILENAME ]
    then
        continue
    fi

    touch "${FILENAME}"
    cat <<EOF > "${FILENAME}"
%!
% Frame $i

/fps $FPS def
/currentFrameNum $i def
/t currentFrameNum fps div def

/totalFrames $TOTAL_FRAMES def
/totalTime $SECONDS def
/totalProgress currentFrameNum 1 sub totalFrames div def

/frameWidth $FRAME_WIDTH def
/frameHeight $FRAME_HEIGHT def

(frame.ps) run
EOF

done
