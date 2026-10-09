#!/usr/bin/env bash

source "${CONFIG_DIR:-$HOME/.config/sketchybar}/plugins/popup.sh"
STATUS_LABEL=$(lsappinfo info -only StatusLabel "Slack" 2>/dev/null)
LABEL="-"
ICON_COLOR="$SUBTEXT0"
DETAIL="Slack is not running"

if [[ $STATUS_LABEL =~ \"label\"=\"([^\"]*)\" ]]; then
  STATUS="${BASH_REMATCH[1]}"
  case "$STATUS" in
    "") LABEL=""; ICON_COLOR="$GREEN"; DETAIL="Slack: no unread messages" ;;
    "•") LABEL=""; ICON_COLOR="$YELLOW"; DETAIL="Slack: unread messages" ;;
    *)
      if [[ $STATUS =~ ^[0-9]+$ ]]; then
        LABEL="$STATUS"
        [ "${#LABEL}" -le 3 ] || LABEL="99+"
        ICON_COLOR="$RED"
        DETAIL="Slack: $STATUS notifications"
      else
        DETAIL="Slack: status unavailable"
      fi
      ;;
  esac
fi

sketchybar --set "$NAME" label="$LABEL" icon.color="$ICON_COLOR" \
  --set "$NAME.details" label="$DETAIL"
