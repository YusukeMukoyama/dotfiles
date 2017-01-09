let mapleader = "\<Space>"
map <Leader>i gg=<S-g><C-o><C-o>zz

augroup HighlightSpaces
  autocmd!
  autocmd VimEnter,WinEnter,ColorScheme * highlight TrailingSpaces term=underline guibg=Red ctermbg=Red
  autocmd VimEnter,WinEnter * match TrailingSpaces /\s\+$/
  autocmd VimEnter,WinEnter * match TrailingSpaces /　/
augroup END

set ignorecase
set smartcase
set ignorecase
set cursorline
set incsearch
set wildmode=list,full
set hidden
set confirm
set wrapscan
set autoread
set showmatch
set laststatus=2
set showtabline=2
set noshowmode
set t_Co=254

"インデント関連
set autoindent
set smartindent
set smarttab
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set encoding=utf-8

"自動整形
nnoremap <silent><C-l> gg<S-v>G=<C-o><C-o>

" dein.vim
if &compatible
  set nocompatible
endif

" Required:
set runtimepath^=~/.vim/repos/github.com/Shougo/dein.vim

" Required:
call dein#begin(expand('~/.vim/repos'))

" Let dein manage dein
" Required:
call dein#add('Shougo/dein.vim')
call dein#add('Shougo/vimproc.vim', {'build': 'make'})

" Add or remove your plugins here:
call dein#add('Shougo/vimshell.vim')
call dein#add('mattn/emmet-vim')
call dein#add('ctrlpvim/ctrlp.vim')
call dein#add('Shougo/vimproc.vim')
call dein#add('Shougo/unite.vim')
call dein#add('Shougo/neomru.vim')
call dein#add('scrooloose/nerdtree')
call dein#add('lambdalisue/vim-django-support') 
call dein#add('davidhalter/jedi-vim')
call dein#add('thinca/vim-quickrun')
call dein#add('nvie/vim-flake8') 
call dein#add('hynek/vim-python-pep8-indent')
call dein#add('hokaccha/vim-html5validator')

" Required:
call dein#end()

" Required:
filetype plugin indent on



" vimfiler
let g:vimfiler_as_default_explorer = 1
let g:vimfiler_safe_mode_by_default = 0
nnoremap <silent> ff :<C-u>VimFiler<CR>

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
set guifont=SauceCodePowerline-Regular:h12
set antialias

set clipboard=unnamed
set hlsearch

" unite
let g:unite_enable_start_insert=1
let g:unite_enable_ignore_case = 1  
let g:unite_enable_smart_case = 1

nnoremap <silent> ,f :<C-u>UniteWithBufferDir -buffer-name=files file<CR>
nnoremap <silent> ,b :<C-u>Unite buffer<CR>
nnoremap <silent> ,m :<C-u>Unite file_mru<CR>
nnoremap <silent> ,a :<C-u>UniteBookmarkAdd<CR>
nnoremap <silent> ,l :<C-u>Unite bookmark<CR>

" jedi
let g:jedi#completions_command = "<C-N>"
let g:jedi#show_call_signatures = "1"

" quickrun
let g:quickrun_config={'*': {'split': ''}}
let g:quickrun_no_default_key_mappings = 1
nmap <Leader>q <Plug>(quickrun)

" insertモードから抜ける
inoremap <silent> jj <ESC>
inoremap <silent> <C-j> <ESC>

" 画面移動
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sh <C-w>h

"ファイルタイプによるインデント設定
augroup fileTypeIndent
  autocmd!
  autocmd BufNewFile,BufRead *.python setlocal tabstop=4 softtabstop=4 shiftwidth=4 commentstring=#%s
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
set background=dark
colorscheme hybrid

"ambigous width
set ambiwidth=double

" mouse
set mouse=a
set ttymouse=xterm2

" edit vimrc
nnoremap <F5> :<C-u>edit ~/.vimrc<CR>

" The prefix key.
nnoremap [Tag] <Nop>
nmap t [Tag]

" tc 新しいタブを一番右に作る
map <silent> [Tag]c :tablast <bar> tabnew<CR>
" tx タブを閉じる
map <silent> [Tag]x :tabclose<CR>
" tn 次のタブ
map <silent> [Tag]n :tabnext<CR>
" tp 前のタブ
map <silent> [Tag]p :tabprevious<CR>

" flake8
autocmd BufWritePost *.py call Flake8()
