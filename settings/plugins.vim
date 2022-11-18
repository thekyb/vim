""""""""""""""""""""""""""""""""""""""
" "    Vim Plugin section              "
" """"""""""""""""""""""""""""""""""""""
" Plug 'jfo/hound.vim'

call plug#begin($VIMRUNTIME."\Plugged")
" pomorodo timer
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'gruvbox-community/gruvbox'
Plug 'https://github.com/junegunn/vim-easy-align'
Plug 'https://github.com/scrooloose/nerdcommenter'
Plug 'https://github.com/scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" Plug 'https://github.com/ivalkeen/nerdtree-execute.git'
Plug 'https://github.com/szw/vim-dict.git'
Plug 'szw/vim-g'
Plug 'https://github.com/vim-scripts/dbext.vim.git'
Plug 'https://github.com/tomtom/tcomment_vim.git'
" Plug 'https://github.com/ternjs/tern_for_vim', {'do':'npm install'}
Plug 'https://github.com/fatih/vim-go.git',{ 'do': ':GoUpdateBinaries' }
Plug 'https://github.com/tpope/vim-surround'
Plug 'https://github.com/itchyny/lightline.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'https://github.com/Yggdroot/indentLine.git'
" Plug 'https://github.com/koron/minimap-vim.git'
Plug 'https://github.com/tpope/vim-dadbod.git'
Plug 'https://github.com/aserebryakov/vim-todo-lists.git'
Plug 'https://github.com/vim-scripts/HTML-AutoCloseTag.git'
Plug 'https://github.com/mattn/emmet-vim.git'
Plug 'https://github.com/szw/vim-g'
" Plug 'airblade/vim-rooter' : it should be good to have a root for the project, but it slows down the network access
Plug 'https://github.com/tpope/vim-sensible.git'
" Plug 'powerline/powerline'

Plug 'vim-scripts/AutoComplPop'
Plug 'ap/vim-buftabline'
" Plug 'puremourning/vimspector'
Plug 'szw/vim-maximizer'
Plug 'vimwiki/vimwiki'
" Plug 'airblade/vim-gitgutter'
" Plug 'dense-analysis/ale'
Plug 'majutsushi/tagbar'
" Plug 'vim-scripts/indentpython.vim'
" Plug 'lepture/vim-jinja'
" Plug 'pangloss/vim-javascript'
" Plug 'alvan/vim-closetag'
" Plug 'maxmellon/vim-jsx-pretty'
Plug 'blueyed/vim-diminactive'
Plug 'nanotech/jellybeans.vim'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive' " make git applicable 
Plug 'mbbill/undotree'
Plug 'Shougo/deoplete.nvim'
" Plug 'https://github.com/xavierd/clang_complete'
" Plug 'deoplete-plugins/deoplete-jedi'
" Plug 'davidhalter/jedi-vim'
" Plug 'Shougo/context_filetype.vim'
" Plug 'davidhalter/jedi-vim'
Plug 'Dyng/ctrlsf.vim'
Plug 'https://github.com/jceb/vim-orgmode'
Plug 'ferrine/md-img-paste.vim'

call plug#end()

""""""""""""""""""""""""""""""""""""""
"          dictionary and vim-G      "
""""""""""""""""""""""""""""""""""""""
vmap <C-D> :Dict <CR><C-W>L<C-W><C-H>ea:<Space>
nmap <C-D> *Nyiw:Dict <CR><C-W>L<C-W><C-H>ea:<Space>
" imap <C-D> <left><esc> *Nyiw:Dict <CR><C-W>L<C-W><C-H>ea:<Space>
imap <C-D> <left><esc> *Nyiw:Google <C-V> definition<CR>
nmap <Space>w *Nyiwe:Google <C-V> definition<CR>
nmap <Space>d *Nyiwe:Google <C-V> definition<CR>
".....................................

""""""""""""""""""""""""""""""""""""""
"           NERDTree                 "
""""""""""""""""""""""""""""""""""""""
let g:clang_library_path='/usr/lib/llvm-3.8/lib'
"yD:NERDTree
noremap <Space>e :NERDTree <CR>
noremap <Space>E :lcd %:p:h<CR>:NERDTree <CR>
".....................................
"

""""""""""""""""""""""""""""""""""""""
"           Clang_complete           "
""""""""""""""""""""""""""""""""""""""
let NERDTreeShowHidden=1
let NERDTreeShowBookmarks=1
".....................................
"
""""""""""""""""""""""""""""""""""""""
"           Airline                  "
""""""""""""""""""""""""""""""""""""""
" enable tabline
let g:airline#extensions#tabline#enabled = 1

