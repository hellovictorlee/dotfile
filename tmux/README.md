## Installation
### macOS:
```
brew install tmux
```
### Ubuntu:
```
./install_tmux
```

## Customization
```
cp .tmux.conf ~
```

## Preferred Plugin

<span style="color: #fab516;">★ ★ ★ </span>[tpm](https://github.com/tmux-plugins/tpm)<br>
```
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```
### Installing plugins

Install my personal tmux-powerline
```
git clone https://github.com/ShuaiHsunLee/tmux-powerline.git ~/tmux-powerline
```

1. Add new plugin to `~/.tmux.conf` with `set -g @plugin '...'`
2. Press `prefix` + <kbd>I</kbd> (capital i, as in **I**nstall) to fetch the plugin.

<hr>

<span style="color: #fab516;">★ ☆ ☆ </span>[tmux-sensible](https://github.com/tmux-plugins/tpm)<br>
<hr>

<span style="color: #fab516;">★ ★ ★ </span>[tmux-prefix-highlight](https://github.com/tmux-plugins/tmux-prefix-highlight)<br>
<hr>

<span style="color: #fab516;">★ ★ ★ </span>[tmux-resurrect](https://github.com/tmux-plugins/tmux-resurrect)<br>
<hr>

<span style="color: #fab516;">★ ☆ ☆ </span>[tmux-continuum](https://github.com/tmux-plugins/tmux-continuum)<br>
<hr>


### tmuxinator
```
gem install tmuxinator
```

If installing tmuxinator via Ruby's gem, you'll need to run the following commands to put the completion files where they'll be loaded by your shell

bash
```
wget https://raw.githubusercontent.com/tmuxinator/tmuxinator/master/completion/tmuxinator.bash -O /etc/bash_completion.d/tmuxinator.bash
```

zsh
```
wget https://raw.githubusercontent.com/tmuxinator/tmuxinator/master/completion/tmuxinator.zsh -O /usr/local/share/zsh/site-functions/_tmuxinator
```

fish
```
wget https://raw.githubusercontent.com/tmuxinator/tmuxinator/master/completion/tmuxinator.fish ~/.config/fish/completions/
```
