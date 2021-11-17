" """"""""""""""""""""""""""""""""""""""
" "    Vim Plugin section              "
" """"""""""""""""""""""""""""""""""""""
" Plug 'jfo/hound.vim'

call plug#begin($VIMRUNTIME."\Plugged")
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'gruvbox-community/gruvbox'
Plug 'https://github.com/junegunn/vim-easy-align'
Plug 'https://github.com/scrooloose/nerdcommenter'
Plug 'https://github.com/scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'https://github.com/ivalkeen/nerdtree-execute.git'
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
Plug 'puremourning/vimspector'
Plug 'szw/vim-maximizer'
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
" Plug 'deoplete-plugins/deoplete-jedi'
" Plug 'davidhalter/jedi-vim'
" Plug 'Shougo/context_filetype.vim'
" Plug 'davidhalter/jedi-vim'
"

call plug#end()

""""""""""""""""""""""""""""""""""""""
"          dictionary and vim-G      "
""""""""""""""""""""""""""""""""""""""
vmap <C-D> :Dict <CR><C-W>L<C-W><C-H>ea:<Space>
nmap <C-D> *Nyiw:Dict <CR><C-W>L<C-W><C-H>ea:<Space>
" imap <C-D> <left><esc> *Nyiw:Dict <CR><C-W>L<C-W><C-H>ea:<Space>
imap <C-D> <left><esc> *Nyiw:Google <C-V> definition<CR>
nmap <Space>d *Nyiw:Google <C-V> definition<CR>
vmap <Space>d y:Google <C-V> definition<CR>
".....................................

""""""""""""""""""""""""""""""""""""""
"           NERDTree                 "
""""""""""""""""""""""""""""""""""""""
let NERDTreeShowHidden=1
let NERDTreeShowBookmarks=1
noremap <Space>e :NERDTree<CR>
noremap <Space>E :NERDTree
noremap <Space>t :FufFile<CR>
".....................................
"
""""""""""""""""""""""""""""""""""""""
"           Airline                  "
""""""""""""""""""""""""""""""""""""""
" enable tabline
let g:airline#extensions#tabline#enabled = 1

" air-line
let g:airline_powerline_fonts = 0
let g:airline_section_c = '%f'
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
"           Surrounding              "
""""""""""""""""""""""""""""""""""""""
vmap s S
".....................................

""""""""""""""""""""""""""""""""""""""
"           Vimspector               "
""""""""""""""""""""""""""""""""""""""
let g:vimspector_enable_mappings = 'HUMAN'
 func! GotoWindow(id)
   :call win_gotoid(a:id)
 endfun
 func! AddToWatch()
   let word = expand("<cexpr>")
   call vimspector#AddWatch(word)
 endfunction
 let g:vimspector_base_dir = expand('$HOME/.config/vimspector-config')
 let g:vimspector_base_dir = expand('$HOME/.config/vimspector-config')
 let g:vimspector_sidebar_width = 60
 nnoremap <leader>da :call vimspector#Launch()<CR>
 nnoremap <leader>dc :call GotoWindow(g:vimspector_session_windows.code)<CR>
 nnoremap <leader>dv :call GotoWindow(g:vimspector_session_windows.variables)<CR>
 nnoremap <leader>dw :call GotoWindow(g:vimspector_session_windows.watches)<CR>
 nnoremap <leader>ds :call GotoWindow(g:vimspector_session_windows.stack_trace)<CR>
 nnoremap <leader>do :call GotoWindow(g:vimspector_session_windows.output)<CR>
 nnoremap <leader>di :call AddToWatch()<CR>
 nnoremap <leader>dx :call vimspector#Reset()<CR>
 nnoremap <leader>dX :call vimspector#ClearBreakpoints()<CR>
"  nnoremap <S-k> :call vimspector#StepOut()<CR>
"  nnoremap <S-l> :call vimspector#StepInto()<CR>
"  nnoremap <S-j> :call vimspector#StepOver()<CR>
 nnoremap <leader>d_ :call vimspector#Restart()<CR>
 nnoremap <leader>dn :call vimspector#Continue()<CR>
 nnoremap <leader>drc :call vimspector#RunToCursor()<CR>
 nnoremap <leader>dh :call vimspector#ToggleBreakpoint()<CR>
 nnoremap <leader>de :call vimspector#ToggleConditionalBreakpoint()<CR>
 let g:vimspector_sign_priority = {
   \    'vimspectorBP':         998,
   \    'vimspectorBPCond':     997,
   \    'vimspectorBPDisabled': 996,
   \    'vimspectorPC':         999,
   \ }

