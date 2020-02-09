# setting

## urxvt
```
sudo apt-get install rxvt-unicode
```

urxvt for ranger showing image
```
yay -S rxvt-unicode-pixbuf
```

or
```
yay -S rxvt-unicode
```

```
cp .Xresources ~
```

reload
```
xrdb ~/.Xresources
```

[fonts-powerline](https://github.com/powerline/fonts.git)
```
git clone https://github.com/powerline/fonts.git
cd fonts
./install.sh
```

[adobe-fonts/source-code-pro](https://github.com/adobe-fonts/source-code-pro)
move font to ~/.local/share/fonts

add correct TERM avoid incorrect color scheme on vim, tmux, ranger and etc
```
echo "export TERM=\"rxvt-unicode-256color\"" >> ~/.zshrc
```

Disable Ctrl+S freeze
```
echo "stty -ixon" >> ~/.zshrc
```

Changing font size on the fly
```
yay -S urxvt-resize-font-git
```

Check system default fonts
```
fc-match sans-serif
fc-match serif
fc-match monospace
```

list font
```
fc-list -v
```

install Sans-serif
```
sudo pacman -S ttf-opensans
```

Enable colour emoji support on Arch Linux
```
sudo pacman -S noto-fonts-emoji
```

```
mkdir -p ~/.config/fontconfig
cp fonts.conf ~/.config/fontconfig
```

[Intel](https://github.com/rsms/internal)


## wifi

run command
```
nmtui
```

## Bluetooth
Ubuntu
```
sudo apt install bluez
sudo apt install blueman
```

archlinux
```
yay -S bluez
yay -S blueman
```

enable bluetooth service
```
sudo systemctl enable bluetooth.service
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

## nautilus
```
sudo pacman -S nautilus
```

## xfce4-settings-manager
```
sudo pacman -S xfce4-settings
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
borg create /backup::backupname ~/Documents --exclude-from ~/.borgexcludes
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

## GIMP

```
sudo add-apt-repository ppa:otto-kesselgulasch/gimp
sudo apt-get update
sudo apt-get install gimp
```

execute GIMP
```
gimp &
```

## slack
```
sudo snap install slack --classic
```

## X Window System fonts

list x font info
```
xset q
```

add x font path
```
xset fp+ ~/.fonts
```

## mouse

xinput --list --short
```
⎡ Virtual core pointer                    	id=2	[master pointer  (3)]
⎜   ↳ Virtual core XTEST pointer              	id=4	[slave  pointer  (2)]
⎜   ↳ ELAN1200:00 04F3:309C Touchpad          	id=12	[slave  pointer  (2)]
⎣ Virtual core keyboard                   	id=3	[master keyboard (2)]
    ↳ Virtual core XTEST keyboard             	id=5	[slave  keyboard (3)]
    ↳ Power Button                            	id=6	[slave  keyboard (3)]
    ↳ Asus Wireless Radio Control             	id=7	[slave  keyboard (3)]
    ↳ Video Bus                               	id=8	[slave  keyboard (3)]
    ↳ Power Button                            	id=9	[slave  keyboard (3)]
    ↳ Sleep Button                            	id=10	[slave  keyboard (3)]
    ↳ USB2.0 VGA UVC WebCam: USB2.0 V         	id=11	[slave  keyboard (3)]
    ↳ Asus WMI hotkeys                        	id=13	[slave  keyboard (3)]
    ↳ AT Translated Set 2 keyboard            	id=14	[slave  keyboard (3)]
    ↳ E0:EB:40:22:87:9F                       	id=15	[slave  keyboard (3)]
```
And get my touchpad id is 12

xinput --list-props 12
```
Device 'ELAN1200:00 04F3:309C Touchpad':
	Device Enabled (155):	1
	Coordinate Transformation Matrix (157):	1.000000, 0.000000, 0.000000, 0.000000, 1.000000, 0.000000, 0.000000, 0.000000, 1.000000
	libinput Tapping Enabled (290):	1
	libinput Tapping Enabled Default (291):	0
	libinput Tapping Drag Enabled (292):	1
	libinput Tapping Drag Enabled Default (293):	1
	libinput Tapping Drag Lock Enabled (294):	0
	libinput Tapping Drag Lock Enabled Default (295):	0
	libinput Tapping Button Mapping Enabled (296):	1, 0
	libinput Tapping Button Mapping Default (297):	1, 0
	libinput Natural Scrolling Enabled (298):	1
	libinput Natural Scrolling Enabled Default (299):	0
	libinput Disable While Typing Enabled (300):	1
	libinput Disable While Typing Enabled Default (301):	1
	libinput Scroll Methods Available (302):	1, 1, 0
	libinput Scroll Method Enabled (303):	1, 0, 0
	libinput Scroll Method Enabled Default (304):	1, 0, 0
	libinput Click Methods Available (305):	1, 1
	libinput Click Method Enabled (306):	1, 0
	libinput Click Method Enabled Default (307):	1, 0
	libinput Middle Emulation Enabled (308):	0
	libinput Middle Emulation Enabled Default (309):	0
	libinput Accel Speed (310):	1.000000
	libinput Accel Speed Default (311):	0.000000
	libinput Left Handed Enabled (312):	0
	libinput Left Handed Enabled Default (313):	0
	libinput Send Events Modes Available (275):	1, 1
	libinput Send Events Mode Enabled (276):	0, 0
	libinput Send Events Mode Enabled Default (277):	0, 0
	Device Node (278):	"/dev/input/event9"
	Device Product ID (279):	1267, 12444
	libinput Drag Lock Buttons (314):	<no items>
	libinput Horizontal Scroll Enabled (315):	1
```
And then get libinput Accel Spped (*310*)

set touchpad(12) property(310) to 1
```
xinput set-prop 12 310 1
```

put the line to .zshrc
```
echo "xinput set-prop 13 310 1" >> ~/.zshrc
```

#### set brightness
xrandr --output eDP-1 --brightness 0.7


## fonts

https://www.reddit.com/r/archlinux/comments/5r5ep8/make_your_arch_fonts_beautiful_easily/

## aether(login)

```
yay -S lightdm-webkit-theme-aether
yay -S lightdm-webkit2-greeter
```

## alsa-utils
is used to mute and unmute the speakers

```
sudo pacman -S alsa-utils
```

i3 execute the command
```
amixer
```
