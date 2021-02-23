 " ##  01 Nov 2020"
"
"
"
"
"
"	--------------------
"		REGISTERS
"	--------------------
"

" Store Date in Reg d
" =====================
" Usage (normal mode):  @d 
" Desciption:	evaluates and inserts current date (need double \)
" NOTE:	normal mode "dp displays unevaluated, literal code
"  TODO
let @d = "!!date +'\\%d \\%b \\%Y'"
"
"
" Store Date in variable x
" ==========================
"	strftime
"	:echo x  gives correct date
let x = strftime("%d %b %Y")
echo "x = " x


" Store Date in Register y
" ==========================
"	strftime
"	at source displays @y=
"	(normal) "yp  inserts date
let @y = strftime("%d %b %Y")
echo "@y = " @y

"  cmd line to insert Date at current line
" ==========================================
" Note: single quotes around the vim comment char
"  :execute "normal ggI" .'" ' . "##  " .  g:mydate . "\<esc>\<CR>" 
"
"
"
" NOTE:   put control char for cr esc on separate line.
" Use Date in a function and create mapping
" ===========================================
let g:mydate=strftime("%d %b %Y") 
function!	Insert_date() 
  call setline(".", '" ##  '. g:mydate )
  exe "normal \<CR>\<esc>"
"  startinsert
endfunction 

nnoremap ,id :call Insert_date()<CR>
"
"	execute - only : commands
"	--------------------
"	note:   |  needs escape
"
"	execute at cmd line
noremap <Leader>xx	:execute ":set"<CR>
noremap <Leader>%%	:execute "w \| so %"<CR>

"	execute normal
"	--------------------
noremap <Leader>yy	:execute "normal gg"<CR>


"	--------------------
"		Unamed Reg, "" (last yank etc)
"	--------------------
"	USE:	(normal mode) ""p

"	--------------------
"		Search Reg "/" (last search string)
"	--------------------
"	USE:	(normal mode) "/p
"
"		(a) ? (b):(c)
"	--------------------
noremap <Leader>zz :execute "echo 7>5 ? 'yes' : 'no' " <CR>
"
let s:var =1
echo s:var

"unlet s:var
"echom s:var



"		eval
" =======
fun! Eval_example(option)
  let opt=a:option		          " &path
  let value=eval('&' . opt)
  echo value
endfunction

" OR   at command line;   :call Eval_example("foldmethod")
nnoremap <leader>p :call Eval_example("foldmethod")<cr>"

"	--------------------
"	--------------------
"	.md  set map for #  ## or ### "
"	a:  local window
function! UnderlineHeading(level)
  if a:level == 1
    normal! yypVr=
  elseif a:level == 2
    normal! yypVr-
  else
    normal! I### 
  endif
endfunction

nnoremap <leader>u1 :call UnderlineHeading(1)<cr>
nnoremap <leader>u2 :call UnderlineHeading(2)<cr>
nnoremap <leader>u3 :call UnderlineHeading(3)<cr>


" -----------------------
"  		VIM search practice --- do NOT RUN!
"  		EX:   /word/e		"find word, move cursor to end of word
" -----------------------
"  STRING1="abababxxxabab"
"  STRING2="xyxyxxyyxyxy"
