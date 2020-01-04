# i3
## Installation

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
apt-get install libconfuse-dev libyajl-dev libasound2-dev libiw-dev asciidoc libpulse-dev libnl-genl-3-dev
```

### compton

```
sudo apt update
sudo apt install compton
```
compton setup
```
cp compton.conf ~/.config/i3/
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
