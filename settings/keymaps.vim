""""""""""""""""""""""""""""""""""""""
"           Movement                 "
""""""""""""""""""""""""""""""""""""""
noremap <Space>q :q<CR>
noremap <Space>Q :q!<CR>

"next tabpage
noremap <C-N> :tabnew<CR>
noremap <C-Tab> :tabnext<CR>
noremap <C-S-Tab> :tabprevious<CR>

"trable  historypage
nmap <S-h> :bp<CR>
nmap <S-l> :bn<CR>

nmap <CR> i<CR><Esc>
nmap <S-Enter> a<CR><Esc>
nmap <Space><CR> a<CR><Esc>k$
nmap <Space><S-Enter> a<CR><Esc> a<CR><Esc>k$
nmap <Enter> i<CR><Esc>
nmap é o<esc>
nmap É ko<esc>

" Delete without yanking
nnoremap d "_d
vnoremap d "_d
nnoremap c "_c
" Delete with yanking
nnoremap <S-d> dd
"vnoremap p "_dP
nnoremap x "_x

"  Ê = Alt + Shift + j , Ë  = Alt + Shift + k
nnoremap Ê :m .+1<CR>
nnoremap Ë :m .-2<CR>
inoremap Ê <Esc>:m .+1<CR>==gi
inoremap Ë <Esc>:m .-2<CR>==gi
vnoremap Ë :m '<-2<CR>gv=gv
vnoremap Ê :m '>+1<CR>gv=gv

nnoremap <S-M-j> :m .+1<CR>==
nnoremap <S-M-k> :m .-2<CR>==
inoremap <S-M-j> <Esc>:m .+1<CR>==gi
inoremap <S-M-k> <Esc>:m .-2<CR>==gi
vnoremap <S-M-j> :m '>+1<CR>gv=gv
vnoremap <S-M-k> :m '<-2<CR>gv=gv

vnoremap < <gv
vnoremap > >gv
"Set t current windowindent control
vnoremap y ygv<esc>
vnoremap Y y

nnoremap <M-j> :resize -4<CR>
nnoremap <M-k> :resize +4<CR>
nnoremap <M-h> :vertical resize -4<CR>
nnoremap <M-l> :vertical resize +4<CR>
"
"Page down and up :    'ê'= Alt + j   and  'ë' = Alt + k
"
"
noremap ê 10j 
noremap ë 10k
noremap ì 20l
noremap <down> 10j 
noremap <up> 10k
noremap <left> 20h
noremap <right> 20l
noremap <S-down> 5j 
noremap <S-up> 5k
noremap <S-left> 10h
noremap <S-right> 10l
"end Page down and up 
nnoremap <S-space> i<space><esc>
if @% == '_vsvimrc'
    nnoremap <C-J> o<esc>
    nnoremap <C-U> O<esc>
else 
    nnoremap <C-J> o<esc>
    nnoremap <C-U> O<esc>
endif
map <C-L> <C-W><C-L>
map <C-j> <C-W><C-j>
map <C-k> <C-W><C-k>
map <C-H> <C-W><C-H>

nmap <Tab> i<Tab><esc>l

inoremap <C-J> <Esc>
nnoremap <C-Space> <Esc>l
inoremap <C-Space> <Esc>l
vnoremap <C-Space> <Esc>l

""""""""""""""""""""""""""""""""""""""
"          Search & Replace          "
""""""""""""""""""""""""""""""""""""""
noremap * *N
vnoremap // y/<C-R>"<CR>N
noremap <Space>r :reg<CR>
noremap <Space>t :pu!=strftime('%c')<CR>
noremap <C-f> /
" todo : let's set the config to findout words in folder
" noremap <C-S-f> :vim
noremap / /\c
noremap <S-F> :%s/
" search Registry
" noremap " :reg<CR>
" copy file names
nmap yf :let @* = expand("%")<CR>
nmap yd :let @* = expand("%:p")<CR>
nmap yD :let @* = expand('%:p:h')<CR>

"""""""""""""""""""""""""""""""""""""
"          Runby Languages                  "
""""""""""""""""""""""""""""""""""""""
"run python
nmap <Space>v <Space>syd:!"C:\Users\Jean\AppData\Local\Programs\Microsoft VS Code\Code.exe" "<C-v>"<CR><CR> 
nmap <Space>p <Space>syd:!python "<C-v>"<CR><CR> 
"run Go
nmap <Space>g <Space>syd:GoRun <C-v><CR>
nmap <Space>b <Space>syd:GoBuild <C-v><CR> 


""""""""""""""""""""""""""""""""""""""
"          toggle maps               "
""""""""""""""""""""""""""""""""""""""
map <F3> :Tagbar<CR>
map <F4> :UndotreeToggle<CR>
map <F5> :set relativenumber!<CR>

