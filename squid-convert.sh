#!/bin/bash -eu
set -o pipefail

#    Converts all files in the execution directory and its sub directories
#    44.1kHz 16bit left channel mono.
#    Script is nondestructive and saves the re-encoded audio to a new directory,
#    preserving the directory structure.

# Channel variable defines which channel is used for the mono input.
# FL = left
# RL = right
CHANNEL=FL

rsync -av --include='*/' --exclude='*' . ./squid
find . -path ./squid -prune -false -o -name "*.wav" -exec bash -c 'ffmpeg -i "{}" -af "pan=mono|c0='"${CHANNEL}"'" -acodec pcm_s16le -ar 44100 "./squid/${0/.wav}_sq.wav"' {} \;

