set guifont=RictyDiminishedDiscord-Regular:h12

"クリップボードをMacと連携する
set clipboard=unnamed

"ハイライト表示
set hlsearch

" insertモードから抜ける
inoremap <silent> jj <ESC>
inoremap <silent> っj <ESC>

" 挿入モードでのカーソル移動
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-h> <Left>
inoremap <C-l> <Right>

" キーバインド
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sh <C-w>h
nnoremap あ a
nnoremap い i
nnoremap う u
nnoremap お o
nnoremap っd dd
nnoremap っy yy

"インデント関連
set autoindent 
set smartindent
set smarttab
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set encoding=utf-8
 
"変更中のファイルでも、保存しないで他のファイルを表示する
set hidden
 
"インクリメンタルサーチを行う
set incsearch
 
"行番号を表示する
set number

" grep検索を設定する
set grepformat=%f:%l:%m,%f:%l%m,%f\ \ %l%m,%f
set grepprg=grep\ -nh
 
" Note: Skip initialization for vim-tiny or vim-small.
if !1 | finish | endif

if has('vim_starting')
  if &compatible
    set nocompatible               
  endif

  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))
  NeoBundleFetch 'Shougo/neobundle.vim'
  NeoBundle 'scrooloose/nerdtree'
  NeoBundle 'tpope/vim-rails'
  NeoBundle 'tomtom/tcomment_vim'
  NeoBundle 'mattn/emmet-vim'
  NeoBundle 'tpope/vim-surround'
  NeoBundle 'open-browser.vim'
  NeoBundle 'kannokanno/previm'  
  NeoBundle 'AtsushiM/search-parent.vim'
  NeoBundle 'AtsushiM/sass-compile.vim'
call neobundle#end()

filetype plugin indent on

NeoBundleCheck

let NERDTreeShowHidden = 1

" colorscheme
syntax on 
colorscheme molokai
set t_Co=256

filetype plugin on

" open-browser.vim
let g:netrw_nogx = 1 
nmap gx <Plug>(openbrowser-smart-search)
vmap gx <Plug>(openbrowser-smart-search)

"------------------------------------
" sass
"------------------------------------
let g:sass_compile_auto = 1
let g:sass_compile_cdloop = 5
let g:sass_compile_cssdir = ['css', 'stylesheet']
let g:sass_compile_file = ['scss', 'sass']
let g:sass_compile_beforecmd = ''
let g:sass_compile_aftercmd = ''

"ambigous width
set ambiwidth=double

" mouse
set mouse=a
set ttymouse=xterm2
