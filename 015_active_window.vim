" highlight ACTIVE window
"
"
" h winhighlight
" Normal tobe overwittenby ActiveWindow
" NormalNC to be overwrtten by InactiveWindow
"
" Change ctermbg=16 to white (big change)
hi ActiveWindow ctermbg=16 | hi InactiveWindow ctermbg=233
set winhighlight=Normal:ActiveWindow,NormalNC:InactiveWindow
