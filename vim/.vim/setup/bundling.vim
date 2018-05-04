" solarized8 ----------------------{{{
" https://github.com/lifepillar/vim-solarized8
" colorscheme solarized8_dark_low
" }}}
" gruvbox ----------------------{{{
" https://github.com/morhetz/gruvbox
colorscheme gruvbox
let g:gruvbox_contrast_dark = 'hard'

"force override gruvbox backgrhund color
highlight Normal ctermbg = None
" }}}
" syntastic ----------------------{{{
" https://github.com/vim-syntastic/syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers = ['pep8', 'python']
"let g:syntastic_python_checkers = ['pylint', 'flake8', 'pyflakes', 'python']
" }}}
" vim-airline ----------------------{{{
" https://github.com/vim-airline/vim-airline#smarter-tab-line
let g:airline_theme = 'dark'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
" powerline
" https://github.com/powerline/powerline
set rtp+=$HOME/powerline/powerline/bindings/vim
set laststatus=2 " Always show statusline
set guifont=Go\ Mono\ for\ Powerline
" }}}
" hardmode ----------------------{{{
" https://github.com/wikitopian/hardmode
" autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode()
" }}}
" vim-latex-live-preview ----------------------{{{
"autocmd Filetype tex setl updatetime=1
set updatetime=1
let g:livepreview_previewer = 'open -a Preview'
" }}}
" vim-tmux-focus-events ----------------------{{{
set autoread
" }}}
