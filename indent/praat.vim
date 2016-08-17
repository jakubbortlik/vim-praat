" Vim indent file
" Language:    Praat script
"              Based on vim.vim by Bram Moolenaar
" Maintainer:  Jakub Bortlík <jakub.bortlik@gmail.com>
" URL:         https://github.com/jakubbobrtlik/vim-praat
" Last Change: 2016 Aug 17
" Filenames:   *.praat
" License:     VIM License

" Only load this indent file when no other was loaded.
if exists("b:did_indent")
  finish
endif
let b:did_indent = 1

setlocal indentexpr=GetPraatIndent()
setlocal indentkeys+==end,=elsif,=elif,=else
setlocal indentkeys+==endif,=endfor,=endwhile,=endproc,=endPause,=endform
" setlocal indentkeys+==procedure,=beginPause

let b:undo_indent = "setl indentkeys< indentexpr<"

" Only define the function once.
if exists("*GetPraatIndent")
  finish
endif
let s:keepcpo= &cpo
set cpo&vim

function GetPraatIndent()
  let ignorecase_save = &ignorecase
  try
    let &ignorecase = 0
    return GetPraatIndentIntern()
  finally
    let &ignorecase = ignorecase_save
  endtry
endfunc

function GetPraatIndentIntern()
  " Find a non-blank line above the current line.
  let lnum = prevnonblank(v:lnum - 1)

  " Get the current line
  let cur_text = getline(v:lnum)

  " At the start of the file use zero indent.
  if lnum == 0
    return 0
  endif
  let prev_text = getline(lnum)

  " Add a 'shiftwidth' after 'if', 'elsif', 'elif', 'else', 'for', 'while',
  " 'procedure', 'beginPause' and 'form'.
  let ind = indent(lnum)
  let i = match(prev_text, '^\s*\(if\|els\?\(if\|e\)\|for\|while\|procedure\|beginPause\|form\)\>')
  if i >= 0
	let ind += shiftwidth()
  endif

  " Subtract a 'shiftwidth' on a 'el[s]if', 'else', 'endif', 'endwhile',
  " 'endfor', 'endproc', 'endform', 'clicked = endPause'.
  if cur_text =~ '^\s*\(end\(if\|while\|for\|proc\|form\)\|clicked = endPause\|els\?\(if\|e\)\)'
    let ind = ind - shiftwidth()
  endif

  return ind
endfunction

let &cpo = s:keepcpo
unlet s:keepcpo

" vim:sw=2
