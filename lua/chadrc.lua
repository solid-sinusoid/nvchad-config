---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "highlights"

M.base46 = {
  theme = "kanagawa",
  theme_toggle = { "kanagawa", "one_light" },

  hl_override = highlights.override,
  hl_add = highlights.add,

  statusline = {
    theme = "default",
  },

  integrations = {
    "trouble",
    "dap",
    "lspsaga",
    "rainbowdelimiters",
    "whichkey",
    "cmp",
    "lsp",
    "mason",
    "defaults",
    "telescope",
    "statusline"
  },
}

return M
