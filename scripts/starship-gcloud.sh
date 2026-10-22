#!/bin/bash
# Prints "<account> (<project>)" for the active gcloud config.
# Own account is replaced with a person icon.
ME="thomas.steck@ingka.ikea.com"

dir="${CLOUDSDK_CONFIG:-$HOME/.config/gcloud}"
name="${CLOUDSDK_ACTIVE_CONFIG_NAME:-$(cat "$dir/active_config" 2>/dev/null)}"
cfg="$dir/configurations/config_${name:-default}"
[ -f "$cfg" ] || exit 0

read -r account project < <(awk -F' *= *' '
  $1=="account"{a=$2} $1=="project"{p=$2}
  END{print a, p}' "$cfg")
project="${CLOUDSDK_CORE_PROJECT:-$project}"

[ "$account" = "$ME" ] && account=""
printf '%s' "$account"
[ -n "$project" ] && printf ' (%s)' "$project"
