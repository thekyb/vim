"""""""""""""""""""""""""""""""""""""""
"           Backup options            "
"""""""""""""""""""""""""""""""""""""""
" set backupdir=$HOME/tmp,/tmp " backups ($HOME)
" set directory=$HOME/tmp,/tmp " swap files
" set nowritebackup
" set noswapfile
" set guioptions -=m 
if !isdirectory('$HOME/vimbackup/')
    call mkdir('$HOME/vimbackup/', "p")
 endif
if !isdirectory('$HOME/vimbackup/files')
    call mkdir('$HOME/vimbackup/files', "p")
endif
if !isdirectory('$HOME/vimbackup/files/backup')
    call mkdir('$HOME/vimbackup/files/backup', "p")
endif
if !isdirectory('$HOME/vimbackup/files/swap')
    call mkdir('$HOME/vimbackup/files/swap', "p")
endif
if !isdirectory('$HOME/vimbackup/files/undo')
    call mkdir('$HOME/vimbackup/files/undo', "p")
endif

" set nobackup 
set backupdir   =$HOME/vimbackup/files/backup/
set backupext   =-vimbackup
set backupskip  =
set directory   =$HOME/vimbackup/files/swap/
set updatecount =100
set undodir     =$HOME/vimbackup/files/undo/
set undofile
set viminfo     ='100,n$HOME/vimbackup/files/info/viminfo


"""""""""""""""""""""""""""""""""""""""
"    Folding                          "
"""""""""""""""""""""""""""""""""""""""
" make a folding based on tab.
" set foldmethod=indent
" :echo &l:expandtab
" set foldexpr=strlen(substitute(substitute(getline(v:lnum),'\\s','',\"g\"),'[^>].*','',''))
set foldlevel=7
hi Folded guibg=#508080
noremap zh :set foldlevel=0<CR>
noremap zk zr
noremap zj zm
noremap zl :set foldlevel=10<CR>

noremap z} va{zf
noremap zx va{zf
noremap z{ va{zf
map <F11> <Esc>:call libcallnr("gvimfullscreen.dll", "ToggleFullScreen", 0)<CR> 
noremap <Space>f va{zf
" autocmd BufWinLeave ?* silent mkview
" autocmd BufWinEnter ?* silent loadview
"...................................................................

" put in your $HOME/.vimrc file

"""""""""""""""""""""""""""""""""""""""
"    Find_as_a_list                   " " START search related configs and helps
"""""""""""""""""""""""""""""""""""""""
set hlsearch " highlight matches, in normal mode try typing * or even g* when cursor on string
set incsearch  " search as characters are entered, as you type in more characters, the search is refined
set ignorecase  " ignore case when searching

" F8 search for word under the cursor recursively , :copen , to close -> :ccl
nnoremap <F8> :grep! "\<<cword>\>" . -r<CR>:copen 33<CR>
" omit a dir from all searches to perform globally
set wildignore+=**/node_modules/**
" use perl regexes - src: http://andrewradev.com/2011/05/08/vim-regexes/
" noremap / /\v
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

"
" STOP  search related configs and helps
