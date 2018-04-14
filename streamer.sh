#!/bin/bash
allCams=$(ls -1 /dev/video*)
mjpgStreamerPath="/usr/local/bin/mjpg_streamer"
inputPath="/usr/local/lib/input_uvc.so"
outputPath="/usr/local/lib/output_http.so"
frameRate=24
resolution="1024x576"
port=8080

for cam in $allCams; do
    let port="$port + 1"
    $mjpgStreamerPath -i "$inputPath -d $cam -n -f $frameRate -r $resolution" -o "$outputPath -p $port" &
done

# /usr/local/bin/mjpg_streamer -i "/usr/local/lib/input_uvc.so -d /dev/video0 -n -f 10 -r 1024x576" -o "/usr/local/lib/output_http.so -p 8081 -w /usr/local/www" &
