" Keep visual selections after Indent
vnoremap > >gv
vnoremap < <gv

" use control-hjkl to resize splits
nnoremap <C-h> :vertical resize -1<CR>
nnoremap <C-l> :vertical resize +1<CR>
nnoremap <C-j> :resize -1<CR>
nnoremap <C-k> :resize +1<CR>

" move a visual selection with jk
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
