#!/bin/bash
# Usage: starship-sys.sh cpu|disk
case "$1" in
  cpu)
    ncpu=$(sysctl -n hw.ncpu)
    ps -A -o %cpu= | awk -v n="$ncpu" '{s+=$1} END {printf "%.0f%%", s/n}'
    ;;
  disk)
    # / on macOS is the sealed system volume; real usage lives on the Data volume
    df -h /System/Volumes/Data | awk 'NR==2 {print $5}'
    ;;
esac
