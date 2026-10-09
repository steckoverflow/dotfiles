#!/usr/bin/env bash

source "${CONFIG_DIR:-$HOME/.config/sketchybar}/plugins/popup.sh"
accent="$LAVENDER"
case "$1" in
    1) accent="$GREEN" ;;
    2) accent="$BLUE" ;;
    3) accent="$MAUVE" ;;
    4) accent="$YELLOW" ;;
    5) accent="$PEACH" ;;
    6) accent="$TEAL" ;;
    7) accent="$LAVENDER" ;;
    8) accent="$RED" ;;
    9) accent="$PINK" ;;
esac
FOCUSED_WORKSPACE="${FOCUSED_WORKSPACE:-$(aerospace list-workspaces --focused)}"
[ -n "$FOCUSED_WORKSPACE" ] || exit 0

if [ "$1" = "$FOCUSED_WORKSPACE" ]; then
    sketchybar --set "$NAME" icon.color="$accent" label.color="$accent" \
        background.color="${accent/0xff/0x22}" background.border_color="${accent/0xff/0x88}" background.border_width=1
else
    sketchybar --set "$NAME" icon.color="${accent/0xff/0xcc}" label.color="${accent/0xff/0xcc}" \
        background.color="$MANTLE" background.border_color="$SURFACE0" background.border_width=1
fi
