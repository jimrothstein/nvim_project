" my first nvim script
" to run:
" source /my_first_script.vim
for i in range(1,4)
	echo "count is " i
endfor

" ------- second -----
function! SavePosition()
  let g:file_name=expand("%:t")
  let g:line_number=line(".")
  let g:reviewer_initials="KG" " Your initials
  let g:line="---------------"

endfunction

function! InsertComment()
  execute "normal i". g:file_name . ":" . g:line_number . ": " . g:reviewer_initials . " - "

  startinsert
endfunction
nmap ,sp :call SavePosition()<CR>
nmap ,ic :call InsertComment()<CR>
nmap ,ih :call Heading()<CR>


function! Heading()
	execute "normal G"	
	"execute "normal i".g:line. " "
endfunction



"--------------- 
"	SayHello()
func!SayHello()
	execute "normal! :call Heading()\<esc>"
	execute "normal! o"."Hello\<CR>\<esc>"
	"echo Heading()
	"strftime("%c")\<esc>"
endfunction

"------------------------
"change next line to date
":s/jim/\= strftime("%d %b %Y")
"jim
"Hello
"
"Hello
"
