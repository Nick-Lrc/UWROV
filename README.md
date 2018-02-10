# UWROV
Underwater Remote Operated Vehicle Documents
------------------------------------------------------------------------------------------------------------------------------------------
Feb.09.2018.Fri
Streaming with MJPG-Streamer in MJPEG (replace the YUYV) format succeeded.

Solution from:
https://www.raspberrypi.org/forums/viewtopic.php?f=28&t=109352&p=751735#p751735

Execution script address on the raspberry pi:
/usr/local/bin/streamer.sh

Problem identified:
MJPG-Streamer require a new patch after the kernel update.

Next goal:
Mount on two cameras.

Additional Note:
MJPG-Streamer keeps running after "Ctrl + C" is pressed. 
May need to change the flag in the script "streamer.sh".
Use "pkill mjpg_streamer" to kill the process can be an option.
