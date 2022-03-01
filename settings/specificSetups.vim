"""""""""""""""""""""""""""""""""""""""
"    Start Original Kyb Here          "
"""""""""""""""""""""""""""""""""""""""
set statusline+=%F
set fileencodings=utf-8,euckr
set autoread
set backspace=indent,eol,start,nostop


autocmd! bufwritepost .vimrc source %
set pastetoggle=<F2>
set clipboard=unnamed
let mapleader = ","
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
noremap <C-b> :vsp<CR><C-W><C-L>:enew<CR>
"Set indent control
""""""""""""""""""""""""""""""""""""""
"           StartUp                  "
""""""""""""""""""""""""""""""""""""""
function! StartUp()
    simalt ~x
    if 0 == argc()
        cd ~\OneDrive - PERFORCE SOFTWARE, INC\progress
        NERDTree
    " else 
    "     cd argc()
    "   
        :echom 'Hello again, world!'
    end

endfunction

autocmd VimEnter * call StartUp()


"""""""""""""""""""""""""""""""""""""""
"           backup options            "
"""""""""""""""""""""""""""""""""""""""
" set backupdir=~/tmp,/tmp " backups (~)
" set directory=~/tmp,/tmp " swap files
set writebackup
set noswapfile
set guioptions -=m 
if !isdirectory('C:/tools/')
     call mkdir('C:/tools/', "p")
 endif
if !isdirectory('C:/tools/files')
    call mkdir('C:/tools/files', "p")
endif
if !isdirectory('C:/tools/files/backup')
    call mkdir('C:/tools/files/backup', "p")
endif
if !isdirectory('C:/tools/files/swap')
    call mkdir('C:/tools/files/swap', "p")
endif
if !isdirectory('C:/tools/files/undo')
    call mkdir('C:/tools/files/undo', "p")
endif

set nobackup 
set backupdir   =C:/tools/files/backup/
set backupext   =-vimbackup
set backupskip  =
set directory   =C:/tools/files/swap/
set updatecount =100
set undodir     =C:/tools/files/undo/
set undofile
set viminfo     ='100,nC:/tools/files/info/viminfo


"""""""""""""""""""""""""""""""""""""""
"    folding                          "
"""""""""""""""""""""""""""""""""""""""
" make a folding based on tab.
" set foldmethod=indent
" set foldexpr=strlen(substitute(substitute(getline(v:lnum),'\\s','',\"g\"),'[^>].*','',''))
set foldlevel=7
hi Folded guibg=#508080
noremap zh :set foldlevel=0<CR>
noremap zk zr
noremap zj zm
noremap zl :set foldlevel=10<CR>

map <F11> <Esc>:call libcallnr("gvimfullscreen.dll", "ToggleFullScreen", 0)<CR> 

"...................................................................
"Quick fold command
noremap <Space>f va{zf
" autocmd BufWinLeave ?* silent mkview
" autocmd BufWinEnter ?* silent loadview
"...................................................................

" put in your ~/.vimrc file

"""""""""""""""""""""""""""""""""""""""
"    Find as a list                   " " START search related configs and helps
"""""""""""""""""""""""""""""""""""""""
set hlsearch " highlight matches, in normal mode try typing * or even g* when cursor on string
set incsearch  " search as characters are entered, as you type in more characters, the search is refined
set ignorecase  " ignore case when searching
" yank those cheat commands, in normal mode type q: than p to paste in the opened cmdline
" how-to search for a string recursively
" :grep! "\<doLogErrorMsg\>" . -r
"
" how-to search recursively , omit log and git files
" :vimgrep /srch/ `find . -type f \| grep -v .git \| grep -v .log`
" :vimgrep /srch/ `find . -type f -name '*.pm' -o -name '*.pl'`
"
" how-to search for the "srch" from the current dir recursively in the shell
" vim -c ':vimgrep /srch/ `find . -type f \| grep -v .git \| grep -v .log`'
"
" how-to highlight the after the search the searchable string
" in normmal mode press g* when the cursor is on a matched string

" how-to jump between the search matches - open the quick fix window by
" :copen 22

" how-to to close the quick fix window
" :ccl

" F5 will find the next occurrence after vimgrep
map <F5> :cp!<CR>

" F6 will find the previous occurrence after vimgrep
map <F6> :cn!<CR>

" F8 search for word under the cursor recursively , :copen , to close -> :ccl
nnoremap <F8> :grep! "\<<cword>\>" . -r<CR>:copen 33<CR>

" omit a dir from all searches to perform globally
set wildignore+=**/node_modules/**

" use perl regexes - src: http://andrewradev.com/2011/05/08/vim-regexes/
noremap / /\v
"
" STOP  search related configs and helps
