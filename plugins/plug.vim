"Auto install Plug https://github.com/junegunn/vim-plug/wiki/tips#automatic-installation
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


set rtp+=/usr/local/opt/fzf "Fuzzy finder
call plug#begin('~/.config/nvim/plugged')

" Themes
Plug 'ryanoasis/vim-devicons' "Icons for filetypes
" Plug 'vim-airline/vim-airline' "Status bar
" Plug 'vim-airline/vim-airline-themes' "Applicable themes
Plug 'itchyny/lightline.vim'
Plug 'ap/vim-css-color' " Color code highlighting
Plug 'chuling/ci_dark'
Plug 'joshdick/onedark.vim'
Plug 'KeitaNakamura/neodark.vim'

" Plug 'nvim-treesitter/nvim-treesitter' " aync highlighting


" Language Syntax Support
Plug 'pangloss/vim-javascript' "JS highlighting
Plug 'mxw/vim-jsx' "JSX syntax highlighting
Plug 'jparise/vim-graphql' "graphql syntax highlighting
Plug 'digitaltoad/vim-pug' "Pug highlighting
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
" Plug 'rubixninja314/vim-mcfunction'
Plug 'Arcensoth/language-mcfunction'
Plug 'instant-markdown/vim-instant-markdown', {'for': 'markdown'}

"Tools
Plug 'mitermayer/vim-prettier' " formatter
Plug 'jiangmiao/auto-pairs' "Autocomplete brackets. 
Plug 'junegunn/fzf', { 'dir': '~/.fzf' }
Plug 'junegunn/fzf.vim' " another thing
Plug 'tomtom/tcomment_vim' " block commenting
Plug 'tpope/vim-fugitive' " Git tools as vim commands
Plug 'APZelos/blamer.nvim'
" Plug 'f-person/git-blame.nvim'
Plug 'vim-syntastic/syntastic' " syntax highlighting on write 
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-surround' " Surround with quotes and things
Plug 'jeffkreeftmeijer/vim-numbertoggle' "toggle line numbers when in normal/insert mode

Plug 'mattn/emmet-vim' "A bit annoying because it takes over my Tab key
Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'} "Nerdtree
Plug 'neoclide/coc.nvim', {'branch': 'release'} "autocompletion

Plug 'mhinz/vim-startify'
" Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
Plug 'lervag/vimtex'

" sheep game lol
Plug 'vim/killersheep'

" All of your Plugins must be added before the following line
call plug#end()            " required
