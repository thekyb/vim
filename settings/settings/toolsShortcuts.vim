""""""""""""""""""""""""""""""""""""""
"    Vim_tools_Shortcuts             "
""""""""""""""""""""""""""""""""""""""
nmap <leader>d istd::cout <<"  [test Jean]: " << ""<< << std::endl; //TODO JEAN: please delete this line before commit.<DEL><DEL><DEL><DEL><DEL>

" make current json structure beautiful
command! JPretty execute ":%!python -m json.tool"
command! JsonPretty execute ":%!python -m json.tool"
command! Jp execute ":%!python -m json.tool"
command! JP execute ":%!python -m json.tool"

" remove trailing space (white space)
command! RmSpace execute ":%s/\s\+$//"
command! RmS execute ":%s/\s\+$//"
command! RMS execute ":%s/\s\+$//"

nmap <leader>w<leader>t :xclip -selection clipboard -i C:\tools\Vim\template\diary_temp.txt<CR> <C-v>







