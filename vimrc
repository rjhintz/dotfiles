"2016 05 17
" -------------------------------------
set nocompatible
set encoding=utf8
set history=1000
" -------------------------------------
filetype indent on
" -------------------------------------
colorscheme default
" Status line color experiments
" hi User1 ctermfg=190 ctermfg=255 guifg=190 guibg=255
" hi statusline ctermfg=255 ctermfg=190 guifg=190 guibg=255
" end statusline color experiments
"
" -------------------------------------
set autoindent
"
" set background=light
syntax enable
"
" -------------------------------------
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
"
" Display status line always
" :set laststatus=2
" set statusline=%1*%F%m%r%h%w\ [%{&ff}]\ [TYPE=%Y]\ [POS=%v][%p%%]\ %{strftime(\"%H:%M\")}
" set statusline=%F%m%r%h%w\ [%{&ff}]\ [TYPE=%Y]\ [COL=%v][%p%%]
"
" -------------------------------------
set relativenumber
set number
" show command in bottom bar
set showcmd
set cursorline
"
" -------------------------------------
"graphical menu of all the matches you can cycle through
set wildmenu
set lazyredraw
" highlight matching [{()}]
set showmatch
" 196 = Red1 ; 226 = Yellow1
highlight MatchParen cterm=reverse ctermfg=9 ctermbg=226
" search as characters are entered
set incsearch
" highlight matches
set hlsearch
" Color names/values
" http://vim.wikia.com/wiki/Xterm256_color_names_for_console_Vim
" 16 = Grey0; 227 = LightGoldenrod1
highlight Search ctermfg=16 ctermbg=227
highlight Search guifg=16 guibg=227
" highlight Visual
highlight Visual ctermfg=16 ctermbg=227
highlight Visual guifg=16 guibg=227
"
" -------------------------------------
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
" -------------------------------------
" Highlight trailing white space in red
" http://vim.wikia.com/wiki/Highlight_unwanted_spaces
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()
" -------------------------------------
"
" folding behavior
"
set foldcolumn=4
