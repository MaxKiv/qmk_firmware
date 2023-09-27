#!/bin/bash

# copies keymap.json from origin to keyboards/kibo/[left,right]/keymaps/sturdy/keymap.json
origin="$HOME/Downloads/"
dest_left="$HOME/qmk_firmware/keyboards/kibo/left/keymaps/sturdy/keymap.json"
dest_right="$HOME/qmk_firmware/keyboards/kibo/right/keymaps/sturdy/keymap.json"
keymap="beekeeb_piantor_layout_split_3x6_3_mine.json"

cp "$origin$keymap" "$dest_right"
mv "$origin$keymap" "$dest_left"
