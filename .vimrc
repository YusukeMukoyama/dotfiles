" dein.vim
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath^=~/.vim/repos/github.com/Shougo/dein.vim

" Required:
call dein#begin(expand('~/.vim/repos'))

" Let dein manage dein
" Required:
call dein#add('Shougo/dein.vim')

" Add or remove your plugins here:
call dein#add('Shougo/neocomplete.vim')
call dein#add('marcus/rsense')
call dein#add('supermomonga/neocomplete-rsense.vim')
call dein#add('Shougo/neosnippet.vim')
call dein#add('Shougo/neosnippet-snippets')
call dein#add('mattn/emmet-vim')
call dein#add('tpope/vim-surround')
call dein#add('scrooloose/syntastic')
call dein#add('scrooloose/syntastic')
call dein#add('tpope/vim-endwise')
call dein#add('Shougo/unite.vim')
call dein#add('scrooloose/nerdtree')
call dein#add('valloric/matchtagalways')
" You can specify revision/branch/tag.
call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

" Required:
call dein#end()

" Required:
filetype plugin indent on

" If you want to install not installed plugins on startup.
"if dein#check_install()
"  call dein#install()
"endif

" syntax, rubocop
let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': ['ruby'] }
let g:syntastic_ruby_checkers = ['rubocop']

" rsense
let g:rsenseUseOmniFunc = 1

" unite
let g:unite_enable_start_insert = 1
let g:unite_enable_split_vertically = 0
let g:unite_winwidth = 40
nnoremap <silent> ,uf :<C-u>UniteWithBufferDir -buffer-name=files file file/new<CR>
nnoremap <silent> ,um :<C-u>Unite  file_mru <CR>
nnoremap <silent> ,urc :<C-u>Unite file_rec/async:app/controllers/ <CR>
nnoremap <silent> ,urfc :<C-u>Unite file file/new -input=app/controllers/ <CR>
nnoremap <silent> ,urm :<C-u>Unite file_rec/async:app/models/ <CR>
nnoremap <silent> ,urfm :<C-u>Unite file file/new -input=app/models/ <CR>
nnoremap <silent> ,urv :<C-u>Unite file_rec/async:app/views/ <CR>
nnoremap <silent> ,urfv :<C-u>Unite file file/new -input=app/views/ <CR>
nnoremap <silent> ,urs :<C-u>Unite file_rec/async:app/assets/stylesheets/ <CR>
nnoremap <silent> ,urfs :<C-u>Unite file file/new -input=app/assets/stylesheets/ <CR>
nnoremap <silent> ,urj :<C-u>Unite file_rec/async:app/assets/javascripts/ <CR>
nnoremap <silent> ,urfj :<C-u>Unite file file/new -input=app/assets/javascripts/ <CR>
nnoremap <silent> ,uro :<C-u>Unite file_rec/async:config/ <CR>
nnoremap <silent> ,urfo :<C-u>Unite file file/new -input=config/ <CR>
nnoremap <silent> ,url :<C-u>Unite file_rec/async:lib/ <CR>
nnoremap <silent> ,urfl :<C-u>Unite file file/new -input=lib/ <CR>
nnoremap <silent> ,urr :<C-u>Unite file_rec/async:spec/ <CR>
nnoremap <silent> ,urfr :<C-u>Unite file file/new -input=spec/ <CR>

" nerdtree
nnoremap <silent><C-e> :NERDTreeToggle<CR>
let g:mta_use_matchparen_group = 1

"MatchTagAlways
let g:mta_filetypes = {
    \ 'html' : 1,
    \ 'xhtml' : 1,
    \ 'xml' : 1,
    \ 'jinja' : 1,
    \ 'php' : 1,
    \}

" font
set guifont=RictyDiminishedDiscord-Regular:h14

"クリップボードをMacと連携する
set clipboard=unnamed

"ハイライト表示
set hlsearch

" 表示行単位の上下移動
noremap j gj
noremap k gk
noremap <Down> gj
noremap <Up> gk

"論理行単位の上下移動
noremap gj j
noremap gk k

" insertモードから抜ける
inoremap <silent> jj <ESC>
inoremap <silent> っj <ESC>

" キーバインド
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sh <C-w>h

"インデント関連
set autoindent 
set smartindent
set smarttab
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set encoding=utf-8
 
"ファイルタイプによるインデント設定
augroup fileTypeIndent
  autocmd!
  autocmd BufNewFile,BufRead *.php setlocal tabstop=4 softtabstop=4 shiftwidth=4
augroup END

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
nnoremap <F6> :<C-u>source ~/.vimrc<CR>

