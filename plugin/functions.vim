function! functions#SearchTag(tag)
    if a:tag=~"@\S*"
        exec("vimgrep ".a:tag."\j *")
        cw
    else
        echom "invalid tag ".a:tag
    endif
endfunction
