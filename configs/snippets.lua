local snippets_dir = "/home/bill-finger/.config/nvim/lua/user/snippets"
local plugins =  {
  {
    "L3MON4D3/LuaSnip",
    config = function(plugin, opts)
      -- include the default astronvim config that calls the setup call
      require "plugins.configs.luasnip"(plugin, opts)
      -- load snippets paths
      require("luasnip.loaders.from_vscode").lazy_load {
        -- this can be used if your configuration lives in ~/.config/nvim
        -- if your configuration lives in ~/.config/astronvim, the full path
        -- must be specified in the next line
        paths = { snippets_dir },
      }
    end,
  },
  {
    "chrisgrieser/nvim-scissors",
    event = "VeryLazy",
    dependencies = "nvim-telescope/telescope.nvim", -- optional
    opts = {
      snippetDir = snippets_dir,
    },
  },
}

return plugins
