
"""""""""""""""""""""""""""""""""""""""
"    Start Original Kyb Here          "
"""""""""""""""""""""""""""""""""""""""
set statusline+=%F
set fileencodings=utf-8,euckr
set autoread
set backspace=indent,eol,start,nostop
" set splitright
set splitbelow

autocmd! bufwritepost .vimrc source %
set pastetoggle=<F2>
set clipboard=unnamed
set textwidth=0
let mapleader = ","
let maplocalleader = "<"
let g:netrw_liststyle=3
let g:windowswap_map_keys = 0 "prevent default bindings
"Windows swap"
let g:windowswap_map_keys = 0
nnoremap <silent> <Space>yw :call WindowSwap#MarkWindowSwap()<CR>
nnoremap <silent> <Space>pw :call WindowSwap#DoWindowSwap()<CR>
nnoremap <silent> <Space>ww :call WindowSwap#EasyWindowSwap()<CR>
"Quick save command
noremap <Space>s :w<CR>
vnoremap <Space>s <C-C>:w<CR>
"Tab backword in insertmode
inoremap <S-Tab> <C-d>
inoremap <C-j> <esc>l
vnoremap <C-j> <esc>l

"noremap <C-m> :tabe<CR>
" noremap <C-m> :tabe<CR>
"Set indent control
"
"""""""""""""""""""""""""""""""""""""""
"    Run VimRC                        "
"""""""""""""""""""""""""""""""""""""""
" command! Vimrc execute ":e $MYVIMRC"
command! Rc execute ":vsp <bar> :e $MYVIMRC"
command! RC execute ":e $MYVIMRC"
command! RR execute "source $MYVIMRC"

""""""""""""""""""""""""""""""""""""""
"           StartUp                  "
""""""""""""""""""""""""""""""""""""""
function! StartUp()

    " make a full-screen 
    simalt ~x

    if 0 == argc()
        cd $JEANS\
        " NERDTree
    " else 
    "     cd argc()
    "   
        " :echom 'Hello again, world!'
    end

endfunction

autocmd VimEnter * call StartUp()
" autocmd GUIEnter * simalt ~x
