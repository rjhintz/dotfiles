"2015 12 17                                                                    
"Rev 2015 12 19
set encoding=utf8
colorscheme default
set autoindent
syntax enable
set tabstop=4
set softtabstop=4
set expandtab
set relativenumber
set number
" show command in bottom bar
set showcmd
set cursorline
filetype indent on
"graphical menu of all the matches you can cycle through
set wildmenu
set lazyredraw
" highlight matching [{()}] 
set showmatch
" search as characters are entered
set incsearch
" highlight matches
set hlsearch
if has("autocmd")
   " Enable file type detection.
   " Use the default filetype settings, so that mail gets 'tw' set to 72,
   " 'cindent' is on in C files, etc.
   " Also load indent files, to automatically do language-dependent indenting.
   filetype plugin indent on
   " ...
endif
autocmd FileType html setlocal shiftwidth=2 tabstop=2
autocmd FileType python setlocal expandtab shiftwidth=4 softtabstop=4

