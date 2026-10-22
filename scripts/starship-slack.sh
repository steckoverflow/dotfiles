#!/bin/bash

raw="$(lsappinfo info -only StatusLabel Slack 2>/dev/null || true)"

print_status() {
  local rgb="$1"
  shift
  printf '\033[38;2;%sm%s\033[39m' "$rgb" "$*"
}

if [[ "$raw" =~ \"label\"=\"([^\"]*)\" ]]; then
  label="${BASH_REMATCH[1]}"

  case "$label" in
    "") print_status '166;227;161' '󰒱' ;;       # No unread messages
    "•") print_status '249;226;175' '󰒱 •' ;;    # Unread, no numeric count
    *)
      if [[ "$label" =~ ^[0-9]+$ ]]; then
        if (( ${#label} > 2 )); then label="99+"; fi
        print_status '243;139;168' "󰒱 $label"
      else
        print_status '108;112;134' '󰒱 ?'       # Badge format not recognized
      fi
      ;;
  esac
else
  print_status '108;112;134' '󰒱 ?'             # Slack status unavailable
fi
