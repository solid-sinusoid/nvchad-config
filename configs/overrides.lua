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
    "xml",
    "cmake",
    "json",
    "toml",
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
    "cpptools",
    -- xml
    "lemminx",
    "xmlformatter",
    -- cmake
    "cmake-language-server",
    "cmakelang",
    -- yaml
    "yaml-language-server",
    "prettier",
    -- json
    "biome",
    "json-lsp",
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

local path = vim.fn.stdpath "config" .. "/lua/custom/snippets/"
M.scissor = {
  snippetDir = path,
}

return M
