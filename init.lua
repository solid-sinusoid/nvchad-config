vim.g.base46_cache = vim.fn.stdpath "data" .. "/nvchad/base46/"
vim.g.mapleader = " "

-- bootstrap lazy and all plugins
local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
  local repo = "https://github.com/folke/lazy.nvim.git"
  vim.fn.system { "git", "clone", "--filter=blob:none", repo, "--branch=stable", lazypath }
end

vim.opt.rtp:prepend(lazypath)

local lazy_config = require "configs.lazy"

-- load plugins
require("lazy").setup({
  {
    "NvChad/NvChad",
    lazy = false,
    branch = "v2.5",
    import = "nvchad.plugins",
    config = function()
      require "options"
    end,
  },

  { import = "plugins" },
}, lazy_config)

-- load theme
dofile(vim.g.base46_cache .. "defaults")
dofile(vim.g.base46_cache .. "statusline")
-- dofile(vim.g.base46_cache .. "alpha")
-- dofile(vim.g.base46_cache .. "blankline")
-- dofile(vim.g.base46_cache .. "bufferline")
dofile(vim.g.base46_cache .. "cmp")
-- dofile(vim.g.base46_cache .. "codeactionmenu")
dofile(vim.g.base46_cache .. "dap")
-- dofile(vim.g.base46_cache .. "defaults")
-- dofile(vim.g.base46_cache .. "devicons")
-- dofile(vim.g.base46_cache .. "git")
-- dofile(vim.g.base46_cache .. "hop")
dofile(vim.g.base46_cache .. "lsp")
dofile(vim.g.base46_cache .. "lspsaga")
dofile(vim.g.base46_cache .. "mason")
-- dofile(vim.g.base46_cache .. "navic")
-- dofile(vim.g.base46_cache .. "neogit")
-- dofile(vim.g.base46_cache .. "notify")
dofile(vim.g.base46_cache .. "nvcheatsheet")
-- dofile(vim.g.base46_cache .. "nvdash")
dofile(vim.g.base46_cache .. "nvimtree")
-- dofile(vim.g.base46_cache .. "nvshades")
dofile(vim.g.base46_cache .. "rainbowdelimiters")
-- dofile(vim.g.base46_cache .. "semantic_tokens")
-- dofile(vim.g.base46_cache .. "statusline")
-- dofile(vim.g.base46_cache .. "syntax")
-- dofile(vim.g.base46_cache .. "tbline")
dofile(vim.g.base46_cache .. "telescope")
-- dofile(vim.g.base46_cache .. "todo")
dofile(vim.g.base46_cache .. "treesitter")
-- dofile(vim.g.base46_cache .. "trouble")
-- dofile(vim.g.base46_cache .. "vim-illuminate")
dofile(vim.g.base46_cache .. "whichkey")

require "nvchad.autocmds"

vim.schedule(function()
  require "mappings"
end)
require 'myinit'
