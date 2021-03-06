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

""""""""""""""""""""""""""""""""""""""
"           General Settings         "
""""""""""""""""""""""""""""""""""""""
syntax enable
syntax sync minlines=256
set ttyfast
set tabstop=4 shiftwidth=4 expandtab
set smarttab                                                         " tab and backspace are smart " 
set encoding=utf-8

"""""""""""""""""""""""""""""""""""""""
"           GUI Stuff                 "
"""""""""""""""""""""""""""""""""""""""
set guioptions -=T
set mouse=r                             " Enable your mouse
set mouse=a
set mousefocus
set mousemodel=extend " Enable mouse support
set selectmode=mouse

"""""""""""""""""""""""""""""""""""""""
"           Menu completions          "
"""""""""""""""""""""""""""""""""""""""
set wildmode=full wildmenu                            " Command-line tab completion
set infercase                                         " AutoComplete in Vim
"filetype plugin on
"set omnifunc=syntaxcomplete#Complete
set completeopt=longest,menu,menuone
set wildignore+=*.o,*.obj,*.pyc,*.DS_STORE,*.db,*.swc

""""""""""""""""""""""""""""""""""""""
"           TextPage feature        "
""""""""""""""""""""""""""""""""""""""
set nowrap                              " Display long lines as just one line

"""""""""""""""""""""""""""""""""""""""
"           Spelling                  "
"""""""""""""""""""""""""""""""""""""""
if v:version >= 700
  setlocal spelllang=en
  nmap <Space>ll :set spell!<CR>
endif
"   Correct some spelling mistakes    "
ia teh      the
ia htis     this
ia tihs     this
ia funciton function
ia fucntion function
ia funtion  function
ia retunr   return
ia reutrn   return
ia sefl     self
ia eslf     self


"" set guicursor=
" set hidden                              " Required to keep multiple buffers open multiple buffers
"set noswapfile
"set encoding=utf-8                      " The encoding displayed
"set pumheight=10                        " Makes popup menu smaller
"set fileencoding=utf-8                  " The encoding written to file
"set ruler              			            " Show the cursor position all the time
"set cmdheight=2                         " More space for displaying messages
"set iskeyword+=-                      	" treat dash separated words as a word text object"
"set splitbelow                          " Horizontal splits will automatically be below
"set splitright                          " Vertical splits will automatically be to the right
"set guifont=Lucida_Console:h11
"" set guifont=Roboto mono:h13
"
"" " set noerrorbells
"set tabstop=4 softtabstop=4
"set shiftwidth=4
"" set expandtab
"" set smartindent
"" set termguicolors
"" " set noshowmode
"" set signcolumn=yes
"set autoread wildmode=longest,list,full
"set spell spelllang=en_us
"
"" set statusline=
"" set statusline+=%#IncSearch#
"" set statusline+=\ %y
"" set statusline+=\ %r
"" set statusline+=%#CursorLineNr#
"" set statusline+=\ %F
"" set statusline+=%= "Right side settings
"" set statusline+=%#Search#
"" set statusline+=\ %l/%L
"" set statusline+=\ [%c]
"" "
"
""
"""Quick save command
"noremap <Space>s :w<CR>
"vnoremap <Space>s <C-C>:w<CR>
"""Tab backword in insertmode
"inoremap <S-Tab> <C-d>
"inoremap <C-j> <esc>l
"vnoremap <C-j> <esc>l
"noremap <Space>q :q<CR>
"noremap <Space>Q :q!<CR>
"
"vnoremap y ygy<esc>
"vnoremap Y y
