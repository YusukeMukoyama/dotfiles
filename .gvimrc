syntax on 
colorscheme molokai
set t_Co=256
set showtabline=2

source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

set guifont=RictyDiminishedDiscord-Regular:h13
set columns=450
set lines=250

set langmenu=en_US.UTF-8
lang C
set helplang=en

set antialias
set guicursor=a:blinkon0

set mouse=a
set nomousefocus

" 挿入モードから抜けた際にIMEをオフ
set imdisable

" transparency
function! s:toggle_transparence()
    if &transparency == 40
        set transparency=0
    else
        set transparency=40
    endif
endfunction
nnoremap <silent> <D-u> :<C-u>call <SID>toggle_transparence()<CR>
