# i3
## Installation

setup i3, compton, brightness
```
cp -r i3 ~/.config
```

### wallpaper
install fed for wallpaper
```
sudo apt-get install feh
```

### Font-Awesome
go to the link to download
```
https://github.com/FortAwesome/Font-Awesome/releases
```
```
unzip Font-Awesome-5.12.0.zip
mkdir ~/.fonts
cp ./Font-Awesome-5.12.0/webfonts/*.ttf ~/.fonts
```

fonts cheatsheet
```
https://fontawesome.com/cheatsheet/free/solid
```

### FiraCode

```
sudo apt install fonts-firacode
```

### nerd-fonts

[nerd-fonts](https://github.com/ryanoasis/nerd-fonts.git)
```
git clone --depth=1 https://github.com/ryanoasis/nerd-fonts.git
cd nerd-fonts
./install.sh
```

### i3-gap
[i3-gap GitHub](https://github.com/Airblader/i3)

For Ubuntu
```
./i3-gaps.sh
```

### i3lock
```
sudo apt-get install i3lock
```

### i3blocks
```
sudo apt-get install i3blocks
```

collections of i3blocks scripts
```
git clone https://github.com/vivien/i3blocks-contrib ~/.config/i3blocks
```

bar detail setting
```
cp i3blocks.conf ~/.config/i3blocks
```

### i3status
[i3status](https://github.com/i3/i3status)
```
sudo apt-get install libconfuse-dev libyajl-dev libasound2-dev libiw-dev asciidoc libpulse-dev libnl-genl-3-dev
```

### i3lock-fancy
```
sudo apt install i3lock-fancy
```

### compton

```
sudo apt update
sudo apt install compton
```

## setup touchpad and mouse natural scrolling

copy
```
40-libinput.conf
```
content to
```
/usr/share/X11/xorg.conf.d/40-libinput.conf
```

## Dzen
Dzen is a general purpose messaging, notification and menuing program for X11. 

```
git clone https://github.com/robm/dzen.git
cd dzen
sudo make clean install
```

## integrated with python script

i3 extention implement by python
```
sudo apt install python-pip
pip install i3-py
```

## openbox
is used to logout
```
yay -S openbox
```
