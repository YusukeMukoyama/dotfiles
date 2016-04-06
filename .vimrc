set guifont=RictyDiminishedDiscord-Regular:h12

"クリップボードをMacと連携する
set clipboard=unnamed

"ハイライト表示
set hlsearch

<<<<<<< HEAD
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

=======
>>>>>>> 39e8571ada1afa5469f0c9f9d2a9e0a9fccb110f
"インデント関連
set autoindent 
set smartindent
set smarttab
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set encoding=utf-8
 
"ファイル関連
set hidden
set autoread
set nobackup
set noswapfile
 
"インクリメンタルサーチを行う
set incsearch
 
"行番号を表示する
set number

" grep検索を設定する
set grepformat=%f:%l:%m,%f:%l%m,%f\ \ %l%m,%f
set grepprg=grep\ -nh

" colorscheme
syntax on 
colorscheme molokai
set t_Co=256

filetype plugin on

" open-browser.vim
let g:netrw_nogx = 1 
nmap gx <Plug>(openbrowser-smart-search)
vmap gx <Plug>(openbrowser-smart-search)

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

"------------------------------------
" sass
"------------------------------------
let g:sass_compile_auto = 1
let g:sass_compile_cdloop = 5
let g:sass_compile_cssdir = ['css', 'stylesheet']
let g:sass_compile_file = ['scss', 'sass']
let g:sass_compile_beforecmd = ''
let g:sass_compile_aftercmd = ''

>>>>>>> 39e8571ada1afa5469f0c9f9d2a9e0a9fccb110f
"ambigous width
set ambiwidth=double

"netrw
let g:netrw_liststyle = 3
let g:netrw_altv = 1
let g:netrw_alto = 1

" mouse
set mouse=a
set ttymouse=xterm2

" edit vimrc
nnoremap <F5> :<C-u>edit ~/.vimrc<CR>
nnoremap <F6> :<C-u>sourc ~/.vimrc<CR>
