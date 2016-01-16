"2015 12 17
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
" 16 = Grey0; 227 = LightGoldenrod1
highlight MatchParen cterm=bold ctermfg=16 ctermbg=227
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
" Toggle number / relative number when entering/leaving Insert mode
" http://stackoverflow.com/questions/28731418/vim-set-number-not-working-on-insertenter
set rnu
function ToggleNumbersOn()
    set rnu!
    set nu
endfunction
function ToggleRelativeOn()
    set nu!
    set rnu
endfunction
autocmd FocusLost * call ToggleNumbersOn()
autocmd FocusGained * call ToggleRelativeOn()
autocmd InsertEnter * call ToggleNumbersOn()
autocmd InsertLeave * call ToggleRelativeOn()
" Highlight trailing white space
" http://vim.wikia.com/wiki/Highlight_unwanted_spaces
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()
