#!/bin/bash
echo "Starting"
/usr/bin/fluidsynth -f /home/pi/fsconf.txt -is -a alsa --gain 2 /usr/share/sounds/sf2/FluidR3_GM.sf2 &
echo "Fluidsynth started"
while true; do if [[ $(/usr/bin/aconnect -o ) = *FLUID* ]]; then break; fi; sleep 2; done
/usr/bin/aconnect 20:0 128:0
echo "Connected"
