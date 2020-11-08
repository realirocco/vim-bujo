
"fold mysql or java snippets
function! BJFold()
  let thisline = getline(v:lnum)
  if thisline =~ '```[a-z]'
    return '>1'
  elseif thisline =~ '```'
    return '<1'
  else
    return '='
  endif
endfunction

function! BJFoldText()
    return " ▶︎ " .  getline(v:foldstart) . " [" . v:foldstart . "]  ... [" . v:foldend . "] " . getline(v:foldend)
endfunction

setlocal foldmethod=expr foldexpr=BJFold() foldtext=BJFoldText() 
setlocal fillchars=fold:\ 

