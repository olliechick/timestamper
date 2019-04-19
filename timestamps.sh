#! /bin/bash

ffmpeg -loop 1 -i ${3:-image.jpg} -i ${2:-audio.mp3} -c:v libx264 -tune stillimage -c:a aac -b:a 192k -pix_fmt yuv420p -shortest -vf "drawtext=x=65:y=65:box=1:fontcolor=white:boxcolor=0x00000000: \
    fontsize=40:expansion=strftime: \
    basetime=$(date +%s -d"$1"':00')000000: \
    text='%H\\:%M %P  %A %-d %B %Y'" output.mp4

