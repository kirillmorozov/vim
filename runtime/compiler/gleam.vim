" Vim compiler file
" Language:    Gleam
" Maintainer:  Kirill Morozov <kirill@robotix.pro>
" Based On:    https://github.com/gleam-lang/gleam.vim
" Last Change: 2025-04-16

" Check we've not run already
if exists('current_compiler')
  finish
endif
let current_compiler = "gleam"

CompilerSet makeprg=gleam\ $*

" Example error message:
"
" error: Unknown variable
"    ┌─ /home/michael/root/projects/tutorials/gleam/try/code/src/main.gleam:19:18
"    │
" 19 │   Ok(tuple(name, spot))
"    │                  ^^^^ did you mean `sport`?
"
" The name `spot` is not in scope here.
CompilerSet errorformat=%Eerror:\ %m                  " use 'error:' to indicate the start of a new error
CompilerSet errorformat+=%C\ %#┌─%#\ %f:%l:%c\ %#-%#  " pull out the file, line & column (matches optional spaces & dashes at the end in case they come back.)
CompilerSet errorformat+=%C                           " allow empty lines within an error
CompilerSet errorformat+=%C%.%#│%.%#                  " ignore any line with a vertial formatting pipe in it
CompilerSet errorformat+=%Z%m                         " assume any other line contributes to the error message

" vim: sw=2 sts=2 et
