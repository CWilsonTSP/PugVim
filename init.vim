filetype off                  " required

" load the plugins
source ~/.config/nvim/plugins/plug.vim

" source all of the plugin config files
source ~/.config/nvim/plugins/coc.vim
source ~/.config/nvim/plugins/emmet.vim
source ~/.config/nvim/plugins/nerdtree.vim
source ~/.config/nvim/plugins/prettier.vim
source ~/.config/nvim/plugins/instantmarkdown.vim
source ~/.config/nvim/plugins/gitgutter.vim
source ~/.config/nvim/plugins/fugative.vim
source ~/.config/nvim/plugins/blamer.vim
source ~/.config/nvim/plugins/lightline.vim
source ~/.config/nvim/plugins/onedark.vim
" source ~/.config/nvim/plugins/treesitter.vim

" load sets
source ~/.config/nvim/sets.vim
source ~/.config/nvim/maps.vim


" filetype plugin indent on    " automatically run by Plug 
" syntax enable " automatically run by Plug 

" CSS Colors
let g:cssColorVimDoNotMessMyUpdatetime = 1
 
" Disable Autocommenting
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

"""""""""""""""""""""""""""""""
" => Fzf and grep Searchs
""""""""""""""""""""""""""""""""
set grepprg=rg\ --vimgrep\ --smartcast\ --hidden\ --follow
let g:rg_derive_root='true'
source ~/.vim/plugged/fzf.vim/plugin/fzf.vim

" remap Ctrl-p for finding files run Fzf :Files command
" nnoremap <C-p> :Files <C-R>=expand('%:h')<CR><CR>
nnoremap <C-p> :GFiles<CR>

command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>),0, <bang>0)

nnoremap <C-f> :Find<CR>

command Indent normal gg=G

syntax on
colorscheme onedark

" this is actually for gitgutter, but it it needs to be near the bottom 
" to work correctly for some reason
highlight! link SignColumn LineNr

