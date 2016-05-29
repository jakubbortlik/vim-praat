" Vim syntax file
" Filename: praat.vim
" Language: Praat - doing phonetics by computer (www.praat.org)
" Based on: praat.vim by Pablo Arantes - parantes(at)fastmail(dot)fm
" Extended by: Jakub Bortlik https://github.com/jakubbortlik/
" Last Changed: May 11 2016
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if exists("b:current_syntax")
  finish
endif

syntax clear
syntax case match

" Arguments to form (Manual, section 6.1)

syntax keyword praatType boolean button choice comment integer
syntax keyword praatType natural option optionmenu positive
syntax keyword praattype real sentence word text

" Loops and conditionals

syntax keyword praatConditional if else elsif elif endif fi then
syntax keyword praatRepeat for from to endfor repeat until while endwhile

" Statements

syntax keyword praatStatement call clearinfo echo execute pause nowarn 
syntax keyword praatStatement plus plusObject minus minusObject printline
syntax keyword praatStatement printtab select selectObject yes all
syntax keyword praatStatement filedelete fileappend removeObject
"""" syntax keyword praatStatement goto label
"alternative: syntax keyword praatKeyword select plus minus

" Compound statements (like Read from file...)

syntax match praatDottedStat "[A-Z]\{1\}[A-Za-z \-]*\.\{3\}"
syntax match praatCompStat "\W*\*s[A-Z]\{1\}[A-Za-z \-]*$"

" Environments

syntax keyword praatDefine editor endeditor procedure endproc
"alternatively syntax keyword praatKeyword editor endeditor procedure endproc
"alternatively syntax keyword praatKeyword form endform beginPause endPause

syntax keyword praatDefine form endform beginPause pauseScript endPause
syntax keyword praatDefine pause system system_nocheck
"alternative: syntax keyword praatKeyword pause system system_nocheck
syntax keyword praatPrecondit include

" Mathematical Functions (Praat Manual, Formulas, section 4)

syntax keyword praatFunction abs arccos arcosh arcsin arcsinh arctan
syntax keyword praatFunction arctan2 arctanh barkToHertz binomialP
syntax keyword praatFunction ceiling chiSquareP chiSquareQ cos cosh
syntax keyword praatFunction differenceLimensToPhon erb erbToHertz
syntax keyword praatFunction erf erfc exp fisherP fisherQ floor
syntax keyword praatFunction gaussP gaussQ hertzToBark hertzToErb
syntax keyword praatFunction hertzToMel hertzToSemitones imax imin
syntax keyword praatFunction invBinomialP invBinomialQ invChiSquareQ
syntax keyword praatFunction invFisherQ invGaussQ invStudentQ ln
syntax keyword praatFunction lnGamma log10 log2 max melToHertz min
syntax keyword praatFunction phonToDifferenceLimens randomGauss
syntax keyword praatFunction randomInteger randomPoisson randomUniform
syntax keyword praatFunction round semitonesToHertz sigmoid sin sinh
syntax keyword praatFunction sort sqrt stundentP studentQ tan tanh nSelected

" Constants (Praat Manual, Formulas, section 3)

syntax keyword praatConstant pi e undefined

" String Functions (Praat Manual, Formulas, section 5)

syntax keyword praatStrFunc left$ right$ mid$ 
syntax keyword praatStrFunc fixed$ date$ tab$ 
syntax keyword praatStrFunc string$ number
syntax keyword praatStrFunc extractWord$ extractNumber newline$ 
syntax keyword praatStrFunc backslashTrigraphsToUnicode$
syntax keyword praatStrFunc unicodeTrigraphsToBackslash$
syntax keyword praatStrFunc extractLine$ percent$ 
syntax keyword praatStrSpec index length rindex startsWith
syntax keyword praatStrSpec index_regex rindex_regex replace$ replace_regex$
syntax keyword praatStrSpec endsWith extractNumber

" Attributes of objects (Praat Manual, Formulas, section 7)

syntax keyword praatAttribute xmin xmax ncol nrow nx dx ymin ymax ny dy

" Types of objects (Praat Manual, Types of objects section)

syntax keyword praatObject ArtWord BarkFilter CC Cepstrum Cochleagram
syntax keyword praatObject DurationTier Excitation Formant FormantTier
syntax keyword praatObject FormantFilter Harmonicity Intensity 
syntax keyword praatObject IntensityTier LFCC LPC LongSound Ltas MFCC
syntax keyword praatObject Manipulation Matrix MelFilter ParamCurve
syntax keyword praatObject Pitch PitchTier PointProcess Polygon Sequence
syntax keyword praatObject Sequence Sound Speaker Spectrogram Spectrum
syntax keyword praatObject SpellingChecker Strings TableOfReal TextGrid
syntax keyword praatObject TextTier Wavelet WordList Table

syntax keyword praatObject demo demoKey$ demoClickedIn demoWaitForInput
syntax keyword praatObject demoCommandKeyPressed demoShiftKeyPressed
syntax keyword praatObject demoOptionKeyPressed buttonClicked$
syntax keyword praatObject demoWindowTitle demoShow

" Todo
syntax keyword praatTodo TODO

" Tags and Calls
"syntax keyword praatTag
syntax match praatDefine "[\n\t]\?label\s"
syntax match praatTag "[\n\t]\?goto\s"
syntax match praatTag "@\a\+:\?"

" ... at broken lines
" @
" chooseReadFile$
" chooseWriteFile$
" Read Table from
" View Close Remove

"syntax keyword praatCommand View Close Remove Edit Set Insert Randomize Append
syntax match praatCommand "\(Save as text file\|Save as\)"
syntax match praatCommand "\(View & Edit\|Close\|Remove\n\)"
syntax match praatCommand "\(Set numeric value\|Set string value\)"
syntax match praatCommand "\(Read Table from tab-separated file\)"
syntax match praatCommand "\(Create Table with column names\)"
syntax match praatCommand "\(Create Strings as file list\)"
syntax match praatCommand "\(Get label of interval\|Get starting point\)"
syntax match praatCommand "\(Get end point\|Extract part\|Search column\)"
syntax match praatCommand "\(Get number of strings\|Get number of rows\)"
syntax match praatCommand "\(Get number of intervals\|Get number of tiers\)"
syntax match praatCommand "\(Get tier name\|Is interval tier\)"
syntax match praatCommand "\(Get string\)"
syntax match praatCommand "\(Read from file\|Open long sound file\)"
syntax match praatCommand "\(chooseDirectory$\|Open long sound file\)"
syntax match praatCommand "\(Save as tab-separated file\|Write to text file\)"
syntax match praatCommand "\(Save as comma-separated file\)"
syntax match praatCommand "\(fileReadable\|selected\|numberOfSelected\)"
syntax match praatCommand "\(Insert row\|Insert column\)"
syntax match praatCommand "\(Append row\|Append column\)" 
syntax match praatCommand "\(Remove row\|Remove column\)"
syntax match praatCommand "\(writeInfoLine\|appendInfoLine\)" 
syntax match praatCommand "\(Get value\|Get column index\)" 
syntax match praatCommand "\(Randomize\)"

" String variables
" syntax match praatStrVar "\l\w*\$" contains=praatStrFunc

" String Assignment
syntax region praatString start=+"+ skip=+\\+  end=+"+
syntax region praatString start=+'+ skip=+\\+  end=+'+

" Delimiters

syntax match praatDelim "[{}()\\]"
syntax match praatDelim "[][]"

" Operators (Praat Manual, Formulas section 2)

" syntax keyword praatOperator div mod not
"syntax match praatOperator "\(<>\|[<>!-=]=\|[<>+\-*^%/]\)"
syntax match praatOperator "\([=<>+\-*^%/!]\+\)"
syntax keyword praatOperator not and or

" Numbers

syntax match praatNumber "[-+]\?\d\+"
syntax match praatNumber "[-+]\?\d*\.\d\+"

" Comments
syntax match praatComment "#.*$"
"syntax match praatComment "!.*$"
syntax match praatComment ";.*$"

" Define the default highlighting
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have
"  highlighting yet

if version >= 508 || !exists("did_praat_syn_inits")
	if version < 508
		let did_praat_syn_inits = 1
		command -nargs=+ HiLink hi link <args>
	else
		command -nargs=+ HiLink hi def <args>
	endif


highlight link praatAttribute Statement
highlight link praatCommand Underlined
highlight link praatComment Comment
highlight link praatCompStat Statement
highlight link praatConditional Conditional
highlight link praatConstant Constant
highlight link praatDelim Delimiter
highlight link praatDottedStat Statement
highlight link praatDefine Define 
highlight link praatFloat Float
highlight link praatFunction Function
highlight link praatStrFunc Function
highlight link praatStrSpec Function
highlight link praatKeyword Keyword
highlight link praatRepeat Repeat
highlight link praatStatement Statement
highlight link praatObject Type
highlight link praatPreCondit PreCondit
highlight link praatString String
highlight link praatStrVar Identifier

highlight link praatNumber Number
highlight link praatOperator Operator
highlight link praatType Type
highlight link praatTag Tag
highlight link praatTodo Todo

	delcommand HiLink
endif

let b:current_syntax = "praat"
