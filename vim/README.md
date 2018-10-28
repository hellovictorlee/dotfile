## Installation
### macOS:
vim installation with Python3
```
brew install python3
brew install vim --with-python3
```

neovim installation with Python3
```
brew install python3
brew install neovim
pip3 install neovim --upgrade
```

## Customization
```
cp -r .vim ~
```
```
cp .vimrc ~
```

### Customization for Neovim
```
mkdir -p ~/.config/nvim
```
```
mv init.vim ~/.config/nvim
```

### environment variables setting
take neovim and zsh as an example:
```
echo 'export EDITOR=/usr/local/bin/nvim' >> ~/.zshrc
```

## Keyboard Setting
### Switch the "Caps Lock" and "Esc"<br>
### macOS:
```
System Preferrences > Keyboard > Modifier Keys
```

### Ubuntu:
[xmodmap](http://manpages.ubuntu.com/manpages/bionic/man1/xmodmap.1.html)

## Preferred Plugin
Based on my personal usage, and experience, I make a simple rating.<br>
NOTE: Some of plugin is amazing but owing to my personal workflow, I didn't give a high rating.<br>

<span style="color: #fab516;">★ ★ ★ </span>[ag.vim](https://github.com/rking/ag.vim)<br>
```
:Ag keyword
```
Search for keyword appearing in all file under current or project directory.
<hr>

<span style="color: #fab516;">★ ★ ★ </span>[ale](https://github.com/w0rp/ale#usage)<br>
```
pip3 install flake8
```
Install one of Python linter.
<hr>

<span style="color: #fab516;">★ ☆ ☆ </span>[asyncrun.vim](https://github.com/skywind3000/asyncrun.vim)<br>
<hr>

<span style="color: #fab516;">★ ★ ★ </span>[codi.vim](https://github.com/metakirby5/codi.vim)<br>
<hr>

<span style="color: #fab516;">★ ★ ★ </span>[ctrlp.vim](https://github.com/kien/ctrlp.vim)<br>
<hr>

<span style="color: #fab516;">★ ☆ ☆ </span>[editorconfig-vim](https://github.com/editorconfig/editorconfig-vim)<br>
<hr>

<span style="color: #fab516;">★ ☆ ☆ </span>[gruvbox](https://github.com/morhetz/gruvbox)<br>
<hr>

<span style="color: #fab516;">★ ☆ ☆ </span>[hardmode](https://github.com/wikitopian/hardmode)<br>
<hr>

<span style="color: #fab516;">★ ☆ ☆ </span>[MatchTagAlways](https://github.com/Valloric/MatchTagAlways.git)<br>
<hr>

<span style="color: #fab516;">★ ☆ ☆ </span>[nerdtree](https://github.com/scrooloose/nerdtree)<br>
<hr>

<span style="color: #fab516;">★ ★ ★ </span>[ranger.vim](https://github.com/francoiscabrol/ranger.vim)<br>
<hr>

<span style="color: #fab516;">★ ☆ ☆ </span>[supertab](https://github.com/ervandew/supertab)<br>
<hr>

<span style="color: #fab516;">★ ☆ ☆ </span>[tabular](https://github.com/godlygeek/tabular)<br>
<hr>

<span style="color: #fab516;">★ ☆ ☆ </span>[tagbar](https://github.com/majutsushi/tagbar)<br>
<hr>

<span style="color: #fab516;">★ ★ ★ </span>[vim-airline](https://github.com/vim-airline/vim-airline)<br>
<hr>

<span style="color: #fab516;">★ ★ ★ </span>[vim-airline-themes](https://github.com/vim-airline/vim-airline-themes)<br>
<hr>

<span style="color: #fab516;">★ ☆ ☆ </span>[vim-coiled-snake](https://github.com/kalekundert/vim-coiled-snake.git)<br>
<hr>

<span style="color: #fab516;">★ ★ ★ </span>[vim-commentary](https://github.com/tpope/vim-commentary)<br>
<hr>

<span style="color: #fab516;">★ ☆ ☆ </span>[vim-css-color](https://github.com/ap/vim-css-color)<br>
<hr>

<span style="color: #fab516;">★ ★ ★ </span>[vim-fugitive](https://github.com/tpope/vim-fugitive)<br>
Useful command:
```
:Gdiff
```
Brings up an interactive vertical split with git-blame output. Press enter on a line to reblame the file as it stood in that commit, or`o` to open that commit in a split.
```
:Gblame
```
Brings up an interactive vertical split with git-blame output. Press enter on a line to reblame the file as it stood in that commit, or`o` to open that commit in a split.
```
:Gbrowse
```
[rhubarb.vim](https://github.com/tpope/vim-rhubarb) extends fugitive.vim to open GitHub URLs.
<hr>

<span style="color: #fab516;">★ ★ ☆ </span>[vim-gitgutter](https://github.com/airblade/vim-gitgutter)<br>
<hr>

<span style="color: #fab516;">★ ☆ ☆ </span>[vim-hardtime](https://github.com/takac/vim-hardtime)<br>
<hr>

<span style="color: #fab516;">★ ☆ ☆ </span>[vim-indent-guides](https://github.com/nathanaelkane/vim-indent-guides)<br>
<hr>

<span style="color: #fab516;">★ ☆ ☆ </span>[vim-indexed-search](https://github.com/henrik/vim-indexed-search)<br>
<hr>

<span style="color: #fab516;">★ ★ ★ </span>[vim-markdown-composer](https://github.com/euclio/vim-markdown-composer)<br>
Before using vim-markdown-composer, we have to install [cargo](https://github.com/rust-lang/cargo).<br>
Go to vim-markdown-composer
```
cd ~/.vim/bundle/vim-markdown-composer
```
Compile the current project
```
cargo build --release
```
NOTE:
Cargo requires the following tools and packages to build:

* `python`
* `curl` (on Unix)
* `cmake`
* OpenSSL headers (only for Unix, this is the `libssl-dev` package on ubuntu)
* `cargo` and `rustc`
<hr>

<span style="color: #fab516 ">★ ☆ ☆ </span>[vim-multiple-cursors](https://github.com/terryma/vim-multiple-cursors)<br>
<hr>

<span style="color: #fab516 ">★ ☆ ☆ </span>[vim-repeat](https://github.com/tpope/vim-repeat)<br>
<hr>

<span style="color: #fab516 ">★ ★ ★ </span>[vim-rhubarb](https://github.com/tpope/vim-rhubarb)<br>
<hr>

<span style="color: #fab516 ">★ ★ ★ </span>[vim-surround](https://github.com/tpope/vim-surround)<br>
<hr>

<span style="color: #fab516 ">★ ★ ★ </span>[vim-system-copy](https://github.com/christoomey/vim-system-copy)<br>
<hr>

<span style="color: #fab516 ">★ ★ ☆ </span>[vim-table-mode](https://github.com/dhruvasagar/vim-table-mode)<br>
<hr>

<span style="color: #fab516 ">★ ★ ☆ </span>[vimwiki](https://github.com/vimwiki/vimwiki.git)<br>
<hr>

<span style="color: #fab516 ">★ ☆ ☆ </span>[vitality](https://github.com/sjl/vitality.vim)<br>

<span style="color: #fab516 ">★ ☆ ☆ </span>[winresizer](https://github.com/simeji/winresizer)<br>
<hr>

<span style="color: #fab516">★ ★ ★ </span>[YouCompleteMe](https://github.com/Valloric/YouCompleteMe)<br>
NOTE: In order to use YME for Python, we need to install [jedi](https://github.com/davidhalter/jedi), an awesome autocompletion/static analysis library for Python.
```
pip install jedi
```
<hr>
