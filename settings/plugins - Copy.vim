" """"""""""""""""""""""""""""""""""""""
" "    Vim Plugin section              "
" """"""""""""""""""""""""""""""""""""""
" Fisa-vim-config, a config for both Vim and NeoVim
" http://vim.fisadev.com
" version: 12.0.1

" To use fancy symbols wherever possible, change this setting from 0 to 1
" and use a font from https://github.com/ryanoasis/nerd-fonts in your terminal 
" (if you aren't using one of those fonts, you will see funny characters here. 
" Turst me, they look nice when using one of those fonts).
let fancy_symbols_enabled = 0


set encoding=utf-8
let using_neovim = has('nvim')
let using_vim = !using_neovim

" ============================================================================
" Vim-plug initialization
" Avoid modifying this section, unless you are very sure of what you are doing

let vim_plug_just_installed = 0
if using_neovim
    let vim_plug_path = expand('~/.config/nvim/autoload/plug.vim')
else
    let vim_plug_path = expand('c:\tools\vim\vim82\autoload\plug.vim')
endif
if !filereadable(vim_plug_path)
    echo "Installing Vim-plug..."
    echo ""
    if using_neovim
        silent !mkdir -p ~/.config/nvim/autoload
        silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    else
        silent !mkdir -p ~/.vim/autoload
        silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    endif
    let vim_plug_just_installed = 1
endif

" manually load vim-plug the first time
if vim_plug_just_installed
    :execute 'source '.fnameescape(vim_plug_path)
endif

" Obscure hacks done, you can now modify the rest of the config down below 
" as you wish :)
" IMPORTANT: some things in the config are vim or neovim specific. It's easy 
" to spot, they are inside `if using_vim` or `if using_neovim` blocks.

" ============================================================================
" Active plugins
" You can disable or add new ones here:

" this needs to be here, so vim-plug knows we are declaring the plugins we
" want to use
if using_neovim
    call plug#begin("~/.config/nvim/plugged")
else
    call plug#begin("~/.vim/plugged")
endif

" Now the actual plugins:

""""""""""""""""""""""""""""""""""""""
"    Plugins from fisa-vim-config    "
""""""""""""""""""""""""""""""""""""""
" Override configs by directory
Plug 'arielrossanigo/dir-configs-override.vim'
" Code commenter
Plug 'scrooloose/nerdcommenter'
" Better file browser
Plug 'scrooloose/nerdtree'
" Class/module browser
Plug 'majutsushi/tagbar'
" Search results counter
Plug 'vim-scripts/IndexedSearch'
" A couple of nice colorschemes
" Plug 'fisadev/fisa-vim-colorscheme'
Plug 'patstockwell/vim-monokai-tasty'
" Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Code and files fuzzy finder
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
" Pending tasks list
Plug 'fisadev/FixedTaskList.vim'
" Async autocompletion
if using_neovim && vim_plug_just_installed
    Plug 'Shougo/deoplete.nvim', {'do': ':autocmd VimEnter * UpdateRemotePlugins'}
else
    Plug 'Shougo/deoplete.nvim'
endif
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'
" Python autocompletion
Plug 'deoplete-plugins/deoplete-jedi'
" Completion from other opened files
Plug 'Shougo/context_filetype.vim'
" Just to add the python go-to-definition and similar features, autocompletion
" from this plugin is disabled
Plug 'davidhalter/jedi-vim'
" Automatically close parenthesis, etc
Plug 'Townk/vim-autoclose'
" Surround
Plug 'tpope/vim-surround'
" Indent text object
Plug 'michaeljsmith/vim-indent-object'
" Indentation based movements
Plug 'jeetsukumaran/vim-indentwise'
" Better language packs
Plug 'sheerun/vim-polyglot'
" Ack code search (requires ack installed in the system)
Plug 'mileszs/ack.vim'
" Paint css colors with the real color
Plug 'lilydjwg/colorizer'
" Window chooser
Plug 't9md/vim-choosewin'
" Automatically sort python imports
Plug 'fisadev/vim-isort'
" Highlight matching html tags
Plug 'valloric/MatchTagAlways'
" Generate html in a simple way
Plug 'mattn/emmet-vim'
" Git integration
Plug 'tpope/vim-fugitive'
" Git/mercurial/others diff icons on the side of the file lines
Plug 'mhinz/vim-signify'
" Yank history navigation
Plug 'vim-scripts/YankRing.vim'
" Linters
Plug 'neomake/neomake'
" Relative numbering of lines (0 is the current line)
" (disabled by default because is very intrusive and can't be easily toggled
" on/off. When the plugin is present, will always activate the relative
" numbering every time you go to normal mode. Author refuses to add a setting
" to avoid that)
Plug 'myusuf3/numbers.vim'
" Nice icons in the file explorer and file type status line.
Plug 'ryanoasis/vim-devicons'


