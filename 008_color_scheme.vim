## file type
:set statusline=%f\ -\ FileType:\ %y

## how to set up example

:set statusline=%f         " Path to the file /resets statusline
:set statusline+=\ -\      " Separator
:set statusline+=FileType: " Label
:set statusline+=%y        " Filetype of the file


##
:set statusline=%l    " Current line
:set statusline+=/    " Separator
:set statusline+=%L   " Total lines

##
set statusline=[%4l]	" prepends 4 spaces to current line

##
set statusline=%F		" full path

##  white on blue (don't do it)
highlight Normal ctermfg=grey ctermbg=darkblue

## this one is better:
# highlight Normal ctermfg=grey ctermbg=black


#####################
#	BEST!
# 0=black 7=grey 15=white
# :highlight   			" current color settings for all
# :highlight StatusLine ctermfg=0 ctermbg=15
# :hi StatusLine ctermfg=0 ctermbg=15
#####################


#####################
#####################



