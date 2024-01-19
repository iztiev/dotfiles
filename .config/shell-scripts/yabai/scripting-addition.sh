#!/bin/sh

YABAI_PATH=$(which yabai)
YABAI_HASH=$(shasum -a 256 $YABAI_PATH)
USER=$(whoami)

echo "$USER ALL=(root) NOPASSWD: sha256:$YABAI_HASH --load-sa" | sudo EDITOR='tee -a' visudo
