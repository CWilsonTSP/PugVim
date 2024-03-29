-- :help options
vim.opt.backup = true                           -- creates a backup file
vim.opt.backupdir = "/tmp"
vim.opt.dir = "/tmp"
vim.opt.exrc = true
vim.opt.compatible = false
-- vim.opt.clipboard = "unnamedplus"               -- allows neovim to access the system clipboard
vim.opt.cmdheight = 2                           -- more space in the neovim command line for displaying messages
vim.opt.completeopt = { "menuone", "noselect" } -- mostly just for cmp
vim.opt.conceallevel = 0                        -- so that `` is visible in markdown files
vim.opt.fileencoding = "utf-8"                  -- the encoding written to a file
vim.opt.hlsearch = true                         -- highlight all matches on previous search pattern
vim.opt.ignorecase = true                       -- ignore case in search patterns
vim.opt.pumheight = 10                          -- pop up menu height
-- vim.opt.showmode = false                        -- we don't need to see things like -- INSERT -- anymore
-- vim.opt.showtabline = 2                         -- always show tabs
vim.opt.smartcase = true                        -- smart case
vim.opt.smartindent = true                      -- make indenting smarter again
vim.opt.splitbelow = true                       -- force all horizontal splits to go below current window
-- vim.opt.splitright = true                       -- force all vertical splits to go to the right of current window
vim.opt.swapfile = true                         -- creates a swapfile
vim.opt.termguicolors = true                    -- set term gui colors (most terminals support this)
vim.opt.timeoutlen = 400                       -- time to wait for a mapped sequence to complete (in milliseconds)
vim.opt.ttimeoutlen = 0                         -- https://stackoverflow.com/questions/37644682/why-is-vim-so-slow/37645334
vim.opt.undofile = false                        -- enable persistent undo
vim.opt.updatetime = 100                        -- faster completion (4000ms default)
vim.opt.writebackup = false                     -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
vim.opt.expandtab = true                        -- convert tabs to spaces
vim.opt.shiftwidth = 4                          -- the number of spaces inserted for each indentation
vim.opt.tabstop = 4                             -- insert 2 spaces for a tab
vim.opt.softtabstop = 4
vim.opt.cursorline = true                      -- highlight the current line
vim.opt.number = true                           -- set numbered lines
vim.opt.relativenumber = true                   -- set relative numbered lines
vim.opt.numberwidth = 4                         -- set number column width to 2 {default 4}
vim.opt.signcolumn = "yes"                      -- always show the sign column, otherwise it would shift the text each time
vim.opt.wrap = false                            -- display lines as one long line
vim.opt.scrolloff = 999                         -- is one of my fav
vim.opt.sidescrolloff = 999
vim.opt.guifont = "monospace:h17"               -- the font used in graphical neovim applications
vim.opt.colorcolumn = "80"                        -- set a solor column
vim.opt.textwidth = 500
vim.opt.foldmethod = "syntax"
-- vim.cmd([[autocmd FileType tex set foldmethod=marker]]) -- change foldmethod to be different in distinct filetypes
vim.cmd([[autocmd FileType python set foldmethod=indent]])
vim.cmd[[
  augroup texSettings
    autocmd!
    autocmd FileType tex set wrap
    autocmd FileType tex set linebreak
    autocmd FileType tex set spell
    autocmd FileType tex set foldmethod=marker
  augroup END
]]
vim.cmd[[
  augroup markdownSettings
    autocmd!
    autocmd FileType markdown set wrap
    autocmd FileType markdown set linebreak
    autocmd FileType markdown set spell
  augroup END
]]
vim.cmd[[
function! WC()
    let filename = expand("%")
    let cmd = "detex " . filename . " | wc -w | tr -d '[:space:]'"
    let result = system(cmd)
    echo result . " words"
endfunction

command WC call WC()
]]
vim.opt.foldnestmax = 1
vim.opt.visualbell = true
vim.opt.secure = true
vim.opt.showmatch = true
vim.opt.laststatus = 3
vim.opt.bg = "dark"
vim.opt.fileencoding = "UTF-8"
vim.opt.spelllang = "en_us"

vim.opt.shortmess:append "c"

vim.cmd "set whichwrap+=<,>,[,],h,l"
vim.cmd [[set iskeyword+=-]]
vim.cmd [[set formatoptions-=cro]] -- TODO: this doesn't seem to work
