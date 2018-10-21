## Installation
### macOS:
```
brew install ranger
```
### Ubuntu:
```
sudo apt-get update
sudo apt-get -y install ranger caca-utils highlight atool w3m poppler-utils mediainfo
```
reference: [source](https://www.digitalocean.com/community/tutorials/installing-and-using-ranger-a-terminal-file-manager-on-a-ubuntu-vps)

## Customization
```
mkdir -p ~/.config/ranger
```

```
git clone https://github.com/ranger/ranger.git ~/Desktop
cp ~/Desktop/ranger/doc/config/colorschemes ~/.config/ranger
cp ~/Desktop/ranger/doc/config/commands.py ~/.config/ranger
cp ~/Desktop/ranger/doc/config/scope.sh ~/.config/ranger
rm -rf ~/Desktop/ranger
```

```
cp rifle.conf ~/.config/ranger
cp rc.conf ~/.config/ranger
```

## Usage
Show hidden file

```
Ctrl + h
```
