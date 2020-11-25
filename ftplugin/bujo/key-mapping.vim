" put current timestamp in insert mode
imap <buffer> <c-T> <C-R>=strftime("%H:%M ")<CR>
imap <buffer> <c-D> <C-R>=strftime("%A %e %B ")<CR>


" map complete task on the fly
nmap X ^sx<ESC>

" Search word under cursor
:nnoremap <buffer>  ,s :exe "BjSearchTag '" . expand('<cWORD>') ."'"<CR>
