"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Core Functionality (general settings, keyboard shortcuts)
 """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set guicursor=
set nocompatible              " be iMproved, required
set exrc  										" Allows project specific .vimrc
set updatetime=100
" deal with swps and backups here
" create backups
set backup
" tell vim where to put its backup files
set backupdir=/tmp
" tell vim where to put swap files
set dir=/tmp
set timeoutlen=1000        " speed vim up
set ttimeoutlen=0          " https://stackoverflow.com/questions/37644682/why-is-vim-so-slow/37645334
set ttyfast                " Rendering
set tw=500

set foldmethod=syntax
set foldnestmax=1

" set clipboard to easily copy from vim and paste into OSx
set clipboard=unnamed

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 1 tab == 2 spaces

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set mouse-=a

set ai            " Auto indent
" set si            " Smart indent
set wrap          " Wrap lines
set linebreak

" Show line numbers
" turn absolute line numbers on
set number relativenumber

" Code fold bliss
" https://www.linux.com/learn/vim-tips-folding-fun
" set foldmethod=indent

" Blink cursor on error instead of beeping (grr)
set visualbell
set t_vb=

" Shows the title within the window
set title titlestring=

set secure "disables unsafe commands in project specific .vimrc

set showmatch
set laststatus=2
set so=999
set t_Co=256
set bg=dark
set mouse-=a
set encoding=UTF-8

setlocal spelllang=en_us
