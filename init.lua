require "pugvim.options"                -- set vim options
require "pugvim.maps"                   -- set mappings
require "pugvim.plugins"                -- load plugins
require "pugvim.colorscheme"            -- set colorscheme
require "pugvim.cmp"                    -- completion
require "pugvim.lsp"                    -- language server protocol
require "pugvim.fidget"                    -- language server protocol
require "pugvim.telescope"              -- fuzzy finder
require "pugvim.treesitter"             -- syntax "highlighting" and more
require "pugvim.autopairs"              -- complete pairs
require "pugvim.comment"                -- easy commenting
require "pugvim.gitsigns"               -- git signs left of line
require "pugvim.nvim-tree"              -- file tree
require "pugvim.lualine"                -- status line at bottom
require "pugvim.project"                -- XXX
require "pugvim.colorizor"              -- colorize color codes
require "pugvim.colortils"              -- colorize color codes
require "pugvim.toggleterm"             -- easy toggle vim terminals
require "pugvim.impatient"              -- improve startup time
require "pugvim.whichkey"               -- helpful keybinds
require "pugvim.alpha"                  -- start page
require "pugvim.autocommands"           -- auto commands
require "pugvim.numb"                   -- peek the line with :NN
require "pugvim.gps"                    -- TreeSitter thing at top
require "pugvim.winbar"                 -- bar thing at the top
require "pugvim.neoscroll"              -- Smooth scrolling
require "pugvim.ltex"
-- require "pugvim.shade"                  -- slightly darken unfocused windows

-- Writing Plugins --
require "pugvim.twilight"              -- toggle light and dark modes
require "pugvim.truezen"                   -- toggle a simple writing window
require "pugvim.pencil"                 -- pencil wrap modes

-- fun
require "pugvim.fun"

-- Datapacks
local lspconfig = require'lspconfig'
local configs = require'lspconfig.configs'


local capabilities = vim.lsp.protocol.make_client_capabilities()
-- capabilities.textDocument.documentHighlight = true
-- capabilities.textDocument.documentHighlight.dynamicRegistration = true
-- capabilities.textDocument.document_color = true

if not configs.spyglass then
  configs.spyglass = {
    default_config = {
      cmd = { 'datapack-language-server', '--stdio' };
      filetypes = { 'mcfunction' };
      root_dir = function(fname)
        return vim.loop.cwd()
      end;
      settings = {
          datapack = {
              features = {
                  semanticColoring = "on"
                    }
                }
            };
    };
  }
end

lspconfig.spyglass.setup{ capabilities = capabilities }

local cmp_nvim_lsp = require("cmp_nvim_lsp")
capabilities = cmp_nvim_lsp.default_capabilities(capabilities)
