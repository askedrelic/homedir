au BufNewFile,BufRead *.js setf javascript
au BufNewFile,BufRead Jakefile setf javascript

function! s:DetectJS()
    if getline(1) =~# '^#!.*/bin/env\s\+node\>'
        setfiletype javascript
    endif
endfunction
autocmd BufNewFile,BufRead * call s:DetectJS()
