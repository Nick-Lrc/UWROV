#!/bin/bash
let camCount="5 * $(ls -1 /dev/video* | wc -l)"

for check in $(seq "$camCount"); do
    if [[ -z $(pidof mjpg_streamer) ]]; then
        echo "No mjpg_streamer process is running."
    else
        kill -9 $(pidof mjpg_streamer) 2> /dev/null
        echo "Stopping mjpg_streamer processes attempted."
    fi
done
