#!/usr/bin/env bash

source "${CONFIG_DIR:-$HOME/.config/sketchybar}/plugins/popup.sh"
[ "$SENDER" = front_app_switched ] || exit 0
[ -n "$INFO" ] || exit 0

sketchybar --set "$NAME" label="$INFO" \
  --set "$NAME.details" label="$INFO"
