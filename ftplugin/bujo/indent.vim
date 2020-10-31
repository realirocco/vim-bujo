
setlocal autoindent noexpandtab tabstop=2 shiftwidth=2
set listchars=tab:\│\ 
set list
if has("patch-7.4.354")
    " Indents word-wrapped lines as much as the 'parent' line
    setlocal breakindent
    " Ensures word-wrap does not split words
    setlocal formatoptions=l
    setlocal lbr
    " Add .. before the wrapped text
    setlocal showbreak=..
endif
