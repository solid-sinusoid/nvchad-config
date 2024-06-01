local overrides = require "configs.overrides"

---@type NvPluginSpec[]
local plugins = {

  -- Override plugin definition options

  {
    "neovim/nvim-lspconfig",
    config = function()
      require "nvchad.configs.lspconfig"
      require "configs.lspconfig"
    end, -- Override to setup mason-lspconfig
  },

  -- override plugin configs
  {
    "williamboman/mason.nvim",
    opts = overrides.mason,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,
  },

  -- Install a plugin
  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },

  {
    "stevearc/conform.nvim",
    --  for users those who want auto-save conform + lazyloading!
    -- event = "BufWritePre"
    config = function()
      require "configs.conform"
    end,
  },
  {
    "stevearc/dressing.nvim",
    init = function()
      ---@diagnostic disable-next-line: duplicate-set-field
      vim.ui.select = function(...)
        require("lazy").load { plugins = { "dressing.nvim" } }
        return vim.ui.select(...)
      end
    end,
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    event = "VeryLazy",
    dependencies = {
      "williamboman/mason.nvim",
      "mfussenegger/nvim-dap",
    },
    opts = {
      handlers = {},
    },
  },
  {
    "rcarriga/nvim-dap-ui",
    event = "VeryLazy",
    dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" },
    config = function()
      require "configs.nvim-dap-ui"
    end,
  },
  {
    "mfussenegger/nvim-dap",
    config = function(_, _)
      -- require("core.utils").load_mappings "dap"
      require "configs.dap"
    end,
  },
  {
    "mfussenegger/nvim-dap-python",
    ft = "python",
    dependencies = "mfussenegger/nvim-dap",
    opts = {},
    config = function(_, opts)
      local path = "/usr/bin/python"
      require("dap-python").setup(path)
      table.insert(require("dap").configurations.python, {
        justMyCode = false,
        type = "python",
        request = "launch",
        name = "Python Launch File jmc=False",
        program = "${file}",
        pythonPath = path
      })
    end,
  },
  {
    "stevearc/overseer.nvim",
    opts = {},
  },
  {
    event = "VeryLazy",
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = overrides.todocomments,
  },
  {
    "kdheepak/lazygit.nvim",
    event = "VeryLazy",
    -- optional for floating window border decoration
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
  },
  -- {
  --   "chrisgrieser/nvim-scissors",
  --   event = "VeryLazy",
  --   dependencies = "nvim-telescope/telescope.nvim", -- optional
  --   opts = overrides.scissor,
  -- },
  {
    "ray-x/lsp_signature.nvim",
    event = "VeryLazy",
    opts = {
      hint_enable = false,
    },
    config = function(_, opts)
      require("lsp_signature").setup(opts)
    end,
  },
  {
    "stevearc/overseer.nvim",
    event = "VeryLazy",
    config = function()
      require("overseer").setup {
        task_list = {
          direction = "bottom",
        },
      }
    end,
    opts = {},
  },
  {
    "folke/trouble.nvim",
    event = "VeryLazy",
    cmd = "Trouble",
    config = function()
      require("trouble").setup()
    end,
  },
  {
    "tzachar/local-highlight.nvim",
    config = function()
      require("local-highlight").setup()
    end,
  },
  {
    "nvimdev/lspsaga.nvim",
    event = "LspAttach",
    config = function()
      require("lspsaga").setup {}
    end,
    dependencies = {
      "nvim-treesitter/nvim-treesitter", -- optional
      "nvim-tree/nvim-web-devicons", -- optional
    },
  }, --
  {
    "HiPhish/rainbow-delimiters.nvim",
    event = "VeryLazy",
    config = function()
      require("rainbow-delimiters.setup").setup {}
    end,
  },
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    build = "cd app && yarn install",
    init = function()
      vim.g.mkdp_filetypes = { "markdown" }
    end,
    ft = { "markdown" },
  },
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup {
        -- Configuration here, or leave empty to use defaults
      }
    end,
  },
  {
    "nvim-pack/nvim-spectre",
    event = "VeryLazy",
    config = function()
      require("spectre").setup()
    end,
  },
  {
    "ErickKramer/nvim-ros2",
    event = "VeryLazy",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
    opts = {
      -- -- Add any custom options here
      -- autocmds = true,
      -- telescope = true,
      -- treesitter = true,
    },
  },
  {"sindrets/diffview.nvim",
    event = "VeryLazy"
  },
}

return plugins
