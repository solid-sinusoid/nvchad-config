return {
  {
    "nvimdev/lspsaga.nvim",
    event = "LspAttach",
    config = function()
      -- dofile(vim.g.base46_cache .. "lspsaga")
      require("lspsaga").setup {
        beacon = {
          enable = true,
        },
        ui = {
          code_action = "󱐋",
          border = "rounded",
        },

        diagnostic = {
          border_follow = true,
          diagnostic_only_current = false,
          showCodeAction = true,
        },
      }
    end,
    dependencies = {
      "nvim-treesitter/nvim-treesitter", -- optional
      "nvim-tree/nvim-web-devicons", -- optional
    },
  },
}
