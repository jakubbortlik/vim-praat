" Vim syntax file
" Filename: praat.vim
" Language: Praat - doing phonetics by computer (www.praat.org)
" Based on: praat.vim by Pablo Arantes - parantes(at)fastmail(dot)fm
" Extended by: Jakub Bortlik https://github.com/jakubbortlik/
" Last Changed: 2016 Aug 18
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

syntax keyword praatConditional if else elsif endif
syntax keyword praatRepeat for from to endfor repeat until while endwhile

" Statements

syntax keyword praatStatement call clearinfo echo execute nowarn 
syntax keyword praatStatement printtab yes all
syntax keyword praatStatement filedelete fileappend 
"""" syntax keyword praatStatement goto label

" Compound statements (like Read from file...)

" syntax match praatDottedStat "[A-Z]\{1\}[A-Za-z \-]*\.\{3\}"
" syntax match praatCompStat "\W*\*s[A-Z]\{1\}[A-Za-z \-]*$"

" Environments

syntax keyword praatDefine editor endeditor procedure endproc
syntax keyword praatDefine form endform beginPause endPause
syntax keyword praatDefine pauseScript exitScript
syntax keyword praatDefine pause system system_nocheck
syntax keyword praatDefine writeInfoLine appendInfoLine
syntax keyword praatDefine select selectObject removeObject
syntax keyword praatDefine plus plusObject minus minusObject
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
syntax keyword praatStrSpec index length rindex 
syntax keyword praatStrSpec index_regex rindex_regex replace$ replace_regex$
syntax keyword praatStrSpec startsWith endsWith
syntax keyword praatStrSpec selected selected$ numberOfSelected
syntax keyword praatStrSpec fileReadable createDirectory deleteFile appendFile
syntax keyword praatStrSpec writeFileLine appendFileLine
syntax keyword praatStrSpec runSystem runSystem_nocheck
syntax keyword praatStrSpec stopwatch

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
syntax match praatDefine "\(_\)\@<![\n\t]\?label\s"
syntax match praatTag "[\n\t]\?goto\s"
syntax match praatTag "@\(_\|\a\)\+:\?"

" ... at broken lines
" @
" chooseReadFile$
" chooseWriteFile$
" Read Table from
" View Close Remove

" MAIN MENU: New -
syntax match praatCommand "\(Record mono sound\(:\)\@=\)"
syntax match praatCommand "\(Record stereo sound\(:\)\@=\)"
syntax match praatCommand "\(Create Table with column names\(:\)\@=\)"
syntax match praatCommand "\(Create Strings as file list\(:\)\@=\)"
syntax match praatCommand "\(Create Strings as directory list\(:\)\@=\)"
" MAIN MENU: Open -
syntax match praatCommand "\(Read Table from tab-separated file\(:\)\@=\)"
syntax match praatCommand "\(Read from file\(:\)\@=\)"
syntax match praatCommand "\(Open long sound file\(:\)\@=\)"
syntax match praatCommand "\(chooseDirectory$\)"
" MAIN MENU: Save -
syntax match praatCommand "\(Save as text file\(:\)\@=\)"
syntax match praatCommand "\(Save as binary file\(:\)\@=\)"
syntax match praatCommand "\(Save as WAV file\(:\)\@=\)"
syntax match praatCommand "\(Save as AIFF file\(:\)\@=\)"
syntax match praatCommand "\(Append to existing sound file\(:\)\@=\)"
syntax match praatCommand "\(Save as tab-separated file\(:\)\@=\)"
syntax match praatCommand "\(Write to text file\(:\)\@=\)"
syntax match praatCommand "\(Save as comma-separated file\(:\)\@=\)"
" MAIN MENU: general -
syntax match praatCommand "\(Rename\(:\)\@=\|Copy\(:\)\@=\)"
syntax match praatCommand "\(Inspect\(\n\|\s\+[;#]\)\@=\)"
syntax match praatCommand "\(Info\(\n\|\s\+[;#]\)\@=\)"
syntax match praatCommand "\(Remove\(\n\|\s\+[;#]\)\@=\)"
syntax match praatCommand "\(New\(\n\|\s\+[;#]\)\@=\|Close\(\n\|\s\+[;#]\)\@=\)"

" EDITOR COMMANDS: TextGrid -
syntax match praatCommand "\(Preferences\(:\)\@=\)"
syntax match praatCommand "\(Draw visible TextGrid\(:\)\@=\)"
syntax match praatCommand "\(Extract selected TextGrid (preserve times)\(:\)\@=\)"
syntax match praatCommand "\(Extract selected TextGrid (time from 0)\(:\)\@=\)"
syntax match praatCommand "\(Save TextGrid as text file:\)"
syntax match praatCommand "\(Editor info\(\n\|\s\+[;#]\)\@=\)"
syntax match praatCommand "\(TextGrid info\(\n\|\s\+[;#]\)\@=\)"
" EDITOR COMMANDS: Sound -
syntax match praatCommand "\(Draw visible sound\(:\)\@=\)"

" SOUND COMMANDS:
syntax match praatCommand "\(View & Edit\(\n\|\s\+[;#]\)\@=\|Play\(\n\|\s\+[;#]\)\@=\)"
syntax match praatCommand "\(asynchronous Play\)"
syntax match praatCommand "\(Draw\(:\)\@=\|Draw where\(:\)\@=\)"
syntax match praatCommand "\(Paint where\(:\)\@=\)"
" sound commands: Query -
syntax match praatCommand "\(Get start time\(\n\|\s\+[;#]\)\@=\|Get end time\(\n\|\s\+[;#]\)\@=\)"
syntax match praatCommand "\(Get total duration\(\n\|\s\+[;#]\)\@=\|Get number of channels\(\n\|\s\+[;#]\)\@=\)"
syntax match praatCommand "\(Get number of samples\(\n\|\s\+[;#]\)\@=\|Get sampling period\(\n\|\s\+[;#]\)\@=\)"
syntax match praatCommand "\(Get sampling frequency\(\n\|\s\+[;#]\)\@=\)"
syntax match praatCommand "\(Get time from sample number\(:\)\@=\)"
syntax match praatCommand "\(Get sample number from time\(:\)\@=\)"
syntax match praatCommand "\(Get value at time\(:\)\@=\)"
syntax match praatCommand "\(Get value at sample number\(:\)\@=\)"
syntax match praatCommand "\(Get minimum\(:\)\@=\|Get time of minimum\(:\)\@=\)"
syntax match praatCommand "\(Get maximum\(:\)\@=\|Get time of maximum\(:\)\@=\)"
syntax match praatCommand "\(Get absolute extremum\(:\)\@=\)"
syntax match praatCommand "\(Get neares zero crossing\(:\)\@=\)"
syntax match praatCommand "\(Get mean\(:\)\@=\|Get root-mean-square\(:\)\@=\)"
syntax match praatCommand "\(Get standard deviation\(:\)\@=\)"
syntax match praatCommand "\(Get energy\(:\)\@=\|Get power\(:\)\@=\)"
syntax match praatCommand "\(Get energy in air\(\n\|\s\+[;#]\)\@=\)"
syntax match praatCommand "\(Get power in air\(\n\|\s\+[;#]\)\@=\)"
syntax match praatCommand "\(Get intensity (dB)\(\n\|\s\+[;#]\)\@=\)"
" sound commands: Modify -
syntax match praatCommand "\(Shift times by\(:\)\@=\|Shift times to\(:\)\@=\)"
syntax match praatCommand "\(Scale times by\(:\)\@=\|Scale times to\(:\)\@=\)"
syntax match praatCommand "\(Reverse\(\n\|\s\+[;#]\)\@=\|Formula\(:\)\@=\)"
syntax match praatCommand "\(Formula (part)\(:\)\@=\|Add\(:\)\@=\)"
syntax match praatCommand "\(Subtract mean\(\n\|\s\+[;#]\)\@=\)"
syntax match praatCommand "\(Multiply\(:\)\@=\|Multiply by window\(:\)\@=\)"
syntax match praatCommand "\(Scale peak\(:\)\@=\|Scale intensity\(:\)\@=\)"
syntax match praatCommand "\(Set value at sample number\(:\)\@=\)"
syntax match praatCommand "\(Set part to zero\(:\)\@=\)"
syntax match praatCommand "\(Override sampling frequency\(:\)\@=\)"
syntax match praatCommand "\(Filter with one formant (in-line)\(:\)\@=\)"
syntax match praatCommand "\(Pre-emphasize (in-line)\(:\)\@=\)"
syntax match praatCommand "\(De-emphasize (in-line)\(:\)\@=\)"
" sound commands: Annotate -
syntax match praatCommand "\(Annotation tutorial\(\n\|\s\+[;#]\)\@=\)"
syntax match praatCommand "\(To TextGrid\(:\)\@=\)"
syntax match praatCommand "\(To TextGrid (silences)\(:\)\@=\)"
" sound commands: Analyse periodicity -
syntax match praatCommand "\(To Pitch\(:\)\@=\|To Pitch (ac)\(:\)\@=\)"
syntax match praatCommand "\(To Pitch (cc)\(:\)\@=\|To Pitch (SPINET)\(:\)\@=\)"
syntax match praatCommand "\(To Pitch (shs)\(:\)\@=\)"
syntax match praatCommand "\(To PoinProcess (periodic, cc)\(:\)\@=\)"
syntax match praatCommand "\(To PoinProcess (periodic, peaks)\(:\)\@=\)"
syntax match praatCommand "\(To PoinProcess (extrema)\(:\)\@=\)"
syntax match praatCommand "\(To PoinProcess (zeroes)\(:\)\@=\)"
syntax match praatCommand "\(To Harmonicity (cc)\(:\)\@=\)"
syntax match praatCommand "\(To Harmonicity (ac)\(:\)\@=\)"
syntax match praatCommand "\(To Harmonicity (gne)\(:\)\@=\)"
syntax match praatCommand "\(To PowerCepstrogram\(:\)\@=\)"
syntax match praatCommand "\(Autocorrelate\(:\)\@=\)"
" sound commands: Analyse spectrum -
syntax match praatCommand "\(To Spectrum\(:\)\@=\|To Ltas\(:\)\@=\)"
syntax match praatCommand "\(To Ltas (pitch-corrected\(:\)\@=\)"
syntax match praatCommand "\(To Spectrogram\(:\)\@=\|To Cochleagram\(:\)\@=\)"
syntax match praatCommand "\(To Spectrogram (pitch-dependent)\(:\)\@=\)"
syntax match praatCommand "\(To Spectrogram (pitch-dependent)\(:\)\@=\)"
syntax match praatCommand "\(To BarkSpectrogram\(:\)\@=\)"
syntax match praatCommand "\(To MelSpectrogram\(:\)\@=\)"
syntax match praatCommand "\(To Formant (burg)\(:\)\@=\)"
syntax match praatCommand "\(To Formant (keep all)\(:\)\@=\)"
syntax match praatCommand "\(To Formant (sl)\(:\)\@=\)"
syntax match praatCommand "\(To Formant (robust)\(:\)\@=\)"
syntax match praatCommand "\(To LPC (autocorrelation)\(:\)\@=\)"
syntax match praatCommand "\(To LPC (covariance)\(:\)\@=\)"
syntax match praatCommand "\(To LPC (burg)\(:\)\@=\|To LPC (marple)\(:\)\@=\)"
syntax match praatCommand "\(To MFCC\(:\)\@=\)"
" sound commands: To Intensity:
syntax match praatCommand "\(To Intensity\(:\)\@=\)"
" sound commands: Manipulate -
syntax match praatCommand "\(To Manipulation\(:\)\@=\)"
syntax match praatCommand "\(To KlattGrid (simple)\(:\)\@=\)"
" sound commands: Convert -
syntax match praatCommand "\(Convert to mono\|Convert to stereo\)"
syntax match praatCommand "\(Extract all channels\)"
syntax match praatCommand "\(Extract one channel\(:\)\@=\)"
syntax match praatCommand "\(Extract part\(:\)\@=\)"
syntax match praatCommand "\(Extract part for overlap\(:\)\@=\)"
syntax match praatCommand "\(Resample\(:\)\@=\)"
syntax match praatCommand "\(To Sound (white channels)\(:\)\@=\)"
syntax match praatCommand "\(To Sound (bss)\(:\)\@=\)"
syntax match praatCommand "\(To CrossCorrelationTable\(:\)\@=\)"
syntax match praatCommand "\(Lengthen (overlap-add)\(:\)\@=\)"
syntax match praatCommand "\(Deepen band modulation\(:\)\@=\)"
syntax match praatCommand "\(Change gender\(:\)\@=\)"
syntax match praatCommand "\(Down to Matrix\)"
" sound commands: Filter -
syntax match praatCommand "\(Filtering tutorial\)"
syntax match praatCommand "\(Filter (pass Hann band)\(:\)\@=\)"
syntax match praatCommand "\(Filter (stop Hann band)\(:\)\@=\)"
syntax match praatCommand "\(Filter (formula)\(:\)\@=\)"
syntax match praatCommand "\(Remove noise\(:\)\@=\)"
syntax match praatCommand "\(Filter (one formant)\(:\)\@=\)"
syntax match praatCommand "\(Filter (pre-emphasis)\(:\)\@=\)"
syntax match praatCommand "\(Filter (de-emphasis)\(:\)\@=\)"
syntax match praatCommand "\(Filter (gammatone)\(:\)\@=\)"
" sound commands: Combine -
syntax match praatCommand "\(Combine to stereo\(\n\|\s\+[;#]\)\@=\)"
syntax match praatCommand "\(Concatenate\(\n\|\s\+[;#]\)\@=\)"
syntax match praatCommand "\(Concatenate recoverably\(\n\|\s\+[;#]\)\@=\)"
syntax match praatCommand "\(Concatenate with overlap\(:\)\@=\)"
syntax match praatCommand "\(Convolve\(:\)\@=\|Cross-correlate\(:\)\@=\)"
syntax match praatCommand "\(To CrossCorrelationTable (combined)\(:\)\@=\)"
syntax match praatCommand "\(To DTW\(:\)\@=\|To ParamCurve\(:\)\@=\)"

" TABLE COMANDS:
syntax match praatCommand "\(Table help\)"
" table comands: Draw -
syntax match praatCommand "\(Scatter plot\(:\)\@=\)"
syntax match praatCommand "\(Scatter plot (mark)\(:\)\@=\)"
syntax match praatCommand "\(Vertical error bars plot\(:\)\@=\)"
syntax match praatCommand "\(Horizontal error bars plot\(:\)\@=\)"
syntax match praatCommand "\(Draw ellipse (standard deviation)\(:\)\@=\)"
syntax match praatCommand "\(Draw ellipses\(:\)\@=\)"
" table comands: Query -
syntax match praatCommand "\(List\(:\)\@=\|Get number of rows\)"
syntax match praatCommand "\(Get number of columns\)"
syntax match praatCommand "\(Get column label\(:\)\@=\)"
syntax match praatCommand "\(Get column index\(:\)\@=\)"
syntax match praatCommand "\(Get value\(:\)\@=\|Search column\(:\)\@=\)"
syntax match praatCommand "\(Statistics tutorial\|Get quantile\(:\)\@=\)"
syntax match praatCommand "\(Get minimum\(:\)\@=\|Get maximum\(:\)\@=\)"
syntax match praatCommand "\(Get mean\(:\)\@=\|Get group mean\(:\)\@=\)"
syntax match praatCommand "\(Get standard deviation\(:\)\@=\)"
syntax match praatCommand "\(Get median absolute deviation\(:\)\@=\)"
syntax match praatCommand "\(Report mean (Student t)\(:\)\@=\)"
syntax match praatCommand "\(Report difference (Student t)\(:\)\@=\)"
syntax match praatCommand "\(Report group mean (Student t)\(:\)\@=\)"
syntax match praatCommand "\(Report group difference (Student t)\(:\)\@=\)"
syntax match praatCommand "\(Report group difference (Wilcoxon rank sum)\(:\)\@=\)"
syntax match praatCommand "\(Report correlation (Pearson r)\(:\)\@=\)"
syntax match praatCommand "\(Report correlation (Kendall tau)\(:\)\@=\)"
" table comands: Modify -
syntax match praatCommand "\(Set string value\(:\)\@=\)"
syntax match praatCommand "\(Set numeric value\(:\)\@=\)"
syntax match praatCommand "\(Formula\(:\)\@=\|Formula (column range)\(:\)\@=\)"
syntax match praatCommand "\(Sort rows\(:\)\@=\|Randomize rows\|Reflect rows\)"
syntax match praatCommand "\(Append row\|Append column\(:\)\@=\)"
syntax match praatCommand "\(Append sum column\(:\)\@=\)" 
syntax match praatCommand "\(Append difference column\(:\)\@=\)"
syntax match praatCommand "\(Append product column\(:\)\@=\)"
syntax match praatCommand "\(Append quotient column\(:\)\@=\)"
syntax match praatCommand "\(Remove row\(:\)\@=\|Remove column\(:\)\@=\)"
syntax match praatCommand "\(Insert row\(:\)\@=\|Insert column\(:\)\@=\)"
syntax match praatCommand "\(Set column label (index)\(:\)\@=\)"
syntax match praatCommand "\(Set column label (label)\(:\)\@=\)"
" table comands: Analyse -
syntax match praatCommand "\(To linear regression\)"
syntax match praatCommand "\(To logistic regression\(:\)\@=\)"
syntax match praatCommand "\(Append\(\n\|\s\+[;#]\)\@=\)"
syntax match praatCommand "\(Draw row from distribution\(:\)\@=\)"
syntax match praatCommand "\(Extract rows where column (number)\(:\)\@=\)"
syntax match praatCommand "\(Extract rows where column (text)\(:\)\@=\)"
syntax match praatCommand "\(Extract rows where\(:\)\@=\)"
syntax match praatCommand "\(Transpose\(\n\|\s\+[;#]\)\@=\)"
syntax match praatCommand "\(Colaps rows\(:\)\@=\|Rows to columns\(:\)\@=\)"

" TEXTGRID COMANDS:
syntax match praatCommand "\(TextGrid help\|View & Edit alone\(\n\|\s\+[;#]\)\@=\)"
syntax match praatCommand "\(Down to Table\(:\)\@=\)"
" TEXTGRID COMANDS: Query -
syntax match praatCommand "\(Get number of tiers\(\n\|\s\+[;#]\)\@=\)"
syntax match praatCommand "\(Get tier name\(:\)\@=\|Is interval tier\(:\)\@=\)"
syntax match praatCommand "\(Get number of intervals\(:\)\@=\)"
syntax match praatCommand "\(Get starting point\(:\)\@=\)"
syntax match praatCommand "\(Get end point\(:\)\@=\)"
syntax match praatCommand "\(Get label of interval\(:\)\@=\)"
syntax match praatCommand "\(Get interval at time\(:\)\@=\)"
syntax match praatCommand "\(Get low interval at time\(:\)\@=\)"
syntax match praatCommand "\(Get high interval at time\(:\)\@=\)"
syntax match praatCommand "\(Get interval edge from time\(:\)\@=\)"
syntax match praatCommand "\(Get interval boundary from time\(:\)\@=\)"
syntax match praatCommand "\(Count intervals where\(:\)\@=\)"
syntax match praatCommand "\(Get number of points\(:\)\@=\)"
syntax match praatCommand "\(Get time of point\(:\)\@=\)"
syntax match praatCommand "\(Get label of point\(:\)\@=\)"
syntax match praatCommand "\(Get low index from time\(:\)\@=\)"
syntax match praatCommand "\(Get high index from time\(:\)\@=\)"
syntax match praatCommand "\(Get nearest index from time\(:\)\@=\)"
syntax match praatCommand "\(Count points where\(:\)\@=\)"
" TEXTGRID COMANDS: Modify -
syntax match praatCommand "\(Convert to backslash trigraphs\(\n\|\s\+[;#]\)\@=\)"
syntax match praatCommand "\(Convert to Unicode\(\n\|\s\+[;#]\)\@=\)"
syntax match praatCommand "\(Extend time\(:\)\@=\)"
syntax match praatCommand "\(Insert interval tier\(:\)\@=\)"
syntax match praatCommand "\(Insert point tier\(:\)\@=\)"
syntax match praatCommand "\(Duplicate tier\(:\)\@=\|Remove tier\(:\)\@=\)"
syntax match praatCommand "\(Set tier name\(:\)\@=\)"
syntax match praatCommand "\(Insert boundary\(:\)\@=\)"
syntax match praatCommand "\(Remove left boundary\(:\)\@=\)"
syntax match praatCommand "\(Remove right boundary\(:\)\@=\)"
syntax match praatCommand "\(Remove boundary at time\(:\)\@=\)"
syntax match praatCommand "\(Set interval text\(:\)\@=\)"
syntax match praatCommand "\(Replace interval text\(:\)\@=\)"
syntax match praatCommand "\(Insert point\(:\)\@=\|Remove point\(:\)\@=\)"
syntax match praatCommand "\(Remove points\(:\)\@=\)"
syntax match praatCommand "\(Set point text\(:\)\@=\)"
syntax match praatCommand "\(Replace point text\(:\)\@=\)"
" TEXTGRID COMANDS: Analyse -
syntax match praatCommand "\(Extract one tier\(:\)\@=\|Extract part\)"
syntax match praatCommand "\(Get starting points\(:\)\@=\)"
syntax match praatCommand "\(Get end points\(:\)\@=\)"
syntax match praatCommand "\(Get centre points\(:\)\@=\)"
syntax match praatCommand "\(Get points\(:\)\@=\)"
syntax match praatCommand "\(Get points (preceded)\(:\)\@=\)"
syntax match praatCommand "\(Get points (followed)\(:\)\@=\)"
" TEXTGRID COMANDS: Synthesize - covered in section SOUND COMMANDS

" TEXTGRID & SOUND COMANDS:
syntax match praatCommand "\(Extract all intervals:\)"
syntax match praatCommand "\(Extract non-empty intervals:\)"
syntax match praatCommand "\(Extract intervals where:\)"
syntax match praatCommand "\(Scale times\|Clone time domain\)"

" STRINGS COMANDS:
syntax match praatCommand "\(Strings help\(\n\|\s\+[;#]\)\@=\)"
syntax match praatCommand "\(Get number of strings\)"
syntax match praatCommand "\(Get string\(:\)\@=\|Set string\(:\)\@=\)"
syntax match praatCommand "\(Insert string\(:\)\@=\)"
syntax match praatCommand "\(Remove string\(:\)\@=\)"
syntax match praatCommand "\(Randomize\(\n\|\s\+[;#]\)\@=\)"
syntax match praatCommand "\(Sort\(\n\|\s\+[;#]\)\@=\)"
syntax match praatCommand "\(Replace all\(:\)\@=\|Extract part\(:\)\@=\)"
syntax match praatCommand "\(Genericize\(\n\|\s\+[;#]\)\@=\)"
syntax match praatCommand "\(Nativize\(\n\|\s\+[;#]\)\@=\)"

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