" air-line
let g:airline_powerline_fonts = 0
let g:airline_section_c = '%F'
" Always show tabs
set showtabline=2

".....................................

""""""""""""""""""""""""""""""""""""""
"           Commentary               "
""""""""""""""""""""""""""""""""""""""
nmap  gcc
vmap  gcc
".....................................

""""""""""""""""""""""""""""""""""""""
"           Commentary               "
""""""""""""""""""""""""""""""""""""""
nmap <F8> :TagbarToggle<CR>
".....................................

""""""""""""""""""""""""""""""""""""""
"           Surrounding              "
""""""""""""""""""""""""""""""""""""""
" vmap s S
".....................................

""""""""""""""""""""""""""""""""""""""
"           VimWiki                  "
" C:\Users\jean\vimwiki\index.wiki
""""""""""""""""""""""""""""""""""""""
nnoremap <leader>d /daily<CR>
let g:vimwiki_list = [{'path': '~/my_site/', 'syntax': 'markdown', 'ext': '.md'}]
command! Vt execute ":VimwikiTable"
command! VT execute ":VimwikiTable"

nnoremap <leader>x 0i~~<Esc>A~~<Esc>
vmap <leader>x xi~~<C-v>~~<Esc>
".....................................

""""""""""""""""""""""""""""""""""""""
"           CtrlSF                   "
""""""""""""""""""""""""""""""""""""""
let g:ctrlsf_backend = 'C:\Work'
".....................................

let g:ctrlsf_extra_backend_args = {
    \ 'pt': '--home-ptignore'
    \ }

""""""""""""""""""""""""""""""""""""""
"           md-img-paste             "
""""""""""""""""""""""""""""""""""""""
function! g:LatexPasteImage(relpath)
    execute "normal! i\\includegraphics{" . a:relpath . "}\r\\caption{I"
    let ipos = getcurpos()
    execute "normal! a" . "mage}"
    call setpos('.', ipos)
    execute "normal! ve\<C-g>"
endfunction

autocmd FileType markdown let g:PasteImageFunction = 'g:MarkdownPasteImage'
autocmd FileType tex let g:PasteImageFunction = 'g:LatexPasteImage'
".....................................

" """"""""""""""""""""""""""""""""""""""
" "           Ultisnips                "
" """"""""""""""""""""""""""""""""""""""
" " C:\Users\Jean\AppData\Local\nvim\snips\python.snippets
" " let g:UltiSnipsSnippetDirectories=[$HOME.'/Appdata/local/nvim/snips']=1
" " let NERDTreeShowBookmarks=1
" " noremap <Space>e :NERDTree<CR>
" " noremap <Space>E :~~NERDTree~~
" " " noremap <Space>t :FufFile<CR>
".....................................

""""""""""""""""""""""""""""""""""""""
""           Plug 'junegunn/fzf       "
"""""""""""""""""""""""""""""""""""""""
nmap fzf :FZF 
nmap <leader>f :FZF<CR>
let g:fzf_layout = { 'down': '30%' }
let g:fzf_colors =
\ { "fg":      ["fg", "Normal"],
  \ "bg":      ["bg", "Normal"],
  \ "hl":      ["fg", "IncSearch"],
  \ "fg+":     ["fg", "CursorLine", "CursorColumn", "Normal"],
  \ "bg+":     ["bg", "CursorLine", "CursorColumn"],
  \ "hl+":     ["fg", "IncSearch"],
  \ "info":    ["fg", "IncSearch"],
  \ "border":  ["fg", "Ignore"],
  \ "prompt":  ["fg", "Comment"],
  \ "pointer": ["fg", "IncSearch"],
  \ "marker":  ["fg", "IncSearch"],
  \ "spinner": ["fg", "IncSearch"],
  \ "header":  ["fg", "WildMenu"] }


" """"""""""""""""""""""""""""""""""""""
" "           Pomorodo                 "
" """"""""""""""""""""""""""""""""""""""
" " Duration of a pomodoro in minutes (default: 25)
" let g:pomodoro_time_work = 25
"
" " Duration of a break in minutes (default: 5)
" let g:pomodoro_time_slack = 5 
"
" " Log completed pomodoros, 0 = False, 1 = True (default: 0)
" let g:pomodoro_do_log = 1 
"
" " Path to the pomodoro log file (default: /tmp/pomodoro.log)
" let g:pomodoro_log_file = "/tmp/pomodoro.log" 
"
" set statusline=%#ErrorMsg#%{pomo#status_bar()}%#StatusLine# 
" let g:pomodoro_notification_cmd = "mpg123 -q ~/.vim/pomodoro-notification.mp3"
" " let g:pomodoro_notification_cmd = 'zenity --notification --text="Pomodoro finished"''
" ".....................................
 
