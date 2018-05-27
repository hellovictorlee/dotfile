" Regex ----------------------{{{
" redefine regex to other formatting
nnoremap / /\v
vnoremap / /\v
" }}}
" Autocomplete parenthese ----------------------{{{
inoremap ' ''<Esc>
inoremap " ""<Esc>
inoremap ( ()<Esc>
inoremap [ []<Esc>
inoremap { {}<Esc>
" }}}
" Constrain arrow ----------------------{{{
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
" }}}
" Disable delete ----------------------{{{
" nnoremap <BS>  <Nop>
" nnoremap <Del> <Nop>
" inoremap <BS>  <Nop>
" inoremap <Del> <Nop>
" vnoremap <BS>  <Nop>
" vnoremap <Del> <Nop>
" }}}
" Bash like keystrokes ----------------------{{{
cnoremap <C-A> <Home>
cnoremap <C-E> <End>
cnoremap <C-P> <Up>
cnoremap <C-N> <Down>
cnoremap <C-F> <Right>
cnoremap <C-B> <Left>
cnoremap <C-D> <Del>
cnoremap <C-H> <BS>
" }}}
" Move between windows ----------------------{{{
map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-H> <C-W>h
map <C-L> <C-W>l
" }}}

" Leader mapping ⬇ ⬇ ⬇ ⬇ ⬇ ⬇ ⬇ ⬇ ⬇ ⬇ ⬇

" Strip trailing whitespace ----------------------{{{
" strip all trailing whitespace in the current file
nnoremap <leader>w :%s/\s\+$//<cr>:let @/=''<CR>
" }}}
" Edit vim file ----------------------{{{
" Edit .vimrc
nnoremap <leader>1 :vsplit $MYVIMRC<CR>
" Edit setting.vim
nnoremap <leader>2 :vsplit $MYVIMSETTING<CR>
" Edit mapping.vim
nnoremap <leader>3 :vsplit $MYVIMMAPPING<CR>
" Edit bundling.vim
nnoremap <leader>4 :vsplit $MYVIMBUNDLING<CR>
" }}}
" Quick way opening file ----------------------{{{
" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
nnoremap <leader>t :tabedit <C-R>=expand("%:p:h")<CR>/
" }}}
" Command cd ----------------------{{{
" Switch CWD to the directory of the open buffer
nnoremap <leader>cd :cd %:p:h<CR>:pwd<CR>
" }}}
" hardmode mapping ----------------------{{{
nnoremap <leader><space> <Esc>:call ToggleHardMode()<CR>
" }}}
" NERDTree ----------------------{{{
map <leader>n :NERDTreeToggle<CR>
" close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" }}}
" Compile ----------------------{{{
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
" mru ----------------------{{{
nnoremap <leader>r :tabe %<CR> :MRU<CR>
" }}}
" Ranger ----------------------{{{
if !exists('g:ranger_map_keys') || g:ranger_map_keys
    nnoremap <leader>f :tabe %<CR> :Ranger<CR>
endif
" }}}
" ctags with CtrlP ----------------------{{{
noremap <leader>. :CtrlPTag<CR>
" }}}
