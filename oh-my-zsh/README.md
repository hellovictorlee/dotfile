## Installation
curl:
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```
wget:
```
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
```

## Customization for My Theme
```
mytheme.zsh-theme -> ~/.oh-my-zsh/themes
```

## Customization for Plugins
### Step 1. Download plugins
```
cd ~/.oh-my-zsh/custom/plugins
```

```
git clone package
```

```
ex: git clone https://github.com/zsh-users/zsh-autosuggestions.git
```

### Step 2. Add plugins into .zshrc
```
plugins=(
  git
  zsh-autosuggestions
  zsh-completions
  zsh-syntax-highlighting
  colored-man-pages
)
```

## Plugins
<span style="color: #fab516;">★ ★ ★ </span>[zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)<br>
<span style="color: #fab516;">★ ★ ★ </span>[zsh-completions](https://github.com/zsh-users/zsh-completions)<br>
<span style="color: #fab516;">★ ★ ★ </span>[zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)<br>

## fzf
my personal bookmarks
```
cp .bookmarks ~
```
