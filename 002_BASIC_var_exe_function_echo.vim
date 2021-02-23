" $HOME/.config/nvim/002_env_var_assign_display.vim
"
"
"  BASIC VARIABLES
" ==================
" $VAR  = Env variable.
" &VAR  = option 
" @r    = register
"
" VAR   = global var
" s:VAR = local to script
" b:VAR = buffer only
" g:VAR = global  always use in functions to access global
" v:VAR = vim, predefined variables
echo $HOME
echo "$HOME=" $HOME
echo "MYVIMRC=" $MYVIMRC



" SIMPLE USEAGE
" ===============
" :let                # display all user defined var (inludes plugins)
"
" :let b:count=1      # works at command line :;     s:count ONLY in scripts
" :echo b:count       # show value
" :unlet b:count      # vim does not automatically FREE variables
"
"
" NORMAL CMDS (at :)
" ====================
" :normal <literal command characters>
" :normal j
" :normal gg=G        # filter through default indent
" :normal V$y         # yank current line
"
" EXECUTE <EXPRESSION>
" ======================
" :execute j          # FAILS!   not an expression
" :execute "ls" 
" :execute "!date"    # shell commands
" :exe      "bp"
"
"
" EXECUTE <Normal Cmds>
" =======================
" execute "normal gg"
" execute "normal ggIsome text \<cr>\<esc>"
" 
"
" EVALUATE (vs. execute)
" =======================
" :let x = "path"          # &path is an option
" :let y = eval('&' ..x)
"
" :let z = "hello" . "world" # period concatinates
" :echo z
"
"
" FUNCTIONS (call FUN(x,y))
" ===========================
" :call search("FAILS!", "W")   # finds 1st occurence, does not wrap
"
"
" USE FUNCTIONS IN EXPRESSIONS
" ==============================
" :let line=getline(".")        # content
" :echo line
"
" :echo getline(".")
"
