#!/usr/bin/env bash

source "${CONFIG_DIR:-$HOME/.config/sketchybar}/plugins/popup.sh"
USAGE=$(df -P "$HOME" | awk 'NR == 2 { print $5 }')
[ -n "$USAGE" ] || exit 0
sketchybar --set "$NAME" label="$USAGE" \
  --set "$NAME.details" label="Home filesystem: $USAGE used"
