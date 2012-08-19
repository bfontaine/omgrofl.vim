" Vim syntax file
" Language: Omgrofl
" Maintainer: Baptiste Fontaine
" URI: http://github.com/bfontaine/omgrofl.vim
" Latest Revision: 18 August 2012

if exists("b:current_syntax")
    finish
endif

" numbers
syn match omgroflNumber '\<\d\+\>'
syn match omgroflNumber '\<-\d\+\>'

" variables
syn match omgroflVariable "\<[lL][oO]\+[lL]\>"

" operations on variables
syn match omgroflVarOperation "\<lmao\>" nextgroup=omgroflVariable skipwhite
syn keyword omgroflVarOperation roflmao nextgroup=omgroflVariable skipwhite

syn match omgroflNull "/dev/null"
syn keyword omgroflKeyword to nextgroup=omgroflNull skiwhite

" comments
syn keyword omgroflTodo TODO FIXME XXX NOTE contained
syn match omgroflComment "\<w00t\>.*$" contains=omgroflTodo

" conditionals
syn keyword omgroflOperator wtf liek uber nextgroup=omgroflVariable skipwhite

" assignments
syn keyword omgroflAssignment iz nextgroup=omgroflNumber skipwhite
syn keyword omgroflAssignment iz nextgroup=omgroflVariable skipwhite
syn keyword omgroflAssignment iz nextgroup=omgroflOperator skipwhite

" wait
syn keyword omgroflStatement afk nextgroup=omgroflVariable skipwhite

" exit
syn keyword omgroflExit stfu

" I/O
syn keyword omgroflIOOperator rofl stfw nextgroup=omgroflVariable skipwhite

" stack/queue
syn match omgroflStackOperator "\<n00b\>" nextgroup=omgroflVariable skipwhite
syn match omgroflStackOperator "\<l33t\>" nextgroup=omgroflVariable skipwhite
syn match omgroflStackOperator "\<haxor\>" nextgroup=omgroflVariable skipwhite

" other statements
syn keyword omgroflStatement brb

syn cluster omgroflAll contains=omgroflAssignment,omgroflBreak,omgroflComment,omgroflExit,omgroflKeyword,omgroflIOOperator,omgroflLoopBegin,omgroflLoopTo,omgroflNull,omgroflNumber,omgroflOperator,omgroflStackOperator,omgroflStatement,omgroflTodo,omgroflVariable,omgroflVarOperation

" loops
syn keyword omgroflBreak tldr
syn match omgroflLoopBegin "\<rtfm\>" contains=omgroflBreak

syn match omgroflLoopBegin "\<4\>" nextgroup=omgroflVariable skipwhite
syn match omgroflLoopTo "\<2\>" nextgroup=omgroflVariable skipwhite

syn region omgroflLoop start="\<rtfm\>" end="brb" fold transparent contains=@omgroflAll,omgroflLoop
syn region omgroflLoop start="\<4\>" end="brb" fold transparent contains=@omgroflAll,omgroflLoop


let b:current_syntax = "omgrofl"

hi def link omgroflAssignment    Statement
hi def link omgroflBreak         Statement
hi def link omgroflComment       Comment
hi def link omgroflExit          Statement
hi def link omgroflKeyword       Statement
hi def link omgroflIOOperator    Operator
hi def link omgroflLoop          Operator
hi def link omgroflLoopBegin     Statement
hi def link omgroflLoopTo        Statement
hi def link omgroflNull          Special
hi def link omgroflNumber        Number
hi def link omgroflOperator      Operator
hi def link omgroflStackOperator Operator
hi def link omgroflStatement     Statement
hi def link omgroflTodo          Todo
hi def link omgroflVariable      Identifier
hi def link omgroflVarOperation  Statement