if using_vim
    " Consoles as buffers (neovim has its own consoles as buffers)
    Plug 'rosenfeld/conque-term'
    " XML/HTML tags navigation (neovim has its own)
    Plug 'vim-scripts/matchit.zip'
endif

" Code searcher. If you enable it, you should also configure g:hound_base_url 
" and g:hound_port, pointing to your hound instance
" Plug 'mattn/webapi-vim'
" Plug 'jfo/hound.vim'

" Tell vim-plug we finished declaring plugins, so it can load them
"================================================
" original plugins
"================================================
Plug 'gruvbox-community/gruvbox'
Plug 'https://github.com/junegunn/vim-easy-align'
Plug 'https://github.com/szw/vim-dict.git'
Plug 'https://github.com/vim-scripts/dbext.vim.git'
" " Plug 'https://github.com/tomtom/tcomment_vim.git'
" " Plug 'https://github.com/ternjs/tern_for_vim', {'do':'npm install'}
" Plug 'https://github.com/fatih/vim-go.git',{ 'do': ':GoUpdateBinaries' }
" Plug 'https://github.com/itchyny/lightline.vim'
" Plug 'https://github.com/Yggdroot/indentLine.git'
" Plug 'https://github.com/koron/minimap-vim.git'
" Plug 'https://github.com/tpope/vim-dadbod.git'
" Plug 'https://github.com/wincent/command-t.git'
" Plug 'https://github.com/aserebryakov/vim-todo-lists.git'
" Plug 'https://github.com/vim-scripts/HTML-AutoCloseTag.git'
" Plug 'https://github.com/szw/vim-g'
" Plug 'airblade/vim-rooter'

call plug#end()
" ============================================================================
" Install plugins the first time vim runs

if vim_plug_just_installed
    echo "Installing Bundles, please ignore key map error messages"
    :PlugInstall
endif

" ============================================================================

" call plug#begin($VIMRUNTIME."\Plugged")
" Plug 'gruvbox-community/gruvbox'
" Plug 'https://github.com/junegunn/vim-easy-align'
" Plug 'scrooloose/nerdcommenter'
" Plug 'https://github.com/scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" Plug 'https://github.com/ivalkeen/nerdtree-execute.git'
" Plug 'https://github.com/szw/vim-dict.git'
" Plug 'https://github.com/vim-scripts/dbext.vim.git'
" Plug 'https://github.com/tomtom/tcomment_vim.git'
" " Plug 'https://github.com/ternjs/tern_for_vim', {'do':'npm install'}
" Plug 'https://github.com/fatih/vim-go.git',{ 'do': ':GoUpdateBinaries' }
" Plug 'https://github.com/tpope/vim-surround'
" Plug 'https://github.com/itchyny/lightline.vim'
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
" Plug 'junegunn/fzf.vim'
" Plug 'https://github.com/Yggdroot/indentLine.git'
" Plug 'https://github.com/koron/minimap-vim.git'
" Plug 'https://github.com/tpope/vim-dadbod.git'
" Plug 'https://github.com/aserebryakov/vim-todo-lists.git'
" Plug 'https://github.com/vim-scripts/HTML-AutoCloseTag.git'
" Plug 'https://github.com/mattn/emmet-vim.git'
" Plug 'https://github.com/szw/vim-g'
" Plug 'airblade/vim-rooter'
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
" "
" "
" call plug#end()
"
" " Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
" Plug 'jiangmiao/auto-pairs'
" Plug 'https://github.com/scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" Plug 'norcalli/nvim-colorizer.lua'
" Plug 'https://github.com/tpope/vim-commentary'
" Plug 'https://github.com/junegunn/vim-easy-align'
" Plug 'https://github.com/ivalkeen/nerdtree-execute.git'
" Plug 'https://github.com/vim-scripts/dbext.vim.git'
" Plug 'https://github.com/koron/minimap-vim.git'
" Plug 'nvim-telescope/telescope.nvim'
" Plug 'https://github.com/vim-scripts/UltiSnips'
" Plug 'https://github.com/vifm/neovim-vifm'
" Plug 'https://github.com/vim-scripts/zoom.vim/blob/master/plugin/zoom.vim'
" Plug 'airblade/vim-gitgutter'
" Plug 'editorconfig/editorconfig-vim'
" Plug 'scrooloose/nerdtree'
" Plug 'https://github.com/terryma/vim-multiple-cursors'
" Plug 'tpope/vim-eunuch'
" Plug 'w0rp/ale'


