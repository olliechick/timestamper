#! /bin/bash

#ffmpeg -i "${1:-video.mp4}" -ss 60 -to 80 -c copy "${2:-output}_%03dsdfjkfjskljkldsf.mp4"

start_time=0

for var in "${@:3}"
do
    end_time="$var"
    echo "$start_time - $end_time"
    ffmpeg -i "${1:-video.mp4}" -ss ${start_time} -to ${end_time} -c copy "${2:-output}_${start_time}.mp4"
    start_time=${end_time}
done