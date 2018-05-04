nnoremap <leader>g :set operatorfunc=<SID>GrepOperator<CR>g@
vnoremap <leader>g :<C-U>call <SID>GrepOperator(visualmode())<CR>

function! s:GrepOperator(type)
	let saved_unnamed_register = @@

    if a:type ==# 'v'
        execute "normal! `<v`>y"
    elseif a:type ==# 'char'
        execute "normal! `[v`]y"
    else
        return
    endif

	silent execute "grep! -R --exclude-dir='.*\\.git' --exclude='.*\\.swp' " . shellescape(@@) . " ."
    copen

	let @@ = saved_unnamed_register
endfunction
