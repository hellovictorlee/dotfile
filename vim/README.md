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

## Keyboard Setting
### Switch the "Caps Lock" and "Esc"<br>
### macOS:
```
System Preferrences > Keyboard > Modifier Keys
```

### Ubuntu:
```
setxkbmap -option caps:swapescape
```

## Preferred Plugin
Based on my personal usage, and experience, I make a simple rating.<br>
NOTE: Some of plugin is amazing but owing to my workflow and recently installed, I didn't give a high rating<br>

<span style="color: #fab516;">★ ☆ ☆ </span>[asyncrun.vim](https://github.com/skywind3000/asyncrun.vim)<br>
<hr>

<span style="color: #fab516;">★ ★ ★ </span>[ctrlp.vim](https://github.com/kien/ctrlp.vim)<br>
<hr>

<span style="color: #fab516;">★ ☆ ☆ </span>[gruvbox](https://github.com/morhetz/gruvbox)<br>
<hr>

<span style="color: #fab516;">★ ☆ ☆ </span>[hardmode](https://github.com/wikitopian/hardmode)<br>
<hr>

<span style="color: #fab516;">★ ★ ☆ </span>[mru](https://github.com/yegappan/mru)<br>
<hr>

<span style="color: #fab516;">★ ☆ ☆ </span>[nerdtree](https://github.com/scrooloose/nerdtree)<br>
<hr>

<span style="color: #fab516;">★ ★ ★ </span>[ranger.vim](https://github.com/francoiscabrol/ranger.vim)<br>
<hr>

<span style="color: #fab516;">★ ☆ ☆ </span>[supertab](https://github.com/ervandew/supertab)<br>
<hr>

<span style="color: #fab516;">★ ★ ★ </span>[syntastic](https://github.com/vim-syntastic/syntastic)<br>
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
<hr>

<span style="color: #fab516;">★ ★ ☆ </span>[vim-gitgutter](https://github.com/airblade/vim-gitgutter)<br>
<hr>

<span style="color: #fab516;">★ ☆ ☆ </span>[vim-hardtime](https://github.com/takac/vim-hardtime)<br>
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

<span style="color: #fab516 ">★ ★ ★ </span>[vim-surround](https://github.com/tpope/vim-surround)<br>
<hr>

<span style="color: #fab516 ">★ ★ ★ </span>[vim-system-copy](https://github.com/christoomey/vim-system-copy)<br>
<hr>

<span style="color: #fab516 ">★ ★ ☆ </span>[vim-table-mode](https://github.com/dhruvasagar/vim-table-mode)<br>
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
