local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
    return
end

require("pugvim.lsp.lsp_installer")
-- require("pugvim.lsp.configs")
require("pugvim.lsp.handlers").setup()

require("pugvim.lsp.servers.spyglass")
