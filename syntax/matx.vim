" Vim syntax file
" Language:	MaTX
" Maintainer:	Yuichi Tadokoro <tokoro10g@tokor.org>
" Last Change:	2014 May 09

" Quit when a (custom) syntax file was already loaded
if exists("b:current_syntax")
  finish
endif

" Read the C syntax to start with
if version < 600
  so <sfile>:p:h/c.vim
else
  runtime! syntax/c.vim
  unlet b:current_syntax
endif

let s:cpo_save = &cpo
set cpo&vim

let s:ft = matchstr(&ft, '^\([^.]\)\+')

" MaTX keywords
syn keyword	matxMeta	Func

syn keyword	matxType	Array Integer Matrix Real Rational void

syn keyword	matxStatement	chdir clear load menu pause print require

syn keyword	matxSpecial	bench demo help quit what which who whos

syn keyword	matxFunction	access all all_col all_row arg
syn keyword	matxFunction	balance bell bit_and bit_comp bit_lshift bit_or bit_rshift bit_xor
syn keyword	matxFunction	clock Cols conj conjtrans cumprod cumprod_col cumprod_row cumsum cumsum_col cumsum_row
syn keyword	matxFunction	De degree derivative det diag2vec eig eigvec error eval exist
syn keyword	matxFunction	fact fft fft_col fft_row find fliplr flipud frobnorm frobnorm_col frobnorm_row
syn keyword	matxFunction	getch getenv gettimer gotoxy
syn keyword	matxFunction	hess higher I ifft ifft_col ifft_row lm infnorm Inport Inportb integral inv iscomplex isempty isfinite isinf isnan isreal
syn keyword	matxFunction	kbhit kernel length linspace logspace lower lu lu_p
syn keyword	matxFunction	machine_endian makelist maximum maximum_col maximum_row maxsing max_col max_row mean mean_col mean_row minimum minimum_col minimun_row minsing min_col min_row
syn keyword	matxFunction	norm Nu Ode Ode45 Ode45Auto Ode45Hybrid Ode45HybridAuto OdeAuto OdeHybrid OdeHybridAuto OdeStop OdeXY ONE Outport Outportb
syn keyword	matxFunction	pclose poles popen prod prod_col prod_row pseudoinv putenv
syn keyword	matxFunction	qr qr_p qz rand randn rank Re rem reshape rkf45 rngkut4 roots rotateDown rotateLeft rotateRight rotateUp round round2z Rows
syn keyword	matxFunction	rtIsOnLine rtIsRehearsal rtIsRunning rtIsTimeOut rtSetBreak rtSetClock rtSetTask rtStart rtStartRehearsal rtStop rtStopRehearsal
syn keyword	matxFunction	save schur settimer sgn shiftDown shiftLeft shiftRight shiftUp singleftvec singrightvec singval size sort sort_col sort_row
syn keyword	matxFunction	std std_col std_row sum sum_col sum_row svd system
syn keyword	matxFunction	trace trans vec2diag vectorprod version zeros

syn keyword	matxSpecialFunction	error warning

hi link matxMeta	matxStatement
hi link matxStatement	Statement
hi link matxType	Type
hi link matxFunction	Function
hi link matxSpecialFunction	matxSpecial
hi link matxSpecial	Error

let b:current_syntax = "matx"

unlet s:ft

let &cpo = s:cpo_save
unlet s:cpo_save
" vim: ts=8
