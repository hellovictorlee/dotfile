# setting

## Bluetooth
```
sudo apt install bluez
sudo apt install blueman
```

## Gestures for touchpad

[source](https://devhub.io/repos/bulletmark-libinput-gestures)

pre-request
```
sudo apt install python3 python3-setuptools xdotool python3-gi libinput-tools python-gobject
```

install lininput gestures
```
git clone https://github.com/bulletmark/libinput-gestures.git
cd libinput-gestures
sudo make install
```

install gesture(GUI)
```
git clone https://gitlab.com/cunidev/gestures
cd gestures
sudo python3 setup.py install
```

IMPORTANT: You must be a member of the input group to have permission to read the touchpad device:
```
sudo gpasswd -a $USER input
```

## TimeShift
```
sudo add-apt-repository ppa:teejee2008/ppa
sudo apt-get update
sudo apt-get install timeshift -y 
```
