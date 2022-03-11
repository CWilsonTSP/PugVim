local util = require 'lspconfig.util'

-- Having server name defined here is the convention, this is often times also the first entry in the `cmd` table.
local server_name = 'datapack-language-server'

return {
  default_config = {
    cmd = { server_name },
    filetypes = { 'mcfunction' },
    root_dir = util.root_pattern('**/pack.mcmeta', '**/data/*/*/**/*.json'),
    single_file_support = true,
  },
  docs = {
    description = [[
https://github.com/SPYGlassMC/SPYGlass
SPYGlassMC LSP integration
]],
    default_config = {
      root_dir = [[root_pattern(".git", "compile_commands.json", "build") or dirname]],
    },
  },
}
