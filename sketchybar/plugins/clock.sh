#!/usr/bin/env bash

source "${CONFIG_DIR:-$HOME/.config/sketchybar}/plugins/popup.sh"
sketchybar --set "$NAME" label="$(date '+%H:%M')" \
  --set "$NAME.details" label="$(date '+%A, %d %B %Y | %I:%M %p')"
