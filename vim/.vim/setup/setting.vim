" Find File {{{
" Search down into subfolders
" Provides tab-completion for all file-related tasks
set path+=**
" Display all matching files when we tab complete
set wildmenu
" }}}
" Set mouse {{{
set mouse=a
" }}}
" Set utf8 {{{
set encoding=utf8
" }}}
" leader mapping {{{
" like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","
let maplocalleader = "\\"
" }}}
" No annoying sound on errors {{{
set noerrorbells
set novisualbell
set t_vb=
set tm=500
" }}}
" A buffer becomes hidden when abandoned {{{
set hid
" }}}
" Indentation {{{
" !!!!!!! no need anymore because of editorconfig.vim !!!!!!!
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=2
" when indenting with '>', use 4 spaces width
set shiftwidth=2
" On pressing tab, insert 4 spaces
set expandtab
" }}}
" Search rule settings {{{
" lower case search is with ignore case
" with upper case search is with case sensitive
" Ignore case when searching
set ignorecase
" When searching try to be smart about cases
set smartcase
" Makes search act like search in modern browsers
set incsearch
" }}}
" Basic settings {{{
" test other people's .vimrc 'vim -u test_vimrc'
" To avoid my .vimrc effect other people's
set nocompatible
" redraw only when we need to.
set lazyredraw
" A better way than 'syntax on'
if !exists("g:syntax_on")
    syntax enable
endif

if $TERM == "xterm-256color"
  set t_Co=256
endif

set background=dark

set number
set showcmd
set noeb vb t_vb=
set cursorline
" }}}
" Relative line numbers {{{
set relativenumber
" }}}
" Textwidth {{{
" Python 79 char in a line
function! s:SetColorColumn()
    setlocal colorcolumn=80
endfunction

augroup colorcolumn
    autocmd!
    " Run only with Python file
    autocmd BufEnter *.py highlight ColorColumn ctermbg=white guibg=white
    autocmd BufEnter *.py call s:SetColorColumn()
augroup end
" }}}
" new window position {{{
" make the new window appear below the current window.
set splitbelow
" make the new window appear on the right of current window.
set splitright
" }}}
" Ctrl-n {{{
" remove the i flag from the 'cpt' option - remove it from the global value
setglobal complete-=i
" }}}
" Javascript {{{
augroup filetype javascript syntax=javascript
" }}}
" rofi syntax hightlight {{{
au BufNewFile,BufRead /*.rasi setf css
" }}}
