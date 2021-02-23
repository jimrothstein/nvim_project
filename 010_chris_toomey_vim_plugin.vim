" =================================
" 010_Chris_tome_vim_plugin.vim
" Video: https://bit.ly/3c2kn9y
" =================================
"
" ==============================
" * Source this file
" * (n) ,sop
" ==============================
"
"================================
function! FixLastSpellingError()
"================================
" * normal!   Do exactly
" * mm mark this spot
" * ]s misspelled word BEFORE cursor 
" * 1z= take 1st spelling suggestion
" * `m return to spot
" * put <CR> after function call
	normal! mm[s1z=`m
endfunction

nnoremap <leader>sp  :call FixLastSpellingError()<cr>

" ABOVE, as simple mapping (no function) 
"no remap <leader>sp :normal! mm]s1z=`m<CR>
"=================================




" =================
" MOVE TO TOP	
" =================
" item 1
" item 2
" item 3
" item 4
" item Z
"
func!	MoveToTop()
" =================
	:normal! kmmjVx{p`m
endfunction

nnoremap <leader>m1 :call MoveToTop()<cr>
" =================



"	.Md  set for #  ## or ###
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
