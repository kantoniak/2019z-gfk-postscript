#!/bin/bash

source "constants.sh"

print_usage_and_die() {
    echo >&2 "Usage: $0 <frame-num>"
    exit 1
}

# Test parameter count
if [ "$#" -lt 1 ]; then
    echo >&2 "Error: Missing parameters"
    print_usage_and_die
fi

CURRENT_FRAME=$1

# Render frame
gs -dBATCH -dNOPAUSE -sDEVICE=png16m -dDEVICEWIDTHPOINTS="${FRAME_WIDTH}" -dDEVICEHEIGHTPOINTS="${FRAME_HEIGHT}" -sOutputFile="${PNG_FRAMES_FOLDER}/frame_${CURRENT_FRAME}.png" "${PS_FRAMES_FOLDER}/frame_${CURRENT_FRAME}.ps"
