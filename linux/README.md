# setting

## Bluetooth
```
sudo apt install bluez
sudo apt install blueman
```

## Gestures for touchpad

pre-request
```
sudo apt install python3 python3-setuptools xdotool python3-gi libinput-tools python-gobject
```

install gestures
```
git clone https://github.com/bulletmark/libinput-gestures.git
cd libinput-gestures
sudo make install
```

execution
```
sudo chown victorlee /dev/input/event*
libinput-gestures-setup start
```
