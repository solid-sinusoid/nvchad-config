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

autocmd("VimEnter", {
  command = ":silent !kitty @ set-spacing padding=0 margin=0",
})

autocmd("VimLeavePre", {
  command = ":silent !kitty @ set-spacing padding=20 margin=10",
})

autocmd("BufReadPost", {
    group = augroup("LastPlace", {}),
    pattern = { "*" },
    desc = "remember last cursor place",
    callback = function()
        local mark = vim.api.nvim_buf_get_mark(0, '"')
        local lcount = vim.api.nvim_buf_line_count(0)
        if mark[1] > 0 and mark[1] <= lcount then
            pcall(vim.api.nvim_win_set_cursor, 0, mark)
        end
    end,
})

--
vim.filetype.add {
  extension = {
    xacro = "xml",
    urdf = "xml",
    repos = "yaml"
  },
}
require "configs.dap-highlights"

-- -- Set linters
-- require('lint').linters_by_ft = {
--   python = {'pylint'}
-- }
--
-- -- Set running linters on buffer save
-- vim.api.nvim_create_autocmd({"BufWritePost"}, {
--   callback = function()
--     require("lint").try_lint()
--   end,
-- })
--
-- -- Set pylint to work in virtualenv
-- require('lint').linters.pylint.cmd = 'python'
-- require('lint').linters.pylint.args = {'-m', 'pylint', '-f', 'json'}
