" Regex {{{
" redefine regex to other formatting
nnoremap / /\v
vnoremap / /\v
" }}}
" Autocomplete parenthese {{{
inoremap ' ''<Esc>
inoremap " ""<Esc>
inoremap ( ()<Esc>
inoremap [ []<Esc>
inoremap { {}<Esc>
" }}}
" Disable key {{{
" Disable arrow
nnoremap <Down>  <Nop>
nnoremap <Left>  <Nop>
nnoremap <Right> <Nop>
nnoremap <Up>    <Nop>
inoremap <Down>  <Nop>
inoremap <Left>  <Nop>
inoremap <Right> <Nop>
inoremap <Up>    <Nop>
vnoremap <Down>  <Nop>
vnoremap <Left>  <Nop>
vnoremap <Right> <Nop>
vnoremap <Up>    <Nop>
cnoremap <Down>  <Nop>
cnoremap <Left>  <Nop>
cnoremap <Right> <Nop>
cnoremap <Up>    <Nop>
" Disable delete
nnoremap <BS>  <Nop>
nnoremap <Del> <Nop>
inoremap <BS>  <Nop>
inoremap <Del> <Nop>
vnoremap <BS>  <Nop>
vnoremap <Del> <Nop>
cnoremap <BS>  <Nop>
cnoremap <Del> <Nop>
" Disable enter
inoremap <Enter> <Nop>
" }}}
" Bash like keystrokes {{{
cnoremap <C-a> <Home>
cnoremap <C-e> <End>
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>
cnoremap <C-f> <Right>
cnoremap <C-b> <Left>
cnoremap <C-d> <Del>
cnoremap <C-h> <BS>
" }}}
" Move between windows {{{
tnoremap <C-w>h <C-\><C-n><C-w>h
tnoremap <C-w>j <C-\><C-n><C-w>j
tnoremap <C-w>k <C-\><C-n><C-w>k
tnoremap <C-w>l <C-\><C-n><C-w>l
inoremap <C-W>h <C-\><C-n><C-w>h
inoremap <C-W>j <C-\><C-n><C-w>j
inoremap <C-W>k <C-\><C-n><C-w>k
inoremap <C-W>l <C-\><C-n><C-w>l
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
" }}}
" Move vertically by visual line {{{
nnoremap j gj
nnoremap k gk
" }}}
" Save {{{
nnoremap <C-s> :update<CR>
vnoremap <C-s> <C-c>:update<CR>
inoremap <C-s> <C-o>:update<CR>
" }}}
" Action in insert mode {{{
" Del
inoremap <C-d> <ESC>ls
" Move start, end of line
inoremap <C-a> <ESC>I
inoremap <C-e> <ESC>A
" Move forward and backward
inoremap <C-f> <ESC>la
inoremap <C-b> <ESC>i

inoremap <M-f> <ESC>lwi
inoremap <M-b> <ESC>lbi

if has("mac") || has("macunix")
    inoremap <D-f> <M-f>
    inoremap <D-b> <M-b>
    cnoremap <D-f> <M-f>
    cnoremap <D-b> <M-b>
endif
" }}}
" Move a line {{{
" Move a line of text using ALT+[jk] or Command+[jk] on mac
nnoremap <M-j> mz:m+<cr>`z
nnoremap <M-k> mz:m-2<cr>`z
vnoremap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vnoremap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z

if has("mac") || has("macunix")
    nnoremap <D-j> <M-j>
    nnoremap <D-k> <M-k>
    vnoremap <D-j> <M-j>
    vnoremap <D-k> <M-k>
endif
" }}}
" Terminal mode shortcut {{{ tnoremap <Esc> <C-\><C-n>
command! -nargs=* T split | terminal <args>
command! -nargs=* VT vsplit | terminal <args>
command! -nargs=* TT tabnew | terminal <args>
" }}}

" Leader mapping ⬇ ⬇ ⬇ ⬇ ⬇ ⬇ ⬇ ⬇ ⬇ ⬇ ⬇

" Edit vim file {{{
" Edit .vimrc
nnoremap <leader>1 :tabedit $MYVIMRC<CR>
" Edit setting.vim
nnoremap <leader>2 :tabedit $MYVIMSETTING<CR>
" Edit mapping.vim
nnoremap <leader>3 :tabedit $MYVIMMAPPING<CR>
" Edit bundling.vim
nnoremap <leader>4 :tabedit $MYVIMBUNDLING<CR>
" }}}
" Strip trailing whitespace {{{
" strip all trailing whitespace in the current file
nnoremap <leader>w :%s/\s\+$//<cr>:let @/=''<CR>
" }}}
" Command cd {{{
" Switch CWD to the directory of the open buffer
nnoremap <leader>cd :cd %:p:h<CR>:pwd<CR>
" }}}
" hardmode mapping {{{
nnoremap <leader><space> <Esc>:call ToggleHardMode()<CR>
" }}}
" NERDTree {{{
map <leader>n :NERDTreeToggle<CR>
" close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" }}}
" Compile {{{
nnoremap <leader>c :call <SID>compile_and_run()<CR>

augroup SPACEVIM_ASYNCRUN
    autocmd!
    " Automatically open the quickfix window
    autocmd User AsyncRunStart call asyncrun#quickfix_toggle(15, 1)
augroup END

function! s:compile_and_run()
    exec 'w'
    if &filetype == 'c'
        exec "AsyncRun! gcc % -o %<; time ./%<"
    elseif &filetype == 'cpp'
       exec "AsyncRun! g++ -std=c++11 % -o %<; time ./%<"
    elseif &filetype == 'java'
       exec "AsyncRun! javac %; time java %<"
    elseif &filetype == 'sh'
       exec "AsyncRun! time bash %"
    elseif &filetype == 'python'
       exec "AsyncRun! time python %"
    endif
endfunction
" }}}
" CtrlPMRU {{{
nnoremap <M-p> :CtrlPMRU<CR>
if has("mac") || has("macunix")
    nnoremap <D-p> <M-p>
endif
" }}}
" Ranger {{{
if !exists('g:ranger_map_keys') || g:ranger_map_keys
    nnoremap <leader>r :tabe %<CR> :Ranger<CR>
endif
" }}}
" ctags {{{
" ctags with CtrlP
noremap <leader>. :CtrlPTag<CR>
" ctags with Tagbar
nnoremap <silent> <leader>b :TagbarToggle<CR>
" }}}
" Tabularize {{{
nnoremap <leader>t= :Tabularize /=<CR>
vnoremap <leader>t= :Tabularize /=<CR>
nnoremap <leader>t: :Tabularize /:\zs<CR>
vnoremap <leader>t: :Tabularize /:\zs<CR>
" }}}
" Toggle paste mode {{{
map <leader>pp :setlocal paste!<CR>
" }}}
