# TVcontrol
This simple bash-script turns an over hdmi connected tv on that supports cec, when sound is playing and turns it off, if there's no sound for a certain amount of time.

## Hardware-requirements
- A host that supports cec (like the Raspberry Pi)
- A tv that supports cec

## Software-requirements
- cec-utils insatlled on the host
```
sudo apt install cec-utils
```

## Tested on
This script has been tested on a Raspberry Pi 1 Model B running Raspbian 10 "Buster" lite and a Samsung Smart TV.

## Personal setup
Raspberry Pi:
- Running raspotify (which is awesome, check it out at https://github.com/dtcooper/raspotify)
- Put tvcontrol.sh in a cron job of a seperate user ```@reboot ./tvcontrol.sh```
- The tv is always in standby (the source doesn't matter, the script marks the Pi as the active source every time it turns on the tv)
