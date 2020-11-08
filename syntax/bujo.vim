" Vim syntax file
" Language: Bullet journal format
" Maintainer: Rocco Reali
" Latest Revision: 20 ottobre 2020

if exists("b:current_syntax")
  finish
endif

syntax case ignore

syn match bjBullets "^\s*\*\s" contained
syn match bjBullets "^\s*o\s" contained
syn match bjBullets "^\s*x\s" contained
syn match bjBullets "^\s*\~\s" contained
syn match bjBullets "^\s*<\s" contained
syn match bjBullets "^\s*>\s" contained
syn match bjBullets "^\s*=\s" contained
syn match bjBullets "^\s*\-\s" contained
hi def link bjBullets Operator

syn match bjNumberList "^\t*\d*\.\s" contained
hi def link bjNumberList Operator

syn match bjTag "\s@[a-zA-Z0-9]*"
hi def link bjTag Include

syn region bjEmphasis start="`" end="`" contained
hi def link bjEmphasis String

syn region bjSpecs start="\[" end="\]"
hi def link bjSpecs Identifier

syn cluster bjItemElements contains=bjBullets,bjTag,bjEmphasis,bjSpecs,bjNumberList 

syn match bjTaskItem "^\t*[ox\~\<\>\*\=\-]\s.*$" contains=@bjItemElements
hi def link bjTaskItem Special

syn match bjDoneItem "^\t*x\s.*$" contains=@bjItemElements
hi def link bjDoneItem Type

syn match bjCancelledItem "^\t*\~\s.*$" contains=@bjItemElements
hi def link bjCancelledItem Ignore

syn match bjNoteItem "^\t*\-\s.*$" contains=@bjItemElements
hi def link bjNoteItem Normal

syn match bjOrderedListItem "^\t*\d*\.\s.*$" contains=@bjItemElements
hi def link bjOrderedListItem Normal

syn match bjHeading "--.*--"
hi def link bjHeading Comment

hi Ignore ctermfg=22 guifg=#005f00
hi NonText ctermfg=241 guifg=#626262
hi SpecialKey ctermfg=239 guifg=#585858
hi Special gui=bold cterm=bold
hi Comment gui=bold cterm=bold ctermfg=9  guifg=#ff0000 

" Include JAVA highlighting between ```java and ``` tags
syn include @notesJava syntax/java.vim
syn region javaCustom start=+```java+ keepend end=+```+ contains=@notesJava
let b:current_syntax="bujo"

" Include mySQL highlighting between ```sql and ``` tags
unlet b:current_syntax
syn include @notesMySql syntax/mysql.vim
syn region mySqlCustom start=+```sql+ keepend end=+```+ contains=@notesMySql
let b:current_syntax="bujo"

" Include bash highlighting between ```bash and ``` tags
unlet b:current_syntax
syn include @notesBash syntax/bash.vim
syn region bashCustom start=+```bash+ keepend end=+```+ contains=@notesBash
let b:current_syntax="bujo"
