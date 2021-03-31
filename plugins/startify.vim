let g:startify_session_dir='~/.config/nvim/session'

let g:startify_lists = [
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
          \ { 'type': 'files',     'header': ['   Files']            },
          \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ ]

let g:startify_bookmarks = [
            \ { 'i': '~/.config/nvim/init.vim' },
            \ { 'p': '~/Projects/classes/461/461DrawingProject/' },
            \ ]

let g:startify_session_autoload = 1

let g:startify_session_delete_buffers = 1

let g:startify_change_to_vcs_root = 1
let g:startify_fortune_use_unicode = 1
let g:startify_session_persistence = 1
let g:startify_enable_special = 0

let g:startify_custom_header = [
            \"   ____            __     ___           ",
            \"  |  _ \\ _   _  __ \\ \\   / (_)_ __ ___  ",
            \"  | |_) | | | |/ _` \\ \\ / /| | '_ ` _ \\ ",
            \"  |  __/| |_| | (_| |\\ V / | | | | | | |",
            \"  |_|    \\__,_|\\__, | \\_/  |_|_| |_| |_|",
            \"               |___/                    ",
            \]


