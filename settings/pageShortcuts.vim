" "    Vim Page Shortcuts              "
" """"""""""""""""""""""""""""""""""""""
" nmap <leader>word :e C:\Users\jean\my_site\word.md<CR>

" open this page "
command! Rcc execute ":vsp <bar> :e C:\tools\Vim\settings\pageShortcuts.vimC:\\Users\\jean\\my_site\\word.md"

" word list document
command! Word execute ":vsp <bar> :e C:\\Users\\jean\\my_site\\word.md"
command! WD execute ":vsp <bar> :e C:\\Users\\jean\\my_site\\word.md"
command! WordCurrent execute ":e C:\\Users\\jean\\my_site\\word.md"
command! WC execute ":e C:\\Users\\jean\\my_site\\word.md"

" daily todo list document
command! Daily execute ":vsp <bar> :e C:\\Users\\jean\\my_site\\daily todo.md"
command! DA execute ":vsp <bar> :e C:\\Users\\jean\\my_site\\daily todo.md"
command! DailyCurrent execute ":e C:\\Users\\jean\\my_site\\daily todo.md"
command! DC execute ":e C:\\Users\\jean\\my_site\\daily todo.md"

" todo list document
command! Todo execute ":vsp <bar> :e C:\\Users\\jean\\my_site\\todo.md"
command! TD execute ":vsp <bar> :e C:\\Users\\jean\\my_site\\todo.md"
command! TodoCurrent execute ":e C:\\Users\\jean\\my_site\\todo.md"
command! TC execute ":e C:\\Users\\jean\\my_site\\todo.md"

" open Sandbox
command! Sand execute ":NERDTree C:\\work\\sandbox\\"
command! FN execute ":NERDTree C:\\work\\sandbox\\FN-FP\\"
command! FP execute ":NERDTree C:\\work\\sandbox\\FN-FP\\"
command! FNFP execute ":NERDTree C:\\work\\sandbox\\FN-FP\\"
command! Bug execute ":NERDTree C:\\work\\sandbox\\bug\\"
command! Current execute ":NERDTree C:\work\sandbox\bug\PR56781\test2"


