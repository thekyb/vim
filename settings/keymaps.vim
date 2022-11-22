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
imap <S-BS> <ESC>bdwa

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

nnoremap <M-j> :resize -7<CR>
nnoremap <M-k> :resize +7<CR>
nnoremap <M-h> :vertical resize -7<CR>
nnoremap <M-l> :vertical resize +7<CR>
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
noremap <S-down> 20j 
noremap <S-up> 20k
noremap <S-left> 40h
noremap <S-right> 40l
"end Page down and up 
nnoremap <S-space> i<space><esc>
if @% == '_vsvimrc'
    nnoremap <C-J> o<esc>
    nnoremap <C-U> O<esc>
else 
    nnoremap <C-J> o<esc>
    nnoremap <C-U> O<esc>
endif
map <C-l> <C-W><C-l>
map <C-j> <C-W><C-j>
map <C-k> <C-W><C-k>
map <C-h> <C-W><C-h>

nmap <Tab> i<Tab><esc>l
inoremap <C-J> <Esc>
" make a new page to the next
noremap <Space>n :vsp<CR><C-W><C-L>:enew<CR>
" make a new page to the bottom
noremap <Space>h :sp<CR><C-W><C-J>:enew<CR>

""""""""""""""""""""""""""""""""""""""
"          Search & Replace          "
""""""""""""""""""""""""""""""""""""""
noremap * *N
vnoremap // y/<C-R>"<CR>N
noremap <Space>r :reg<CR>
noremap <Space>t :pu!=strftime('%c')<CR>
noremap <Space>T :pu!=strftime('%Y-%m-%d')<CR>
" todo : let's set the config to findout words in folder
" noremap <C-S-f> :vim
noremap <S-F> :%s/
vmap <S-F> :s/

" search Registry
" noremap " :reg<CR>
" copy file names
nmap yf :let @* = expand("%")<CR>:echo '<C-V>'<CR>
nmap yd :let @* = expand("%:p")<CR>:echo '<C-V>'<CR>
nmap yp :echo expand("%:p")<CR>
nmap yD :let @* = expand('%:p:h')<CR>:echo '<C-V>'<CR>

map <C-f> cd:vimgrep /
nmap <C-f> cd:vimgrep /
vmap <C-f> ycd:vimgrep /<C-v>/*.*
nmap <C-right> :cnext<CR>
nmap <C-left> :cbefore<CR>

nmap cd :cd %:p:h<CR>

""""""""""""""""""""""""""""""""""""""
"          Run by executable (cmd)   "
""""""""""""""""""""""""""""""""""""""
"run python
nmap <leader>v <Space>syd:!"C:\Users\Jean\AppData\Local\Programs\Microsoft VS Code\Code.exe" "<C-v>"<CR><CR> 
" nmap <leader>p <Space>syd:!python "<C-v>"<CR><CR> 
"run Go
" nmap <leader>g <Space>syd:GoRun <C-v><CR>
" nmap <leader>b <Space>syd:GoBuild <C-v><CR> 
"run executable file
nmap <leader>c <Space>syd:!"<C-v>"<CR><CR> 
nmap <leader>s <Space>syd:!"C:\Program Files\Sublime Text 3\sublime_text.exe" "<C-v>"<CR><CR> 


""""""""""""""""""""""""""""""""""""""
"          toggle maps               "
""""""""""""""""""""""""""""""""""""""
map <F3> :Tagbar<CR>
map <F4> :UndotreeToggle<CR>
map <F5> :set relativenumber!<CR>

