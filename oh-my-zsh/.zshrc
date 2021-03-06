# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/victor.lee/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="mytheme"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  # git
  colored-man-pages
  zsh-autosuggestions
  zsh-completions
  zsh-syntax-highlighting
  fzf
)

autoload -U compinit && compinit
source $ZSH/oh-my-zsh.sh

# User configuration

export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# execute tmux automatically
# [ ! $TERM =~ screen ] && exec tmux

# alias
[ -f ~/.aliasrc ] && source ~/.aliasrc



######################################## PATH ########################################
[ -d ~/bin ] && PATH=$PATH:$HOME/bin
which ruby >/dev/null && which gem >/dev/null && PATH="$PATH:$(ruby -r rubygems -e 'puts Gem.user_dir')/bin"
# laravel path
PATH="$HOME/.composer/vendor/bin:$PATH"
export PATH
######################################## PATH ########################################



######################################## ranger ########################################
# Automatically change the directory in bash after closing ranger
function ranger-cd {
    tempfile="$(mktemp -t tmp.XXXXXX)"
    ranger --choosedir="$tempfile" "${@:-$(pwd)}"
    test -f "$tempfile" &&
    [ "$(cat -- "$tempfile")" != "$(echo -n `pwd`)" ] && cd -- "$(cat "$tempfile")"
    rm -f -- "$tempfile"
}
######################################## ranger ########################################



######################################## hardware ########################################
TouchpadId="$(xinput --list --short | grep Touchpad | sed 's/^.*id=\([0-9]*\).*$/\1/p' | head -1)"
if [ $TouchpadId ]; then
  TouchpadEnabled=$(xinput --list-props $TouchpadId | grep 'Tapping Enabled ([0-9]*)' | sed 's/^.*Enabled (\([0-9]*\)).*$/\1/p' | head -1)
  TouchpadNaturalScrolling=$(xinput --list-props $TouchpadId | grep 'Natural Scrolling Enabled ([0-9]*)' | sed 's/^.*Enabled (\([0-9]*\)).*$/\1/p' | head -1)
  TouchpadSpeed=$(xinput --list-props $TouchpadId | grep 'Accel Speed ([0-9]*)' | sed 's/^.*Speed (\([0-9]*\)).*$/\1/p' | head -1)
  xinput set-prop $TouchpadId $TouchpadEnabled 1
  xinput set-prop $TouchpadId $TouchpadNaturalScrolling 1
  xinput set-prop $TouchpadId $TouchpadSpeed 0.55
fi
MouseId="$(xinput --list --short | grep "Wireless Mouse" | sed 's/^.*id=\([0-9]*\).*$/\1/p' | head -1)"
if [ $MouseId ]; then
  MouseNaturalScrolling=$(xinput --list-props $MouseId | grep 'Natural Scrolling Enabled ([0-9]*)' | sed 's/^.*Enabled (\([0-9]*\)).*$/\1/p' | head -1)
  xinput set-prop $MouseId $MouseNaturalScrolling 1
fi
######################################## hardware ########################################



####################################### URXVT #########################################
export TERM="rxvt-unicode-256color"
# disable Ctrl+s freeze for urxvt
stty -ixon
####################################### URXVT #########################################



######################################## fzf ########################################
# Setting fd as the default source for fzf
export FZF_DEFAULT_COMMAND='fd --type f'
# To apply the command to CTRL-T as well
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border'

unalias gco 2> /dev/null
function gco() {
  git checkout $(git branch | fzf)
}
unalias gcot 2> /dev/null
function gcot() {
  git checkout --track $(git branch -r | fzf)
}

# https://github.com/junegunn/fzf/wiki/examples#git
# fcd - cd to selected directory
unalias fcd 2> /dev/null
function fcd() {
  local dir
  dir=$(find ${1:-.} -path '*/\.*' -prune -o -type d -print 2> /dev/null | fzf +m) &&
  cd "$dir"
}
# fman - quickly display a man page using fzf
unalias fman 2> /dev/null
function fman() {
  man -k . | fzf --prompt='Man> ' | awk '{print $1}' | xargs -r man
}
# cdb - cd to shell bookmarks
# reference: https://dmitryfrank.com/articles/shell_shortcuts
unalias cdb 2> /dev/null
function cdb() {
  local dest_dir=$([ -f ~/.bookmarks ] && cat ~/.bookmarks | sed 's/#.*//g' | sed '/^\s*$/d' | fzf )
  [[ $dest_dir != '' ]] && cd "$dest_dir"
  ranger-cd
}
######################################## fzf ########################################



######################################## bindkey ########################################
# bindkey '^ ' autosuggest-accept
bindkey '^k' history-beginning-search-backward
bindkey '^j' history-beginning-search-forward
bindkey -s '^O' 'ranger-cd^M'
bindkey -s '^V' 'nvim $(fzf)^M'
bindkey -s '^ ' 'cdb^M'
######################################## bindkey ########################################



######################################## S3 backup ########################################
export BORG_REPO="/home/backup"
export BORG_S3_BACKUP_BUCKET="borg-victor/backup"
export BORG_S3_BACKUP_AWS_PROFILE="default"
export BORG_EXCLUDES="${HOME}/.borgexcludes"
######################################## S3 backup ########################################



######################################## vim shortcut ########################################
export MYVIMRC=$HOME/.vimrc
export MYVIMSETTING=$HOME/.vim/setup/setting.vim
export MYVIMBUNDLING=$HOME/.vim/setup/bundling.vim
export MYVIMMAPPING=$HOME/.vim/setup/mapping.vim
export MYNODESCRIPT=$HOME/github/javascript-improve-workflow/src/test.js
export MYPYTHONSCRIPT=$HOME/github/javascript-improve-workflow/src/test.py
export MYPYTHONSCRIPT=$HOME/github/algo/test.py
export MYZSHRC=$HOME/.zshrc
export MYPSHELLBOOKMARKS=$HOME/.bookmarks
export MYWEBBOOKMARKS=$HOME/.config/rofi-surfraw/searchengines
######################################## vim shortcut ########################################



export GOPATH=~
export BROWSER=$(which firefox)
export EDITOR=/usr/bin/nvim
export PS2="%{$fg_bold[yellow]%}>> %{$reset_color%}"
neofetch

export TERM=xterm-256color
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