"""""""""""""""""""""""""""""""""""""""

" """"""""""""""""""""""""""""""""""""""
" "           Ultisnips                "
" """"""""""""""""""""""""""""""""""""""
" " C:\Users\Jean\AppData\Local\nvim\snips\python.snippets
" " let g:UltiSnipsSnippetDirectories=[$HOME.'/Appdata/local/nvim/snips']=1
" " let NERDTreeShowBookmarks=1
" " noremap <Space>e :NERDTree<CR>
" " noremap <Space>E :NERDTree
" " " noremap <Space>t :FufFile<CR>
".....................................
"



""""""""""""""""""""""""""""""""""""""
""           Plug 'junegunn/fzf       "
"""""""""""""""""""""""""""""""""""""""
"noremap <Leader>p :Files<CR>
"" This is the default extra key bindings
"let g:fzf_action = {
"  \ 'ctrl-t': 'tab split',
"  \ 'ctrl-x': 'split',
"  \ 'ctrl-v': 'vsplit' }
"
"" Enable per-command history.
"" CTRL-N and CTRL-P will be automatically bound to next-history and
"" previous-history instead of down and up. If you don't like the change,
"" explicitly bind the keys to down and up in your $FZF_DEFAULT_OPTS.
"let g:fzf_history_dir = '~/.local/share/fzf-history'
"
"map <C-f> :Files<CR>
"map <leader>b :Buffers<CR>
"nnoremap <leader>g :Rg<CR>
"nnoremap <leader>t :Tags<CR>
"nnoremap <leader>m :Marks<CR>
"
"
"let g:fzf_tags_command = 'ctags -R'
"" Border color
"let g:fzf_layout = {'up':'~90%', 'window': { 'width': 0.8, 'height': 0.8,'yoffset':0.5,'xoffset': 0.5, 'highlight': 'Todo', 'border': 'sharp' } }
"
"let $FZF_DEFAULT_OPTS = '--layout=reverse --info=inline'
"let $FZF_DEFAULT_COMMAND="rg --files --hidden"
"
"
"" Customize fzf colors to match your color scheme
"let g:fzf_colors =
"\ { 'fg':      ['fg', 'Normal'],
"  \ 'bg':      ['bg', 'Normal'],
"  \ 'hl':      ['fg', 'Comment'],
"  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
"  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
"  \ 'hl+':     ['fg', 'Statement'],
"  \ 'info':    ['fg', 'PreProc'],
"  \ 'border':  ['fg', 'Ignore'],
"  \ 'prompt':  ['fg', 'Conditional'],
"  \ 'pointer': ['fg', 'Exception'],
"  \ 'marker':  ['fg', 'Keyword'],
"  \ 'spinner': ['fg', 'Label'],
"  \ 'header':  ['fg', 'Comment'] }
"
""Get Files
"command! -bang -nargs=? -complete=dir Files
"    \ call fzf#vim#files(<q-args>, fzf#vim#with_preview({'options': ['--layout=reverse', '--info=inline']}), <bang>0)
"
"
"" Get text in files with Rg
"command! -bang -nargs=* Rg
"  \ call fzf#vim#grep(
"  \   'rg --column --line-number --no-heading --color=always --smart-case '.shellescape(<q-args>), 1,
"  \   fzf#vim#with_preview(), <bang>0)
"
"" Ripgrep advanced
"function! RipgrepFzf(query, fullscreen)
"  let command_fmt = 'rg --column --line-number --no-heading --color=always --smart-case %s || true'
"  let initial_command = printf(command_fmt, shellescape(a:query))
"  let reload_command = printf(command_fmt, '{q}')
"  let spec = {'options': ['--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command]}
"  call fzf#vim#grep(initial_command, 1, fzf#vim#with_preview(spec), a:fullscreen)
"endfunction
"
"command! -nargs=* -bang RG call RipgrepFzf(<q-args>, <bang>0)
"
"" Git grep
"command! -bang -nargs=* GGrep
"  \ call fzf#vim#grep(
"  \   'git grep --line-number '.shellescape(<q-args>), 0,
"  \   fzf#vim#with_preview({'dir': systemlist('git rev-parse --show-toplevel')[0]}), <bang>0)
"".....................................
"
""""""" Override configs by directory
" Plug 'arielrossanigo/dir-configs-override.vim'
"""""" Search results counter
" Plug 'vim-scripts/IndexedSearch'
"""""" A couple of nice colorschemes
" Plug 'fisadev/fisa-vim-colorscheme'
" Plug 'patstockwell/vim-monokai-tasty'
"""""" Pending tasks list
"Plug 'fisadev/FixedTaskList.vim'
"Plug 'roxma/nvim-yarp'
"Plug 'roxma/vim-hug-neovim-rpc'
"""""" Python autocompletion
"Plug 'deoplete-plugins/deoplete-jedi'
"""""" Completion from other opened files
"""""" Just to add the python go-to-definition and similar features, autocompletion
"""""" from this plugin is disabled
"""""" Indent text object
"Plug 'michaeljsmith/vim-indent-object'
"""""" Indentation based movements
"Plug 'jeetsukumaran/vim-indentwise'
"""""" Better language packs
"Plug 'sheerun/vim-polyglot'
"""""" Ack code search (requires ack installed in the system)
"Plug 'mileszs/ack.vim'
"""""" Paint css colors with the real color
"Plug 'lilydjwg/colorizer'
"""""" Window chooser
"Plug 't9md/vim-choosewin'
"""""" Automatically sort python imports
"Plug 'fisadev/vim-isort'
"""""" Highlight matching html tags
"Plug 'valloric/MatchTagAlways'
"""""" Generate html in a simple way
"Plug 'mattn/emmet-vim'
"""""" Git integration
"Plug 'tpope/vim-fugitive'
"""""" Git/mercurial/others diff icons on the side of the file lines
"Plug 'mhinz/vim-signify'
"""""" Yank history navigation
"Plug 'vim-scripts/YankRing.vim'
"""""" Linters
"Plug 'neomake/neomake'
"" Relative numbering of lines (0 is the current line)
"" (disabled by default because is very intrusive and can't be easily toggled
"" on/off. When the plugin is present, will always activate the relative
"" numbering every time you go to normal mode. Author refuses to add a setting
"" to avoid that)
"Plug 'myusuf3/numbers.vim'
"" Nice icons in the file explorer and file type status line.
"Plug 'ryanoasis/vim-devicons'
"
"
"" Consoles as buffers (neovim has its own consoles as buffers)
"Plug 'rosenfeld/conque-term'
"" XML/HTML tags navigation (neovim has its own)
"Plug 'vim-scripts/matchit.zip'
"
" Code searcher. If you enable it, you should also configure g:hound_base_url 
" and g:hound_port, pointing to your hound instance
" Plug 'mattn/webapi-vim'

