# setting

## wifi

run command
```
nmtui
```

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

## Brightness

get the monitor's device name
```
xrandr | grep " connected" | cut -f1 -d " "
xrandr --output LVDS-1 --brightness 0.75
```

## htop

```
sudo apt update && sudo apt upgrade
sudo apt install htop
```

## Neofetch
```
sudo apt-get install neofetch
```

## sftp server

```
sudo apt install openssh-server
sudo apt install ssh
```

create group for sftp user
```
sudo groupadd sftpg
```

create user for the group & set passwd
```
sudo useradd -g sftpg sftpuser
sudo passwd sftpuser
```

create a directory as root directory for sftpuser
```
sudo mkdir -p /data/sftpuser/upload
sudo chown -R root.sftpg  /data/sftpuser
sudo chown -R sftpuser.sftpg /data/sftpuser/upload
```

add lines of code into /etc/ssh/sshd_config
```
Match Group sftpg
    ChrootDirectory /data/%u
    ForceCommand internal-sftp
```

restart the service
```
sudo systemctl restart sshd
```

[reference](https://linuxhandbook.com/sftp-server-setup)

## borgbackup
```
sudo apt install borgbackup
```

### Usage

#### local
```
sudo mkdir /backup
sudo chown victorlee:victorlee /backup
```

initialize backup
```
borg init --encryption=repokey /backup
```

create backup
```
borg create /backup::backupname ~/Documents
```

list all backups
```
borg list /backup
```

list all file in the backup
```
borg list /backup::backupname
```

extract all files including path
```
borg extract /backup::backupname
```

### remote

For remote server
```
sudo mkdir /backup
sudo chown victorlee:victorlee /backup
sudo apt install openssh-server
```

For client
```
borg init --encryption=repokey USER@IP:/backup
borg create USER@IP:/backup::backupname ~/Documents
borg list USER@IP:/backup
```

## f.lux

```
sudo add-apt-repository ppa:nathan-renniewaldock/flux
sudo apt-get update
sudo apt-get install fluxgui
```

## Libreoffice

```
sudo add-apt-repository ppa:libreoffice/ppa
sudo apt-get update
sudo apt-get install libreoffice
```

## LightDM
```
sudo apt-get install lightdm
```

## conky
```
sudo apt-get install conky
```

execute
```
conky
```

## thunderbird
```
sudo apt install thunderbird
```

## gnome-tweaks
```
sudo apt install gnome-tweaks
```
```
gnome-tweaks
```

## Google Chrome
```
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
```

## Google Calendar
https://nuvola.tiliado.eu/app/google_calendar/ubuntu/bionic/
