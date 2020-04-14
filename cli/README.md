# [awesome-cli-apps](https://github.com/agarrharr/awesome-cli-apps)

## cmatrix

```
git clone https://github.com/abishekvashok/cmatrix.git
autoreconf -i  # skip if using released tarball
./configure
make
sudo make install
```

execute
```
cmatrix
```

## pass
```
sudo apt-get install pass
```

## rfkill

Same as enable airplane mode
```
rfkill block all
```

Same as disable airplane mode
```
rfkill unblock all
```

List status
```
rfkill list
```

## tree
```
sudo pacman -S tree
```

## [wego](https://github.com/schachmat/wego)

```
go get -u github.com/schachmat/wego
```

## mpv

a free, open source, and cross-platform media player
```
yay -S mpv
```

## leetcode cli

install
```
sudo npm install -g leetcode-cli
```

[cookie login](https://github.com/skygragon/leetcode-cli-plugins/blob/master/docs/cookie.chrome.md)
[issue and solution](https://github.com/skygragon/leetcode-cli/issues/153)

login
```
leetcode user -l
```

leetcode config showing
```
leetcode config -a
```

leetcode config setup
```
leetcode config autologin:enable true
leetcode config code:lang python3
```
