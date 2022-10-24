vim.api.nvim_create_autocmd({ "CursorMoved", "BufWinEnter", "BufFilePost", "InsertEnter", "BufWritePost" }, {
  callback = function()
    require("pugvim.winbar").get_winbar()
  end,
})


vim.cmd[[
    augroup litecorrect
        autocmd!
        autocmd FileType markdown,mkd call litecorrect#init()
        autocmd FileType textile call litecorrect#init()
    augroup END
]]

vim.cmd[[
    augroup textobj_sentence
        autocmd!
        autocmd FileType markdown,mkd call textobj#sentence#init()
        autocmd FileType textile call textobj#sentence#init()
    augroup END
]]

vim.cmd[[
    augroup textwidth_settings
        autocmd!
        autocmd FileType markdown,mkd setlocal textwidth=80
        autocmd FileType textile call setlocal textwidth=80
    augroup END
]]
