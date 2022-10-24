-- vim.cmd "colorscheme nord"
-- set some configurations for a colorscheme
-- if the colorscheme isn't loaded, it doesn't hurt anything
vim.g.nord_disable_background = true
vim.g.nord_borders = true

vim.g.onedark_termcolors = "256"

-- vim.cmd[[
-- if (has("autocmd"))
--   augroup colorextend
--     autocmd!
--     " Override the `LineNr` and 'CursorLineNr' foreground color
--     autocmd ColorScheme * call onedark#extend_highlight("LineNr", { "fg": s:white })
--     autocmd ColorScheme * call onedark#extend_highlight("CursorLineNr", { "fg": s:yellow })
--   augroup END
-- endif
-- ]]

local colorscheme = "tokyonight-night"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end
