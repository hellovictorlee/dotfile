## Installation
### macOS:
```
brew install git
```
### Ubuntu:
```
sudo apt-get -y git
```
### Arch Linux:
```
sudo pacman -S git
```

## Customization
```
cp .gitconfig ~
```
```
cp .gitignore_global ~
```
```
cp -r .gitTemplate ~
```

*IMPORTANT*

*Editor can't only set `vim`, must be set full path like `/usr/local/bin/nvim`*

*Set editor `vim` will cause editor stuck when editing gitcommit*
```
git config --global core.editor "$(which nvim)"
```

In gitconfig, I need to fill the following variable: name, email, excludesfile<br>
excludesfile = ~/.gitignore_global<br>
```
EX: excludesfile = /Users/victorxxxxxxxxxxxxxxx/.gitignore_global
```
