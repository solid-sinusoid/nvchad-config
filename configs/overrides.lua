local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "c",
    "cpp",
    "python",
    "dockerfile",
    "markdown",
    "markdown_inline",
    "xml"
  },
  indent = {
    enable = true,
    -- disable = {
    --   "python"
    -- },
  },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",
    -- python 
    "pyright",
    "debugpy",
    -- c/cpp stuff
    "clangd",
    "clang-format",
    -- xml
    "lemminx",
    "xmlformatter"
  },
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

return M
