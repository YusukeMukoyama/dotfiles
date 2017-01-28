source /Users/y-mukoyama/.pyenv/versions/3.5.0/lib/python3.5/site-packages/powerline/bindings/vim/plugin/powerline.vim
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup

syntax enable
set background=dark
colorscheme hybrid

source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

set columns=200
set lines=80

set langmenu=en_US.UTF-8
lang C
set helplang=en

set guifont=RobotoMonoForPowerline-Regular:h14
set antialias
set guicursor=a:blinkon0
set showtabline=2

set mouse=a
set nomousefocus

set imdisable
