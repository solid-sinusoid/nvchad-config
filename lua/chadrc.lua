---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "highlights"

M.base46 = {
  theme = "kanagawa",
  theme_toggle = { "kanagawa", "one_light" },

  hl_override = highlights.override,
  hl_add = highlights.add,
  -- integrations = {"alpha", "rainbowdelimiters"}
}

-- M.plugins = "plugins"
-- M.base46.extended_integrations = {"trouble", "alpha", "dap", "lspsaga", "rainbowdelimiters"}
-- check core.mappings for table structure
-- M.mappings = require "mappings"

return M
