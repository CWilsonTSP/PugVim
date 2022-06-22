local opts = { noremap = true, silent = true }

local term_opts = { silet = true }

-- shorten the function name to just "keymap"
local keymap = vim.api.nvim_set_keymap

-- remap space as leader
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Keep visual selections after indent

keymap("v", ">", ">gv", opts)
keymap("v", "<", "<gv", opts)

-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

keymap("n", "<leader>e", ":Lex 30<cr>", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize +2<CR>", opts)
keymap("n", "<C-Down>", ":resize -2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- move a visual selection with J, K
keymap("v", "J", ":m '>+1<CR>gv=gv", opts)
keymap("v", "K", ":m '<-2<CR>gv=gv", opts)

-- disable using the arrow keys
-- (because we want to do things the vim way with hjkl)
-- keymap("n", "<Left>", "<Nop>", opts)
-- keymap("n", "<Right>", "<Nop>", opts)
-- keymap("n", "<Up>", "<Nop>", opts)
-- keymap("n", "<Down>", "<Nop>", opts)
-- 
-- keymap("v", "<Left>", "<Nop>", opts)
-- keymap("v", "<Right>", "<Nop>", opts)
-- keymap("v", "<Up>", "<Nop>", opts)
-- keymap("v", "<Down>", "<Nop>", opts)
-- 
-- keymap("i", "<Left>", "<Nop>", opts)
-- keymap("i", "<Right>", "<Nop>", opts)
-- keymap("i", "<Up>", "<Nop>", opts)
-- keymap("i", "<Down>", "<Nop>", opts)

-- keymap("n", "<leader>e", ":NvimTreeToggle<cr>", opts)

keymap(
  "n",
  "<F6>",
  [[:echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<' . synIDattr(synID(line("."),col("."),0),"name") . "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">" . " FG:" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"fg#")<CR>]],
  opts
)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)
