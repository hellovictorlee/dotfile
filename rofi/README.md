# Rofi

## Installation

### Web Search
[web search](https://github.com/pdonadeo/rofi-web-search)
```
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

[theme collections](https://github.com/davatorium/rofi-themes)
```
git clone https://github.com/davatorium/rofi-themes.git
cd rofi-themes
./install.sh
```

### rofi-find

[rofi find GitHub](https://github.com/davatorium/rofi-scripts/tree/master/rofi-finder)
```
cp finder.sh ~/.config/rofi
```

put command in ~/.config/i3/config
```
bindsym --release $mod+z exec --no-startup-id rofi -lines 10 -padding 0 -show find -theme DarkBlue -modi find:~/.config/rofi/finder.sh -i -p "Find: "
```
