require "pugvim.options"
require "pugvim.maps"
require "pugvim.plugins"
require "pugvim.colorscheme"
require "pugvim.cmp"
require "pugvim.lsp"
require "pugvim.telescope"
require "pugvim.treesitter"
require "pugvim.languagetool"
require "pugvim.autopairs"
require "pugvim.comment"
require "pugvim.gitsigns"
require "pugvim.nvim-tree"
require "pugvim.lualine"
require "pugvim.project"
require "pugvim.toggleterm"
require "pugvim.impatient"
require "pugvim.whichkey"
require "pugvim.alpha"


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
capabilities = cmp_nvim_lsp.update_capabilities(capabilities)
