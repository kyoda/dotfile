syntax on
filetype on
filetype plugin on
filetype indent on

set ambiwidth=double
set nobackup
set fileencodings=utf-8,iso-2022-jp,euc-jp,ucs2le,ucs-2,cp932,jis,sjis
set fileencoding=utf-8
set encoding=utf-8
set termencoding=utf-8

set smartcase
set whichwrap=b,s,h,l,<,>,[,]
set title
set ruler
set matchtime=2
set hlsearch
highlight Comment ctermfg=DarkCyan
set textwidth=0
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set showmatch

set backup
set backupdir=~/.vim/tmp
set ignorecase
set smartcase
set backspace=indent,eol,start

set background=dark
set cursorline

autocmd BufNewFile,BufRead *.{md,mdwn,mkd,mkdn,mark*} set filetype=markdown
autocmd FileType sh setlocal shiftwidth=2 softtabstop=2 tabstop=2

"入力モード時、ステータスラインのカラーを変更
augroup InsertHook
autocmd!
autocmd InsertEnter * highlight StatusLine guifg=#ccdc90 guibg=#2E4340
autocmd InsertLeave * highlight StatusLine guifg=#2E4340 guibg=#ccdc90
autocmd! FileType html setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd! FileType css  setlocal shiftwidth=2 tabstop=2 softtabstop=2
augroup END 
"全角スペース表示
highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=#666666
au BufNewFile,BufRead * match ZenkakuSpace /　/
