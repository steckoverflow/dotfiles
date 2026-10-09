#!/usr/bin/env bash

source "${CONFIG_DIR:-$HOME/.config/sketchybar}/colors.sh"

# Sourced by widget scripts so hovering never launches a resource sampler.
case "$SENDER" in
  mouse.entered)
    sketchybar --set "$NAME" popup.drawing=on
    exit 0
    ;;
  mouse.exited)
    sketchybar --set "$NAME" popup.drawing=off
    exit 0
    ;;
esac
