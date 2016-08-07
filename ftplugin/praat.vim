" Vim filetype plugin
" Last Change: May 11, 2016
" Maintainer: Jakub Bortlík <jakub.bortlik@gmail.com>

" Prevent duplicate loading
if exists("b:did_praatftp")
	finish
endif
let b:did_praatftp = 1

" Add matchit.vim support:
let b:match_words='\<if\>:\<then\>:\<elif\>:\<elsif\>:\<elseif\>:\<else\>:
			\\<endif\>,\<for\>:\<endfor\>,\<while\>:\<endwhile\>,\<repeat\>:
			\\<until\>,\<procedure\>:\<endproc\>,\<beginPause\>:\<endPause\>'

" Allow "[d" to be used to find a macro definition:
let &l:define='\\\(procedure\|mathchar\|count\|dimen\|muskip\|skip\|toks\)\='
	\ .	'def\|\\font\|\\\(future\)\=let'

" Comments start with a hash
setlocal commentstring=#%s

" temporary comments that are easy to find (";" in the first column)
" add/remove comment in normal mode (takes [count]):
nnoremap gcp :normal 0i;
nnoremap gco @=':s/^;//e\|nohlsearch'
" add/remove comment in visual mode:
vnoremap gcp 0I;
vnoremap gco :'<,'>s/^;//e\|nohlsearch

" Set 'formatoptions' to break comment lines but not other lines,
" insert the comment leader when hitting <CR> or using "o",
" and remove a comment leader when joining lines.
setlocal fo-=t fo+=croqlj

" Format comments to be up to 80 characters long
if &tw == 0
	setlocal tw=80
endif

" Set the foldmethod
setlocal foldmethod=indent
