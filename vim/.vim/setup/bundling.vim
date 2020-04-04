" vim-airline {{{
" https://github.com/vim-airline/vim-airline#smarter-tab-line
" vim-airline-themes
let g:airline_theme = 'dark'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
set guifont=Go\ Mono\ for\ Powerline

" vim-airline displaying the status of AsyncRun
let g:asyncrun_status = ''
let g:airline_section_warning = airline#section#create_right(['%{g:asyncrun_status}'])

" ale airline
let g:airline#extensions#ale#enabled = 1

" gutentags airline
" let g:airline#extensions#gutentags#enabled = 1
" }}}
" hardmode {{{
" https://github.com/wikitopian/hardmode
" autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode()
" }}}
" hardtime {{{
" make hardtime run in every buffer
" let g:hardtime_default_on = 1
" }}}
" table model {{{
" Markdown-compatible tables
let g:table_mode_corner='+'
" let g:table_mode_header_fillchar='='
" }}}
" YouCompleteMe {{{
" YCM will use the first python executable it finds in the PATH to run jedi
" This means that if you are in a virtual environment and you start vim in that directory
" The first python that YCM will find will be the one in the virtual environment
" So, jedi will be able to provide completions for every package you have in the virtual environment
let g:ycm_python_binary_path = 'python'
let g:ycm_filetype_blacklist = {
      \ 'tagbar': 1,
      \ 'notes': 1,
      \ 'markdown': 1,
      \ 'netrw': 1,
      \ 'unite': 1,
      \ 'text': 1,
      \ 'vimwiki': 1,
      \ 'pandoc': 1,
      \ 'infolog': 1,
      \ 'mail': 1
      \}
let g:ycm_filetype_specific_completion_to_disable = {
      \ 'gitcommit': 1
      \}
let g:ycm_key_list_stop_completion = ['<C-y>', '<CR>']
" }}}
" CtrlP {{{
" 'c' - the directory of the current file.
" 'r' - the nearest ancestor that contains one of these directories or files: .git .hg .svn .bzr _darcs
" 'a' - like c, but only if the current working directory outside of CtrlP is not a direct ancestor of the directory of the
let g:ctrlp_working_path_mode = 'ra'
" }}}
" ale {{{
" Declare which linters using on certain programming language
let g:ale_linters = {
\  'python': ['flake8'],
\  'javascript': ['eslint']
\}
" Only run linters named in ale_linters settings.
let g:ale_linters_explicit = 1
" Keep the sign gutter open at all times
let g:ale_sign_column_always = 1
" Error Message, More Detail :help g:ale_echo_msg_format
let g:ale_echo_msg_error_str = 'Error'
let g:ale_echo_msg_warning_str = 'Warning'
let g:ale_echo_msg_format = '[%linter%] [%code%] %s [%severity%]'
" Sign is changable
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'
" auto fix after saving
let g:ale_fixers = {
\  'python': ['yapf'],
\  'javascript': ['prettier', 'eslint']
\}
" auto fix after saving
" let g:ale_fix_on_save = 1
" }}}
" vitality {{{
" functionality: iterm2 tmux vim cursor focus
" vim cursor highlight interact between pane on tmux
" vim highlight disappear when unfocus
let g:vitality_tmux_can_focus = 1

au VimEnter,WinEnter,BufWinEnter,FocusGained,CmdwinEnter * setlocal cursorline
au WinLeave,FocusLost,CmdwinLeave * setlocal nocursorline
" }}}
" fzf {{{
" If installed using Homebrew
set rtp+=/usr/local/opt/fzf
" }}}
" editorconfig-vim {{{
" ensure that this plugin works well with Tim Pope's fugitive
" avoid loading EditorConfig for any remote files over ssh
let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*']
" resolve conflicts of trailing whitespace trimming and buffer autosaving
let g:EditorConfig_disable_rules = ['trim_trailing_whitespace']
" }}}
" vim-indent-guides {{{
" auto start
let g:indent_guides_enable_on_vim_startup = 1

" ignore first indent guides
" let g:indent_guides_start_level=2

" indent guides width size
let g:indent_guides_guide_size=1
" }}}
" gutentags {{{
let g:gutentags_project_root = ['.root', '.svn', '.git', '.project']
let g:gutentags_ctags_tagfile = '.tags'
let s:vim_tags = expand('~/.cache/tags')
let g:gutentags_cache_dir = s:vim_tags
if !isdirectory(s:vim_tags)
	silent! call mkdir(s:vim_tags, 'p')
endif
" }}}
" vim-javascript {{{
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1
augroup javascript_folding
    au!
    au FileType javascript setlocal foldmethod=syntax
augroup END
" }}}
" javascript fold {{{
" syntax highlighting items specify folds
set foldmethod=syntax
" defines 1 col at window left, to indicate folding
set foldcolumn=1
" activate folding by JS syntax
let javaScript_fold=1
" start file with all folds opened
set foldlevelstart=99
" }}}
" colorscheme {{{
" https://github.com/morhetz/gruvbox
colorscheme gruvbox
let g:gruvbox_contrast_dark = 'hard'
"force override gruvbox backgrhund color
highlight Normal ctermbg = None

" monokai for javascript
" autocmd WinEnter,FileType javascript colorscheme molokai
" }}}
" easymotion {{{
map <Leader> <Plug>(easymotion-prefix)
" }}}
" UltiSnips {{{
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
" }}}
" supertab {{{
" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'
" }}}
" vim-live-latex-preview {{{
let g:livepreview_previewer = 'zathura'
" }}}