""""""""""""""""""""""""""""""""""""""
"          dictionary                "
""""""""""""""""""""""""""""""""""""""
vmap <C-D> :Dict <CR><C-W>L<C-W><C-H>ea:<Space>
nmap <C-D> *Nyiw:Dict <CR><C-W>L<C-W><C-H>ea:<Space>
imap <C-D> <left><esc> *Nyiw:Dict <CR><C-W>L<C-W><C-H>ea:<Space>
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
"           Commentary               "
""""""""""""""""""""""""""""""""""""""
nmap  gcc
vmap  gcc
".....................................


""""""""""""""""""""""""""""""""""""""
"           Plug 'junegunn/fzf       "
""""""""""""""""""""""""""""""""""""""
noremap <Leader>p :Files<CR>
" This is the default extra key bindings
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

" Enable per-command history.
" CTRL-N and CTRL-P will be automatically bound to next-history and
" previous-history instead of down and up. If you don't like the change,
" explicitly bind the keys to down and up in your $FZF_DEFAULT_OPTS.
let g:fzf_history_dir = '~/.local/share/fzf-history'

map <C-f> :Files<CR>
map <leader>b :Buffers<CR>
nnoremap <leader>g :Rg<CR>
nnoremap <leader>t :Tags<CR>
nnoremap <leader>m :Marks<CR>


let g:fzf_tags_command = 'ctags -R'
" Border color
let g:fzf_layout = {'up':'~90%', 'window': { 'width': 0.8, 'height': 0.8,'yoffset':0.5,'xoffset': 0.5, 'highlight': 'Todo', 'border': 'sharp' } }

let $FZF_DEFAULT_OPTS = '--layout=reverse --info=inline'
let $FZF_DEFAULT_COMMAND="rg --files --hidden"


" Customize fzf colors to match your color scheme
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

"Get Files
command! -bang -nargs=? -complete=dir Files
    \ call fzf#vim#files(<q-args>, fzf#vim#with_preview({'options': ['--layout=reverse', '--info=inline']}), <bang>0)


" Get text in files with Rg
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --smart-case '.shellescape(<q-args>), 1,
  \   fzf#vim#with_preview(), <bang>0)

" Ripgrep advanced
function! RipgrepFzf(query, fullscreen)
  let command_fmt = 'rg --column --line-number --no-heading --color=always --smart-case %s || true'
  let initial_command = printf(command_fmt, shellescape(a:query))
  let reload_command = printf(command_fmt, '{q}')
  let spec = {'options': ['--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command]}
  call fzf#vim#grep(initial_command, 1, fzf#vim#with_preview(spec), a:fullscreen)
endfunction

command! -nargs=* -bang RG call RipgrepFzf(<q-args>, <bang>0)

" Git grep
command! -bang -nargs=* GGrep
  \ call fzf#vim#grep(
  \   'git grep --line-number '.shellescape(<q-args>), 0,
  \   fzf#vim#with_preview({'dir': systemlist('git rev-parse --show-toplevel')[0]}), <bang>0)
".....................................


