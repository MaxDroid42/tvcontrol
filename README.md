# TVcontrol
This bash-script turns an over hdmi connected tv on that supports cec, when sound is playing.

## Hardware-requirements
- A host that supports cec (like the Raspberry Pi)
- A tv that supports cec

## Suftware-requirements
- cec-utils insatlled on the host
```
sudo apt install cec-utils
```

## Tested on
This script has been tested on a Raspberry Pi 1 Model B running raspbian 10 "Buster" lite and a Samsung Smart TV.

## Personal setup
Raspberry Pi:
- Running raspotify (which is awesome, check it out at https://github.com/dtcooper/raspotify)
- Put tvcontrol.sh in a crontab of a seperate user ```@reboot ./tvcontrol.sh```
