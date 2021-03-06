#! /bin/bash

if [ -n ${10} ]; then BORDER="bordercolor=${10}:borderw=2:"; else BORDER=""; fi

ffmpeg -loop 1 -i "${4:-image.jpg}" -i "${3:-audio.mp3}" -c:v libx264 -tune stillimage -c:a aac -b:a 192k -pix_fmt yuv420p -shortest -vf "drawtext=x=${6:-65}:y=${7:-65}:box=1:fontcolor=${8:-white}:${BORDER}boxcolor=0x00000000: \
    fontsize=40:expansion=strftime: \
    basetime=$(date +%s -d"$1"' '"$2"':'"${9:-00}")000000: \
    text='%-I\\:%M %P  %A %-d %B %Y'" "${5:-output}.mp4"

