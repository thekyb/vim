set nocompatible
set path+=**

""""""""""""""""""""""""""""""""""""""
"            Appearance              "
""""""""""""""""""""""""""""""""""""""
set background=dark
" colorscheme obsidian2
" colorscheme gruvbox
colorscheme jellybeans

map <C-F2> :set cursorcolumn!<CR>
" set colorcolumn=120
set cursorline 
set gfn=Consolas:h12 " set guifont font type and size
set lazyredraw
set nocursorcolumn
set relativenumber
set ruler laststatus=2 number title
set rulerformat=%l:%c ruler" Display current column/line
set scrolloff=25  "or set so=20
set titlestring=%f title    " Display filename in terminal window
set nowrap
map <C-F3> :set wrap!<CR>

""""""""""""""""""""""""""""""""""""""
"           General Settings         "
""""""""""""""""""""""""""""""""""""""
syntax on
syntax sync minlines=256
set ttyfast
set tabstop=4 shiftwidth=4 expandtab
set smarttab                                                         " tab and backspace are smart " 
set encoding=utf-8

"""""""""""""""""""""""""""""""""""""""
"           GUI Stuff                 "
"""""""""""""""""""""""""""""""""""""""
set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
" " set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar
set mouse=a
set mousefocus " ## there was an issue in windows setting: the up and down in the first line or the last line moves the focus to the  other pane.
set mousemodel=extend " Enable mouse support
set selectmode=mouse
"
"""""""""""""""""""""""""""""""""""""""
"           Menu completions          "
"""""""""""""""""""""""""""""""""""""""
" set wildmode=full wildmenu                            " Command-line tab completion
" set infercase                                         " AutoComplete in Vim
" filetype plugin on
" "set omnifunc=syntaxcomplete#Complete
" set completeopt=longest,menu,menuone
" set wildignore+=*.o,*.obj,*.pyc,*.DS_STORE,*.db,*.swc
"
" """"""""""""""""""""""""""""""""""""""
" "           TextPage feature        "
" """"""""""""""""""""""""""""""""""""""
" set nowrap                              " Display long lines as just one line
"
" """""""""""""""""""""""""""""""""""""""
" "           Spelling                  "
" """""""""""""""""""""""""""""""""""""""
" if v:version >= 700
"   setlocal spelllang=en
"   nmap <Space>ll :set spell!<CR>
" endif
" "   Correct some spelling mistakes    "
" ia teh      the
" ia htis     this
" ia tihs     this
" ia funciton function
" ia fucntion function
" ia funtion  function
" ia retunr   return
" ia reutrn   return
" ia sefl     self
" ia eslf     self
"
