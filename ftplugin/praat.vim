" Vim filetype plugin
" Last Change: May 11, 2016
" Maintainer: Jakub Bortlík <jakub.bortlik@gmail.com>

" Prevent duplicate loading
if exists("b:did_praatftp")
	finish
endif
let b:did_praatftp = 1

" Add matchit.vim support:
let b:match_words='\<if\>:\<then\>:\<elif\>:\<elseif\>:\<else\>:\<endif\>,\<for\>:\<endfor\>,\<while\>:\<endwhile\>,\<repeat\>:\<until\>'

" Comments start with a hash
setlocal commentstring=#%s

" Set 'formatoptions' to break comment lines but not other lines,
" insert the comment leader when hitting <CR> or using "o",
" and remove a comment leader when joining lines.
setlocal fo-=t fo+=croqlj

" Format comments to be up to 78 characters long
if &tw == 0
	setlocal tw=78
endif

" Set the foldmethod
setlocal foldmethod=indent
