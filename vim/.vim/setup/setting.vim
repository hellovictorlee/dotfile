" clipboard ----------------------{{{
set clipboard=unnamed
" }}}
" Find File ----------------------{{{
" Search down into subfolders
" Provides tab-completion for all file-related tasks
set path+=**

" Display all matching files when we tab complete
set wildmenu
" }}}
" Set utf8 ----------------------{{{
set encoding=utf8
" }}}
" leader mapping ----------------------{{{
" like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","
let maplocalleader = "\\"
" }}}
" No annoying sound on errors ----------------------{{{
set noerrorbells
set novisualbell
set t_vb=
set tm=500
" }}}
" A buffer becomes hidden when abandoned ----------------------{{{
set hid
" }}}
" Indentation ----------------------{{{
set ai "Auto indent
""set si "Smart indent
set wrap "Wrap lines
" insert space characters whenever the tab key is pressedf
set expandtab
" insert 4 spaces for a tab
set tabstop=4
" change the number of space characters inserted for indentation
set shiftwidth=4
" }}}
" Search rule settings ----------------------{{{
" lower case search is with ignore case
" with upper case search is with case sensitive
" Ignore case when searching
set ignorecase
" When searching try to be smart about cases
set smartcase
" Makes search act like search in modern browsers
set incsearch
" }}}
" Basic settings ----------------------{{{
" test other people's .vimrc 'vim -u test_vimrc'
" To avoid my .vimrc effect other people's
set nocompatible

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
" Relative line numbers ----------------------{{{
set relativenumber
" }}}
" Filetype settings ----------------------{{{
" augroup with autocmd! to prevent Vim from adding duplicate autocommands
augroup filetype_python
	" comment
	autocmd FileType python nnoremap <buffer> <localleader>c I#<Space><Esc>
	" uncomment
	autocmd FileType python nnoremap <buffer> <localleader>u ^2x
	" if
	autocmd FileType python :iabbrev <buffer> iff if :<Left>
augroup END


augroup filetype_java
	autocmd!
	" comment
	autocmd FileType java nnoremap <buffer> <localleader>c I//<Space><Esc>
	" uncomment
	autocmd FileType java nnoremap <buffer> <localleader>u ^3x
	" if
	autocmd FileType java :iabbrev <buffer> iff if ()<Left>
augroup END


augroup filetype_javascript
	" comment
	autocmd FileType javascript nnoremap <buffer> <localleader>c I//<Space><Esc>
	" uncomment
	autocmd FileType javascript nnoremap <buffer> <localleader>u ^3x
	" if
	autocmd FileType javascript :iabbrev <buffer> iff if ()<Left>
augroup END
" }}}
" Textwidth setting ----------------------{{{
" This will highlight all characters past 79 columns
""augroup vimrc_autocmds
""  autocmd BufEnter * highlight OverLength ctermbg=darkgrey guibg=#592929
""  autocmd BufEnter * match OverLength /\%80v.*/
""augroup END
" }}}
