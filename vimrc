"2015 12 17
" """""""""""""""""""""""""""""
" Add for Vundle
" """"""""""""""""""""""""""""
set nocompatible              " be iMproved, required
set encoding=utf8
set history=1000
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
"
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
"
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" Plugin 'sjl/gundo.vim'
" Plugin 'Valloric/YouCompleteMe'
" Plugin 'scrooloose/syntastic'
"
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" "
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
"
" " git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" "
" " The sparkup vim script is in a subdirectory of this repo called vim.
" " Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" " Avoid a name conflict with L9
"  currently doesn't load
" Plugin 'user/L9', {'name': 'newL9'}
"
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
" filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
" """" Above this all for Vundle """""""""""
" """"""""""""""""""""""""""""""""""""""""""
"
colorscheme default
" Status line color experiments
" hi User1 ctermfg=190 ctermfg=255 guifg=190 guibg=255
" hi statusline ctermfg=255 ctermfg=190 guifg=190 guibg=255
" end statusline color experiments
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
" Display status line always
" :set laststatus=2
" set statusline=%1*%F%m%r%h%w\ [%{&ff}]\ [TYPE=%Y]\ [POS=%v][%p%%]\ %{strftime(\"%H:%M\")}
" set statusline=%F%m%r%h%w\ [%{&ff}]\ [TYPE=%Y]\ [COL=%v][%p%%]
"
set relativenumber
set number
" show command in bottom bar
set showcmd
set cursorline
"
" filetype indent on
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
" if has("autocmd")
   " Enable file type detection.
   " Use the default filetype settings, so that mail gets 'tw' set to 72,
   " 'cindent' is on in C files, etc.
   " Also load indent files, to automatically do language-dependent indenting.
   " filetype plugin indent on
   " ...
" endif
"
" autocmd FileType html setlocal shiftwidth=2 tabstop=2
" autocmd FileType json setlocal shiftwidth=2 tabstop=2
" autocmd FileType python setlocal expandtab shiftwidth=4 softtabstop=4
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
" Highlight trailing white space in red
" http://vim.wikia.com/wiki/Highlight_unwanted_spaces
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()
#
# folding behavior
#
set foldcolumn=4
