#!/bin/env sh

BASEDIR=$(dirname "$0")

#rofi -theme-str 'window { width: 40%; height:20%;  } inputbar { enabled: false; }' \
rofi -theme ~/.config/rofi/mixer.rasi \
-kb-custom-16 "Ctrl+equal" \
-kb-custom-17 "Alt+m" \
-kb-custom-18 "minus,underscore" \
-kb-custom-19 "equal,plus" \
-show rofi-sink-mixer \
-modi "rofi-sink-mixer:$BASEDIR/rofi-mixer.py --type sink,rofi-source-mixer:$BASEDIR/rofi-mixer.py --type source" "$@"

