" Vim syntax file
" Language:	MaTX
" Maintainer:	Yuichi Tadokoro <tokoro10g@tokor.org>
" Last Change:	2014 May 09

" Quit when a (custom) syntax file was already loaded
if exists("b:current_syntax")
  finish
endif

let s:cpo_save = &cpo
set cpo&vim

let s:ft = matchstr(&ft, '^\([^.]\)\+')

" MaTX keywords
syn region	matxPreProc	start="^\s*\(%:\|#\)\s*\(define|undef\)\>" skip="\\$" end="$" keepend
syn match	matxPreProc	display "^\s*\(%:\|#\)\s*include\>\s*"

syn match	matxNumbers	display "\<\d*\(\(\d\.\)\|\(\.\d\)\)*\d*\>"

syn region	matxString	start=+L\="+ skip=+\\\\\|\\"+ end=+"+

syn match	matxOperator	"[-+]"
syn match	matxOperator	"\.\=[*/\\^]"
syn match	matxOperator	"[=~]="
syn match	matxOperator	"[<>]=\="
syn match	matxOperator	"[&|~]"
syn match	matxOperator	"[][]"
syn match	matxOperator	"[][(){}]"
syn match	matxOperator	"[])a-zA-Z0-9.]'"lc=1
syn match	matxOperator	"="
syn match	matxOperator	";"
syn match	matxOperator	":"
syn match	matxOperator	","

syn keyword	matxMeta	Func static extern

syn match	matxType	display "\<\(Co\|Po\|Ra\)\?\(Array\|Matrix\)"
syn match	matxType	display "\<\(Co\)\?\(Polynomial\|Rational\)"
syn keyword	matxType	Complex Index Integer List Real Rational void

syn keyword	matxStatement	break case continue chdir clear default do else exit for if load menu pause print read require return switch typeof while

syn keyword	matxSpecial	bench demo help quit what which who whos

syn keyword	matxFunction	abs access acos acosh all all_col all_row any any_col any_row arg asin asinh atan atan2 atanh
syn keyword	matxFunction	balance bit_and bit_comp bit_lshift bit_or bit_rshift bit_xor
syn keyword	matxFunction	ceil clock Cols conj conjtrans cos cosh cumprod cumprod_col cumprod_row cumsum cumsum_col cumsum_row
syn keyword	matxFunction	De degree derivative det diag2vec eig eigvec eval exist
syn keyword	matxFunction	fact fclose feof fft fft_col fft_row fgets find fliplr flipud fopen fprintf fread frobnorm frobnorm_col frobnorm_row fscanf fwrite
syn keyword	matxFunction	getch getenv gets gettimer gotoxy gplot
syn keyword	matxFunction	hess higher I ifft ifft_col ifft_row Im lqr infnorm Inport Inportb integral inv iscomplex isempty isfinite isinf isnan isreal
syn keyword	matxFunction	kbhit kernel length linspace log log10 logspace lower lu lu_p
syn keyword	matxFunction	machine_endian makelist max maximum maximum_col maximum_row maxsing max_col max_row mean mean_col mean_row mgplot min minimum minimum_col minimum_row minsing min_col min_row
syn keyword	matxFunction	norm Nu Ode Ode45 Ode45Auto Ode45Hybrid Ode45HybridAuto OdeAuto OdeHybrid OdeHybridAuto OdeStop OdeXY ONE Outport Outportb
syn keyword	matxFunction	pclose poles popen pow printf prod prod_col prod_row pseudoinv putenv
syn keyword	matxFunction	qr qr_p qz rand randn rank Re rem reshape rkf45 rngkut4 roots rotateDown rotateLeft rotateRight rotateUp round round2z Rows
syn keyword	matxFunction	rtIsOnLine rtIsRehearsal rtIsRunning rtIsTimeOut rtSetBreak rtSetClock rtSetTask rtStart rtStartRehearsal rtStop rtStopRehearsal
syn keyword	matxFunction	save scanf schur settimer sgn shiftDown shiftLeft shiftRight shiftUp sin singleftvec singrightvec singval sinh size sort
syn keyword	matxFunction	sort_col sort_row sprintf sqrt sscanf std std_col std_row strchr sum sum_col sum_row svd system
syn keyword	matxFunction	tan tanh trace trans vec2diag vectorprod version zeros Z

syn keyword	matxSpecialFunction	bell error warning

hi link matxMeta	matxStatement
hi link matxStatement	Statement
hi link matxType	Type
hi link matxOperator	Operator
hi link matxNumbers	Number
hi link matxString	String
hi link matxPreProc	PreProc
hi link matxFunction	Function
hi link matxSpecialFunction	matxSpecial
hi link matxSpecial	Statement

let b:current_syntax = "matx"

unlet s:ft

let &cpo = s:cpo_save
unlet s:cpo_save
" vim: ts=8
