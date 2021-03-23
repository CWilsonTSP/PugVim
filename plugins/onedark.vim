""""" Highlighting changes for onedark theme. Commented out because I am not using it.
if (has("autocmd") && !has("gui_running"))
  augroup colorset
    autocmd!
    let s:light_gray = { "gui": "#5F5F5F", "cterm": "59", "cterm16" : "7" } 
    autocmd ColorScheme * call onedark#set_highlight("Visual", { "bg": s:light_gray }) " change highlight color
    let s:white = { "gui": "#ABB2BF", "cterm": "145", "cterm16" : "7" }
    autocmd ColorScheme * call onedark#set_highlight("Normal", { "fg": s:white }) " `bg` will not be styled since there is no `bg` setting
  augroup END
endif

colorscheme onedark
