source $VIMRUNTIME/vimrc_example.vim
" Windows related setups........................
source $VIMRUNTIME/mswin.vim
behave mswin
"...............................................
" source $VIM/settings/mockingmswin.vim
source $VIM/settings/plugins.vim
source $VIM/settings/settings.vim
source $VIM/settings/keymaps.vim
source $VIM/settings/specificSetups.vim
"
"...................................................................
filetype plugin on 
autocmd FileType c,cpp,cs,java setlocal commentstring=//\ %s
autocmd! bufwritepost .vimrc source %
"...................................................................


set diffexpr=MyDiff()
function MyDiff()
    let opt = '-a --binary '
    if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
    if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
    let arg1 = v:fname_in
    if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
    let arg2 = v:fname_new
    if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
    let arg3 = v:fname_out
    if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
    let eq = ''
    if $VIMRUNTIME =~ ' '
        if &sh =~ '\<cmd'
            let cmd = '""' . $VIMRUNTIME . '\diff"'
            let eq = '"'
        else
            let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
        endif
    else
        let cmd = $VIMRUNTIME . '\diff'
    endif
    silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
endfunction


" SeeTab: toggles between showing tabs and using standard listchars
fu! SeeTab() 
    if !exists("g:SeeTabEnabled")
        let g:SeeTabEnabled = 1
        let g:SeeTab_list = &list
        let g:SeeTab_listchars = &listchars
        let regA = @a
        silent! hi SpecialKey guifg=black guibg=magenta ctermfg=black ctermbg=magenta
        set list
        set listchars=tab:\|\
    else
        let &list = g:SeeTab_list
        let &listchars = &listchars
        silent! exe "hi ".substitute(g:SeeTabSpecialKey,'xxx','','e')
        unlet g:SeeTabEnabled g:SeeTab_list g:SeeTab_listchars
    endif
endfunc
com! -nargs=0 SeeTab :call SeeTab()

if has("multi_byte")
    if &termencoding == ""
        let &termencoding = &encoding
    endif
    set encoding=utf-8
    setglobal fileencoding=utf-8
    "setglobal bomb
    set fileencodings=ucs-bom,utf-8,latin1
endif



