set nocompatible
set path+=**

""""""""""""""""""""""""""""""""""""""
"            Appearance              "
""""""""""""""""""""""""""""""""""""""
set background=dark
" colorscheme obsidian2
" colorscheme gruvbox
colorscheme jellybeans

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
" Start_Original_Kyb_Here / Run_VimRC / StartUp / 
set hlsearch

""""""""""""""""""""""""""""""""""""""
"           General Settings         "
""""""""""""""""""""""""""""""""""""""
" Enable syntax highlighting
syntax on
syntax sync minlines=256
set ttyfast
set tabstop=4 shiftwidth=4 expandtab
set smarttab                                                         " tab and backspace are smart " 
set smartcase
set encoding=utf-8
" set visualbell

"""""""""""""""""""""""""""""""""""""""
"           GUI Stuff                 "
"""""""""""""""""""""""""""""""""""""""
set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=L  "remove left-hand scroll bar
set mouse=a
set mousefocus " ## there was an issue in windows setting: the up and down in the first line or the last line moves the focus to the  other pane.
set mousemodel=extend " Enable mouse support
set selectmode=mouse
"

""""""""""""""""""""""""""""""""""""""
"          Toggle Maps <F# series>   "
""""""""""""""""""""""""""""""""""""""
" map <F3> :Tagbar<CR>
map <F4> :UndotreeToggle<CR>
map <F5> :set relativenumber!<CR>
map <F9> :set wrap!<CR>
map <F6> :set ignorecase!<CR>

map <C-F2> :set cursorcolumn!<CR>
map <C-F4> :set ignorecase!<CR>


