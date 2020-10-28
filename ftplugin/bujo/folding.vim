
"fold mysql or java snippets
function! BJFold()
  let thisline = getline(v:lnum)
  if thisline =~ '```mysql' || thisline =~ '```java'
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

set foldmethod=expr foldexpr=BJFold() foldtext=BJFoldText() 
set fillchars=fold:\ 

