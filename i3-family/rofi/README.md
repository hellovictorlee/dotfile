# Rofi

## Installation

### rofi(old)
```
sudo apt install rofi
```

### Web Search
[web search](https://github.com/pdonadeo/rofi-web-search)
```
mkdir -p ~/.config/rofi
cp rofi-web-search.py ~/.config/rofi
```

put command in ~/.config/i3/config
```
bindsym --release $mod+x exec --no-startup-id rofi -lines 10 -padding 0 -show search -theme DarkBlue -modi search:~/.config/rofi/rofi-web-search.py -i -p "Search: "
```

### themes
[rofi theme wiki](https://github.com/davatorium/rofi/wiki/themes)
```
mkdir -p ~/.config/rofi
rofi -dump-config > ~/.config/rofi/config.rasi
```

download [rofi-theme](https://github.com/ShuaiHsunLee/rofi-themes.git) Fork from [theme collections](https://github.com/davatorium/rofi-themes)
```
git clone https://github.com/ShuaiHsunLee/rofi-themes.git
cd rofi-themes
./install.sh
```

### surfraw
```
sudo apt-get install -y surfraw
```

### rofi-script
[rofi-script](https://github.com/davatorium/rofi-scripts)

```
cp finder.sh ~/.config/rofi
```

put command in ~/.config/i3/config
```
bindsym --release $mod+z exec --no-startup-id rofi -lines 10 -padding 0 -show find -theme DarkBlue -modi find:~/.config/rofi/finder.sh -i -p "Find: "
```

#### workspace switch
```
cp i3_switch_workspace.sh ~/.config/rofi
```

#### rofi-surfraw
```
cp rofi-surfraw.sh ~/.config/rofi
mkdir -p ~/.config/rofi-surfraw
cp searchengines ~/.config/rofi-surfraw
```

setup surfraw browser
```
cp .surfraw.conf ~
```

#### rofi-calc
```
yay -S rofi-calc
```

#### rofi-bluetooth
```
yay -S bluez-utils
```

## networkmanager-dmenu

```
git clone https://github.com/hellovictorlee/networkmanager-dmenu.git
cd networkmanager-dmenu
mkdir -p ~/.config/networkmanager-dmenu
cp config.ini ~/.config/networkmanager-dmenu
cp networkmanager_dmenu ~/bin
```
