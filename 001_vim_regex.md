## 001_vim_regex.md  
## Examples of vim/regex

### REF:  http://vimcasts.org/episodes/refining-search-patterns-with-the-command-line-window/

<!--
!pandoc %  -f markdown  -t latex -o ~/Downloads/print_and_delete/out.pdf
 -->

## Example 1
```
:6,10s/branche\?/stick
```

### ORIGINAL - no touch
```
branch
branche
branches
branching
```

### PLAY area
branch
branche
branches
branching


## Example 2
 use v to form range, then
```
/ab
/ab\{3,5}
```

### ORIGINAL - no touch
```
a
ab
abb
abbbb
```

### PLAY AREA
aab
aaab

### note escape + symbol
### 003_replace 1 or more # with EXACTLY 4 ####, note \+  to use +
```
:'<,'>s/^#\+/####/gc
```

## Example 3

 ```
s/https\?.*/[&](&)
```

  * \v    magic mode --- no need to backlast!
  *  \?   0,1   http or https
  *  \+   1,n
  *  .*   any one character, repeated 0,1,n times
  *  [&]  replace with matched pattern
  *  [^ ...]  not any of these char

Original:
https://nytimes.com

Try here:
https://nytimes.com


##  Example #4, magic
Goal:  Change single quotes to double
```
:.s/\v'.+'/
'a' 
' 
'b'
'code'
'a'  'a'
```

### PLAY HERE:
```
'a'  
'b'
'code'
```

