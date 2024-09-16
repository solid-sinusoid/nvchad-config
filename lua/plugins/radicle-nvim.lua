return {
  {
    dir = "~/radicle.nvim",
    name = "radicle-nvim",
    event = "VeryLazy",
    config = function ()
      require("radicle-nvim").setup()
    end
  }
}
