" Vim filetype plugin file
" Language:            Gleam
" Maintainer:          Kirill Morozov <kirill@robotix.pro>
" Previous Maintainer: Trilowy (https://github.com/trilowy)
" Last Change:         2025 Apr 16

if exists('b:did_ftplugin')
  finish
endif
let b:did_ftplugin = 1

" FIXME: doc comments joining behaviour
setlocal comments=s0:/*!,ex:*/,s1:/*,mb:*,ex:*/,:////,:///,://
setlocal commentstring=//\ %s
setlocal formatprg=gleam\ format\ --stdin
setlocal suffixesadd=.gleam
let b:undo_ftplugin = "setlocal com< cms< fp< sua<"

if get(g:, "gleam_recommended_style", 1)
  setlocal expandtab
  setlocal nocindent
  setlocal shiftwidth=2
  setlocal smartindent
  setlocal softtabstop=2
  setlocal tabstop=2
  setlocal textwidth=79
  let b:undo_ftplugin ..= " | setlocal et< nocin< sw< si< sts< ts< tw<"
endif

" vim: sw=2 sts=2 et
