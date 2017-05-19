let mapleader = "\<Space>"
map <Leader>i gg=<S-g><C-o><C-o>zz

set smartcase
set ignorecase
set cursorline
set wildmode=list,full
set hidden
set confirm
set wrapscan
set showmatch
set laststatus=2
set showtabline=2
set noshowmode
set noundofile
set t_Co=254

"インデント関連
set autoindent
set nosmartindent
set smarttab
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set encoding=utf-8
setlocal indentkeys+=0#

"ファイル関連
set autoread
set nobackup
set noswapfile

"インクリメンタルサーチを行う
set incsearch

"行番号を表示する
set number

" font
set guifont=SauceCodePowerline-Regular:h12
set antialias

set clipboard=unnamed
set hlsearch

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

" insertモードから抜ける
inoremap <silent> jj <ESC>

" 画面移動
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sh <C-w>h

"自動整形
nnoremap <silent><C-l> gg<S-v>G=<C-o><C-o>

" タブ関連
map <silent> [Tag]c :tablast <bar> tabnew<CR>
map <silent> [Tag]x :tabclose<CR>
map <silent> [Tag]n :tabnext<CR>
map <silent> [Tag]p :tabprevious<CR>

" The prefix key.
nnoremap [Tag] <Nop>
nmap t [Tag]

augroup HighlightSpaces
  autocmd!
  autocmd VimEnter,WinEnter,ColorScheme * highlight TrailingSpaces term=underline guibg=Red ctermbg=Red
  autocmd VimEnter,WinEnter * match TrailingSpaces /\s\+$/
  autocmd VimEnter,WinEnter * match TrailingSpaces /　/
augroup END

"ファイルタイプによるインデント設定
augroup fileTypeIndent
  autocmd!
  autocmd BufNewFile,BufRead *.python setlocal tabstop=4 softtabstop=4 shiftwidth=4 commentstring=#%s
augroup END

" dein.vim
let s:dein_dir = expand('~/.cache/dein')
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

if &runtimepath !~# '/dein.vim'
  if !isdirectory(s:dein_repo_dir)
    execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
  endif
  execute 'set runtimepath^=' . fnamemodify(s:dein_repo_dir, ':p')
endif

if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)

  " Load TOML
  let g:rc_dir = expand('~/.vim/rc')
  let s:toml   = g:rc_dir . '/dein.toml'

  " Cache TOML
  call dein#load_toml(s:toml,{'lazy': 0})

  call dein#end()
  call dein#save_state()
endif

if dein#check_install()
  call dein#install()
endif

filetype plugin indent on
autocmd BufNewFile,BufRead *.vue set filetype=html

" vimfiler
let g:vimfiler_as_default_explorer = 1
let g:vimfiler_safe_mode_by_default = 0
nnoremap <silent> ff :<C-u>VimFiler<CR>

" nerdtree
let g:mta_use_matchparen_group = 1
let NERDTreeShowHidden = 1

"MatchTagAlways
let g:mta_filetypes = {
      \ 'html' : 1,
      \ 'xhtml' : 1,
      \ 'xml' : 1,
      \ 'jinja' : 1,
      \ 'php' : 1,
      \}

" unite
let g:unite_enable_start_insert=1
let g:unite_enable_ignore_case = 1  
let g:unite_enable_smart_case = 1

nnoremap <silent> ,f :<C-u>UniteWithBufferDir -buffer-name=files file<CR>
nnoremap <silent> ,b :<C-u>Unite buffer<CR>
nnoremap <silent> ,m :<C-u>Unite file_mru<CR>
nnoremap <silent> ,a :<C-u>UniteBookmarkAdd<CR>
nnoremap <silent> ,l :<C-u>Unite bookmark<CR>


"ファイルタイプによるインデント設定
augroup fileTypeIndent
  autocmd!
  autocmd BufNewFile,BufRead *.python setlocal tabstop=4 softtabstop=4 shiftwidth=4 commentstring=#%s
augroup END

" flake8
autocmd BufWritePost *.py call Flake8()
