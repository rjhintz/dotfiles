"2015 12 17                                                                    
"Rev 2016 01 08"
set encoding=utf8
"
colorscheme default
"
set autoindent
"
" set background=light
syntax enable
"
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
"
set relativenumber
set number
" show command in bottom bar
set showcmd
set cursorline
"
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
" Color names/values
" http://vim.wikia.com/wiki/Xterm256_color_names_for_console_Vim
" 16 = Grey0; 227 = LightGoldenrod1
highlight Search ctermfg=16 ctermbg=227
highlight Search guifg=16 guibg=227
"
if has("autocmd")
   " Enable file type detection.
   " Use the default filetype settings, so that mail gets 'tw' set to 72,
   " 'cindent' is on in C files, etc.
   " Also load indent files, to automatically do language-dependent indenting.
   filetype plugin indent on
   " ...
endif
"
autocmd FileType html setlocal shiftwidth=2 tabstop=2
autocmd FileType json setlocal shiftwidth=2 tabstop=2
autocmd FileType python setlocal expandtab shiftwidth=4 softtabstop=4
