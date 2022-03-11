local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

--
-- PLUGIN LIST
--
return packer.startup(function(use)
    use "wbthomason/packer.nvim" -- Have packer manage itself
    use "nvim-lua/popup.nvim" -- An implementation of the Popup API from vim in Neovim
    use "nvim-lua/plenary.nvim" -- Useful lua functions used ny lots of plugins
    -- use "ahmedkhalf/project.nvim"
    use 'lewis6991/impatient.nvim'
    use 'goolord/alpha-nvim'

    -- colorschemes
    use "shaunsingh/nord.nvim"
    use "dracula/vim"
    use "morhetz/gruvbox"
    use "joshdick/onedark.vim"
    use "LunarVim/Colorschemes"
    use {
        "sonph/onehalf",
        rtp = "vim/"
    }

    -- completion
    use "hrsh7th/nvim-cmp" -- completion
    use "hrsh7th/cmp-buffer" -- buffer completions
    use "hrsh7th/cmp-path" -- path completions
    use "hrsh7th/cmp-cmdline" -- cmdline completions
    use "hrsh7th/cmp-nvim-lua" -- nvim lua completions
    use "hrsh7th/cmp-nvim-lsp" -- nvim lua completions
    use "saadparwaiz1/cmp_luasnip" -- snippets completions

    -- Snippets
    use "L3MON4D3/LuaSnip" -- snippet engine
    use "rafamadriz/friendly-snippets" -- a bunch of snippets to use

    -- LSP
    use "neovim/nvim-lspconfig"
    use "williamboman/nvim-lsp-installer"

    -- Telescope
    use "nvim-telescope/telescope.nvim"
    use "nvim-telescope/telescope-media-files.nvim"

    -- TreeSitter
    use {
        "nvim-treesitter/nvim-treesitter",
        run = ":TSUpdate"
    }
    use "p00f/nvim-ts-rainbow" -- rainbow colored braces
    use "dpelle/vim-LanguageTool" -- grammar and spell checker


    use "windwp/nvim-autopairs" -- Autopairs, integrates with both cmp and treesitter
    use "numToStr/Comment.nvim" -- Easily comment stuff
    use 'JoosepAlviste/nvim-ts-context-commentstring'
    use "kyazdani42/nvim-web-devicons" -- icons for file tree
    use "kyazdani42/nvim-tree.lua" -- file tree
    -- use "akinsho/bufferline.nvim" -- snazzy bufferline
    use "moll/vim-bbye" -- easily close buffers
    use "nvim-lualine/lualine.nvim" -- statusline in lua
    use "akinsho/toggleterm.nvim" --  a toggleable terminal
    --  use "lukas-reineke/indent-blankline.nvim" -- vscode-like guidelines
    use "antoinemadec/FixCursorHold.nvim" -- This is needed to fix lsp doc highlight
    use "folke/which-key.nvim"
    use "lewis6991/gitsigns.nvim"

    use 'ap/vim-css-color' -- highlight hex color codes
    use 'tpope/vim-fugitive'  -- git integration commands
    use 'APZelos/blamer.nvim' -- per-line git blame
    -- use 'airblade/vim-gitgutter' -- sign column for git status
    use 'tpope/vim-surround'  -- 'S' to surround something
    use 'jeffkreeftmeijer/vim-numbertoggle' -- switch number formats in insert mode
    -- use 'rubixninja314/vim-mcfunction' -- mcfunction syntax
    -- use "Vftdan/vim-mcfunction"
    use "CWilsonTSP/vim-mcfunction"

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
