#!/usr/bin/env bash
set -ex

FILE=$(ls $TMP_SCRIPTS/wallpaper/1920x1080 |sort -R |tail -1)

cp $TMP_SCRIPTS/wallpaper/1920x1080/$FILE /usr/share/extra/backgrounds/bg_default.png