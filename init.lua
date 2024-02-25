local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup

autocmd("TextYankPost", {
  desc = "Highlight yanked text",
  group = augroup("highlightyank", { clear = true }),
  pattern = "*",
  callback = function() vim.highlight.on_yank() end,
})
--
autocmd('BufRead', {
  pattern = {'*.*'},
  callback = function(data)
    require('local-highlight').attach(data.buf)
  end
})
--
vim.opt.relativenumber = true
vim.opt.cmdheight = 0
vim.filetype.add {
  extension = {
    xacro = "xml",
    urdf = "xml",
  },
}
require "custom.configs.dap-highlights"
