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
let g:syntastic_python_checkers = ['python']
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
" hardtime ----------------------{{{
" make hardtime run in every buffer
" let g:hardtime_default_on = 1
" }}}
" mru ----------------------{{{
let MRU_Window_Height = 15
" }}}
" table model ----------------------{{{
" Markdown-compatible tables
let g:table_mode_corner='|'
" }}}
" YouCompleteMe ----------------------{{{
" YCM will use the first python executable it finds in the PATH to run jedi
" This means that if you are in a virtual environment and you start vim in that directory
" The first python that YCM will find will be the one in the virtual environment
" So, jedi will be able to provide completions for every package you have in the virtual environment
let g:ycm_python_binary_path = 'python'
" }}}
" CtrlP ----------------------{{{
" 'c' - the directory of the current file.
" 'r' - the nearest ancestor that contains one of these directories or files: .git .hg .svn .bzr _darcs
" 'a' - like c, but only if the current working directory outside of CtrlP is not a direct ancestor of the directory of the 
let g:ctrlp_working_path_mode = 'ra'
" }}}
" Asyncrun ----------------------{{{
" vim-airline displaying the status of AsyncRun
let g:asyncrun_status = ''
let g:airline_section_error = airline#section#create_right(['%{g:asyncrun_status}'])
" }}}
" vitality ----------------------{{{
" functionality: iterm2 tmux vim cursor focus
" vim cursor highlight interact between pane on tmux
" vim highlight disappear when unfocus
let g:vitality_tmux_can_focus = 1

au VimEnter,WinEnter,BufWinEnter,FocusGained,CmdwinEnter * setlocal cursorline
au WinLeave,FocusLost,CmdwinLeave * setlocal nocursorline
" }}}
