"2016 05 15
" -------------------------------------
set nocompatible     " be iMproved, required
" -------------------------------------
" Begin Vundle Specifics
" -------------------------------------
filetype off                  " required
"
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
" plugin from http://vim-scripts.org/vim/scripts.html
" http://stackoverflow.com/questions/32165342/what-is-the-l9-vim-plugin-for
Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
"
" -------------------------------------
"  Status line
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" -------------------------------------
"  Python autocomplete
Plugin 'davidhalter/jedi-vim'
" -------------------------------------
"  Supertab
Plugin 'ervandew/supertab'
" -------------------------------------
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
" -------------------------------------
" End Vundle Specifics
" -------------------------------------
set encoding=utf8 " also sets fileencoding to same value
set history=1000
set laststatus=2
" -------------------------------------
colorscheme default
let g:airline_theme='solarized'
" -------------------------------------
set autoindent
set autowrite " Automatically save before commands like :next and :make
" -------------------------------------
" Hide buffers when they are abandoned
set hidden
" -------------------------------------
syntax enable
" -------------------------------------
set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=80
set expandtab
set smarttab
" -------------------------------------
set relativenumber
set number
" show command in bottom bar
set showcmd
set cursorline
" -------------------------------------
"graphical menu of all the matches you can cycle through
set wildmenu
set lazyredraw
" -------------------------------------
" highlight matching [{()}]
set showmatch
" 196 = Red1 ; 226 = Yellow1
highlight MatchParen cterm=reverse ctermfg=9 ctermbg=226
" search as characters are entered
" -------------------------------------
set ignorecase
set smartcase
set incsearch
" highlight matches
set hlsearch
" -------------------------------------
" Color names/values
" http://vim.wikia.com/wiki/Xterm256_color_names_for_console_Vim
" 16 = Grey0; 227 = LightGoldenrod1
highlight Search cterm=bold ctermfg=16 ctermbg=227
highlight Search guifg=16 guibg=227
" -------------------------------------
" highlight Visual
highlight Visual ctermfg=16 ctermbg=227
highlight Visual guifg=16 guibg=227
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
" folding behavior
set foldcolumn=4
" spell check for *.md
autocmd BufRead,BufNewFile *.md setlocal spell spelllang=en_us
" http://vim.wikia.com/wiki/Xterm256_color_names_for_console_Vim
" 16 = Grey0; 156 = PaleGreen1
highlight SpellBad ctermfg=16 ctermbg=156
highlight SpellBad guifg=16 guibg=156
highlight SpellCap ctermfg=16 ctermbg=156
highlight SpellCap guifg=16 guibg=156
highlight SpellRare guifg=16 guibg=156
highlight SpellRare ctermfg=16 ctermbg=156
highlight SpellLocal guifg=16 guibg=156
highlight SpellLocal ctermfg=16 ctermbg=156
"
" Mouse support
"
set mouse=a
"
" Diff highlighting
" http://vim.wikia.com/wiki/Xterm256_color_names_for_console_Vim
" http://misc.flogisoft.com/bash/tip_colors_and_formatting
"
highlight DiffAdd    cterm=bold ctermfg=16 ctermbg=3   gui=none guifg=bg guibg=Red
highlight DiffDelete cterm=bold ctermfg=16 ctermbg=153 gui=none guifg=bg guibg=Red
highlight DiffChange cterm=bold ctermfg=16 ctermbg=86 gui=none guifg=bg guibg=Red
highlight DiffText   cterm=bold ctermfg=16 ctermbg=222 gui=none guifg=bg guibg=Red
"
" Todo highlighting
"
highlight Todo    cterm=bold ctermfg=16 ctermbg=156   gui=none guifg=bg guibg=Red
