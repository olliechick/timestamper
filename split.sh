#! /bin/bash

ffmpeg -i "${1:-video.mp4}" -map 0 -c copy -f segment -segment_time ${2:-1800} "${3:-output}_%03d.mp4"