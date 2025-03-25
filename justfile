# Print all available just commands
help:
    @just --list

# open Qmk Configurator website
edit-layout:
    xdg-open https://config.qmk.fm/#/beekeeb/piantor/LAYOUT_split_3x6_3

copy-layout:
    cp ~/Downloads/beekeeb_piantor_layout_split_3x6_3_mine.json ~/git/qmk_firmware/keyboards/kibo/left/keymaps/sturdy/keymap.json
    cp ~/Downloads/beekeeb_piantor_layout_split_3x6_3_mine.json ~/git/qmk_firmware/keyboards/kibo/right/keymaps/sturdy/keymap.json

# Build and flash left side of keyboard ---- NOTE: the micro should be in bootloader mode, hold BOOTSEL during power up or press Lower+Raise+Z & mount /dev/sda1 (use filemanager)
left:
    qmk flash -kb kibo/left -km sturdy

# Build and flash right side of keyboard ---- NOTE: the micro should be in bootloader mode, hold BOOTSEL during power up or press Lower+Raise+Z & mount /dev/sda1 (use filemanager)
right:
    qmk flash -kb kibo/right -km sturdy

# Generate compile-commands.json for clangd
compile-commands:
    qmk generate-compilation-database -kb kibo/right -km sturdy

clangd:
    @just compile-commands
