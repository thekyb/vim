" "    Vim tools Shortcuts              "
" """"""""""""""""""""""""""""""""""""""
nmap <leader>d istd::cout << ""<< <<"  [test Jean]: " << std::endl; //TODO JEAN: please delete this line before commit. 


" make current json structure beautiful
command! JPretty execute ":%!python -m json.tool"
command! JsonPretty execute ":%!python -m json.tool"
command! Jp execute ":%!python -m json.tool"
command! JP execute ":%!python -m json.tool"

command! RmSpace execute ":%s/\s\+$//"
command! RmS execute ":%s/\s\+$//"
