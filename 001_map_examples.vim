" ~/Downloads/nvim_play/001_map_examples.vim
" insert Date
map <F2> GoDate:<Esc>:read !date<CR>kJ
"Fri Jan 26 17:19:40 PST 2018
map zzz GoDate:<Esc>:read !date<CR>kJ

" let examples
"
"
" does not work://github.com/koreader/koreader/wiki!
let $a = "one"
echo $a





"Date: Sat Jan 27 13:38:28 PST 2018
"Date: Sat Jan 27 13:38:35 PST 2018
" A) full path to this file
echo "A:" expand('%')					

" B) ext
echo "B:" expand('%:e')

" C) root (all BUT ext)
echo "C:" expand ('%:r')

" D) full path, same as A
echo "D:" expand ('%:p')

"	E) dir only	
echo "E:" expand ('%:p:h')
"
"	F) tail only, file name	
echo "F:" expand ('%:t')

"Date: Wed Jan  2 19:59:36 PST 2019
