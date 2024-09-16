local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "vimdoc",
    "lua",
    "c",
    "cpp",
    "python",
    "dockerfile",
    "markdown",
    "markdown_inline",
    "xml",
    "cmake",
    "json",
    "toml",
    "yaml",
    "rust"
  },
  indent = {
    enable = true,
    -- disable = {
    --   "python"
    -- },
  },
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
  },

  filters = {
    custom = {
      "^.git$",
    },
  },

  renderer = {
    highlight_git = true,
    icons = {
    git_placement = "signcolumn",
      show = {
        git = true,
      },
    },
  },
}

M.todocomments = {
  highlight = {
    exclude = {
      "log",
    },
  },
}

local path = vim.fn.stdpath "config" .. "/lua/snippets/"
M.scissor = {
  snippetDir = path,
}

return M
