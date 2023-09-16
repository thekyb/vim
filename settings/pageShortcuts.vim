""""""""""""""""""""""""""""""""""""""
"    Vim_Page_Shortcuts              "
""""""""""""""""""""""""""""""""""""""
" nmap <leader>word :e C:\Users\jean\my_site\word.md<CR>

" open this page "
" command! Rcc execute ":vsp <bar> :e C:\tools\Vim\settings\pageShortcuts.vimC:/Users/jean/my_site/word.md"

" word list document
command! Word execute ":vsp <bar> :e ~/my_site/word.md"
command! WD execute ":vsp <bar> :e ~/my_site/word.md"
command! WordCurrent execute ":e ~/my_site/word.md"
command! WC execute ":e ~/my_site/word.md"

" daily todo list document
command! Daily execute ":vsp <bar> :e ~/my_site/daily todo.md"
command! DA execute ":vsp <bar> :e ~/my_site/daily todo.md"
command! DailyCurrent execute ":e ~/my_site/daily todo.md"
command! DC execute ":e ~/my_site/daily todo.md"

" todo list document
command! Todo execute ":vsp <bar> :e ~/my_site/todo.md"
command! TC execute ":e ~/my_site/todo.md"
command! TS execute ":vsp <bar> :e ~/my_site/todo_school.md"
" open Sandbox
command! Sand execute ":NERDTree ~/work/sandbox/"
command! FN execute ":NERDTree ~/work/sandbox/FN-FP/"
command! FP execute ":NERDTree ~/work/sandbox/FN-FP/"
command! FNFP execute ":NERDTree ~/work/sandbox/FN-FP/"
command! Bug execute ":NERDTree ~/work/sandbox/bug/"
command! Story execute ":NERDTree ~/work/sandbox/story/"
command! Current execute ":NERDTree ~/work/sandbox"


""""""""""""""""""""""""""""""""""""""
"    Vim_Template_Shortcuts          "
""""""""""""""""""""""""""""""""""""""
command! TDiary execute ":-1read $VIM/template/diary_temp.txt"
command! TD execute ":-1read $VIM/template/diary_temp.txt"

" command! TTD execute ":-1read $VIM/template/diary_todo_temp.txt"
command! TTD execute ":-1read $VIM/template/diary_todo_temp.txt"
command! Tmd execute ":e $VIM/template/diary_temp.txt"

command! Thd execute ":-1read $VIM/template/diary_holiday_temp.txt"
command! Tsd execute ":-1read $VIM/template/diary_holiday_temp.txt"
command! Tmsd execute ":e $VIM/template/diary_holiday_temp.txt"
" $VIM\template\diary_temp.txt


""""""""""""""""""""""""""""""""""""""
"    Windows_Terminal          "
""""""""""""""""""""""""""""""""""""""
" command! WTS execute ":e C:/Users/jean/AppData/Local/Packages/Microsoft.WindowsTerminal_8wekyb3d8bbwe/LocalState/settings.json"
