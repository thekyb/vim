""""""""""""""""""""""""""""""""""""""
" "    Vim Plugin section              "
" """"""""""""""""""""""""""""""""""""""
" Plug 'jfo/hound.vim'

call plug#begin($VIMRUNTIME."\Plugged")
" pomorodo timer
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Plug 'gruvbox-community/gruvbox'
Plug 'https://github.com/itchyny/calendar.vim.git'
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
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'https://github.com/Yggdroot/indentLine.git'
" Plug 'https://github.com/koron/minimap-vim.git'
Plug 'https://github.com/tpope/vim-dadbod.git'
Plug 'https://github.com/aserebryakov/vim-todo-lists.git'
Plug 'https://github.com/vim-scripts/HTML-AutoCloseTag.git'
Plug 'https://github.com/mattn/emmet-vim.git'
Plug 'https://github.com/szw/vim-g'
" Plug 'https://github.com/kien/ctrlp.vim.git'
" Plug 'airblade/vim-rooter' : it should be good to have a root for the project, but it slows down the network access
Plug 'https://github.com/tpope/vim-sensible.git'
" Plug 'powerline/powerline'

Plug 'https://github.com/ervandew/supertab.git'
Plug 'vim-scripts/AutoComplPop'
Plug 'ap/vim-buftabline'
" Plug 'puremourning/vimspector'
Plug 'szw/vim-maximizer'
Plug 'vimwiki/vimwiki'
" Plug 'tbabej/taskwiki'
Plug 'plasticboy/vim-markdown'
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
Plug 'tpope/vim-fugitive' "  A Git wrapper that provides many Git commands within Vim.
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
Plug 'https://github.com/img-paste-devs/img-paste.vim.git'
Plug 'https://github.com/easymotion/vim-easymotion.git'
" Plug 'rrethy/vim-hexokinase',{'do':'make hexokinase'}
call plug#end()

""""""""""""""""""""""""""""""""""""""
"          dictionary and vim-G      "
""""""""""""""""""""""""""""""""""""""
vmap <C-D> :Dict <CR><C-W>L<C-W><C-H>
nmap <C-D> *Nyiw:Dict <CR><C-W>L<C-W><C-H>
" vmap <C-D> :Dict <CR><C-W>L<C-W><C-H>ea:<Space>
" nmap <C-D> *Nyiw:Dict <CR><C-W>L<C-W><C-H>ea:<Space>
" imap <C-D> <left><esc> *Nyiw:Dict <CR><C-W>L<C-W><C-H>ea:<Space>
imap <C-D> <left><esc> *Nyiw:Google <C-R>" definition<CR>
nmap <Space>w *Nyiwe:Google <C-R>" definition<CR>
nmap <Space>d *yiwe:Google <C-R>" definition<CR>
vmap <Space>d y:Google <C-R>" definition<CR>
".....................................

""""""""""""""""""""""""""""""""""""""
"           AutoComplPop             "
""""""""""""""""""""""""""""""""""""""
" :AcpEnable
        " enables auto-popup.

" *:AcpDisable*
" :AcpDisable
        " disables auto-popup.

""""""""""""""""""""""""""""""""""""""
"           NERDTree                 "
""""""""""""""""""""""""""""""""""""""
let g:clang_library_path='/usr/lib/llvm-3.8/lib'
"yD:NERDTree
noremap <leader>e :NERDTree 
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
" let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='jellybeans'

" air-line
" let g:airline_powerline_fonts = 0
" let g:airline_section_c = '%F'
" Always show tabs
" set showtabline=2

".....................................

""""""""""""""""""""""""""""""""""""""
"           Commentary               "
""""""""""""""""""""""""""""""""""""""
nmap <C-/> gcc
imap <C-/> <esc>gcc
vmap <C-/> gc
nmap <F8> :TagbarToggle<CR>
".....................................

""""""""""""""""""""""""""""""""""""""
"           vim-easymotion           "
""""""""""""""""""""""""""""""""""""""
nmap fd <Plug>(easymotion-overwin-f2)
nmap fs <Plug>(easymotion-bd-w)
vmap fs <Plug>(easymotion-bd-w)
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
nnoremap <leader>z /daily<CR>
let g:vimwiki_list = [{'path': '~/my_site/', 'syntax': 'markdown', 'ext': '.md'}]
" let g:vimwiki_ext2syntax = [{'.md': 'markdown', '.markdown': 'markdown', '.mdown': 'markdown'}]
let g:vimwiki_markdown_link_ext = 1
command! Vt execute ":VimwikiTable"
command! VT execute ":VimwikiTable"
nmap <leader>t :VimwikiTable<CR>
nnoremap <leader>x 0i~~<Esc>A~~<Esc>
vmap <leader>x xi~~<C-v>~~<Esc>
nnoremap <leader>c 0i`<Esc>A`<Esc>
vmap <leader>c xi`<C-v>`<Esc>

" au BufNewFile $HOME/my_site/diary/*.md :silent 0r python C:\tools\Vim\settings\vimwikidiarytmp.py
" au BufNewFile $HOME/my_site/diary/*.md test string execute python $VIM/settings/vimwikidiarytmp.py
" autocmd BufNewFile $HOME/my_site/diary/*.md  0r "test string "
".....................................

""""""""""""""""""""""""""""""""""""""
"           TaskWiki                 "
" C:\Users\jean\vimwiki\index.wiki
""""""""""""""""""""""""""""""""""""""
let g:taskwiki_markup_syntax = 'markdown'
let g:markdown_folding = 1
".....................................

""""""""""""""""""""""""""""""""""""""
"           SuperTab                 "
""""""""""""""""""""""""""""""""""""""
set nocompatible
let g:SuperTabDefaultCompletionType = ""
let g:SuperTabDefaultCompletionType = "<c-x><c-o>"

" verbose imap <tab>
" set packloadall 
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
nmap <C-p> cd:FZF<CR>
nmap <leader>f :FZF
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
" "           img-paste-vim            "
" """"""""""""""""""""""""""""""""""""""
autocmd FileType markdown nmap <buffer><silent> <leader>p :call mdip#MarkdownClipboardImage()<CR>
" autocmd FileType markdown nmap <buffer><silent> <leader>p :call mdip#MarkdownClipboardImage()<CR>
nmap <silent><buffer> <leader>p :call mdip#MarkdownClipboardImage()<CR>
" there are some defaults for image directory and image name, you can change them
let g:mdip_imgdir = 'img'
let g:mdip_imgname = 'image'
".....................................

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
 
