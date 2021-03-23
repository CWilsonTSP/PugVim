""""""""""""""""""""""""""""""""
" => blamer
" - per-line virtual text git
"   blame
""""""""""""""""""""""""""""""""
let g:blamer_enabled = 1 " enable on startup
let g:blamer_delay = 200 " refresh every 200 ms
let g:blamer_show_in_visual_modes=0 " disable blame in visual mode
let g:blamer_show_in_insert_modes=0 " disable blame in insert mode

let g:blamer_date_format='%d %b %y, %I:%M %p' " changes the date format
" let g:blamer_template='<author>, <committer-time> • <summary>' " changes the blame format
