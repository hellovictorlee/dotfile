" Vimscript folding ----------------------{{{
augroup filetype_vim
autocmd!
autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}
" Automated loading plugin by pathogen ----------------------{{{
execute pathogen#infect()
" }}}
" Load customized settings ----------------------{{{
source ~/.vim/setup/setting.vim
source ~/.vim/setup/mapping.vim
source ~/.vim/setup/bundling.vim
" }}}
