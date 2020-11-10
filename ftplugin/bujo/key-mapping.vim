" Underline and overline the current line with dashes in normal mode
nnoremap <c-h> yypkP<c-v>$r-2j.

" put current timestamp in insert mode
imap <c-T> <C-R>=strftime("[%H:%M] ")<CR>
imap <c-D> <C-R>=strftime("[%Y-%m-%d] ")<CR>


" map complete task on the fly
nmap X ^sx<ESC>

" Search word under cursor
"nnoremap S :vimgrep \@<cword> *<CR>:cw<CR>
nnoremap S :exec "vimgrep '@".expand('<cword>')."' *"<CR>:cw<CR>

