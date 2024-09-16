---@type Base46Table
local M = {}
-- UI
M.base_30 = {
  white = "#BBB6B6",
  black = "#151515",
  darker_black = "#1F1F1F",
  black2 = "#2E2E2E",
  one_bg = "#2A2A2A",
  one_bg2 = "#343434",
  one_bg3 = "#3E3E3E",
  grey = "#424242",
  grey_fg = "#4B4B4B",
  grey_fg2 = "#565656",
  light_grey = "#6A6A6A",
  red = "#B66467",
  baby_pink = "#D58C8E",
  pink = "#D097A9",
  line = "#5c5a5a",
  green = "#8C977D",
  vibrant_green = "#A3C084",
  nord_blue = "#8DA3B9",
  blue = "#6E94B9",
  seablue = "#5E9E9E",
  yellow = "#D9BC8C",
  sun = "#E1C79A",
  purple = "#A988B0",
  dark_purple = "#957396",
  teal = "#6B9C9B",
  orange = "#D79771",
  cyan = "#8AA6A2",
  statusline_bg = "#1F1F1F",
  lightbg = "#2E2E2E",
  pmenu_bg = "#8C977D",
  folder_bg = "#6E94B9",
}

-- check https://github.com/chriskempson/base16/blob/master/styling.md for more info
M.base_16 = {
  base00 = "#151515",
  base01 = "#1F1F1F",
  base02 = "#2E2E2E",
  base03 = "#424242",
  base04 = "#BBB6B6",
  base05 = "#E8E3E3",
  base06 = "#E8E3E3",
  base07 = "#E8E3E3",
  base08 = "#B66467",
  base09 = "#D9BC8C",
  base0A = "#D9BC8C",
  base0B = "#8C977D",
  base0C = "#8AA6A2",
  base0D = "#8DA3B9",
  base0E = "#A988B0",
  base0F = "#BBB6B6",
}

-- OPTIONAL
-- overriding highlights for this specific theme only
M.polish_hl = {
  default = {
    Comment = {
      bg = "#ffffff",
      italic = true,
    },
  },
  treesitter = {
    ["@keyword.import"] = { fg = M.base_30.purple },
    ["@uri"] = { fg = M.base_30.blue },
    ["@tag.delimiter"] = { fg = M.base_30.red },
    ["@variable.member.key"] = { fg = M.base_30.white },
    ["@punctuation.bracket"] = { fg = M.base_30.pmenu_bg },
    ["@punctuation.delimiter"] = { fg = M.base_30.yellow },
    ["@type"] = { fg = M.base_30.yellow, bold = true, italic=false },
    ["@module"] = { fg = M.base_30.red, italic = true },
  },
}

-- set the theme type whether is dark or light
M.type = "dark" -- "or light"

-- this will be later used for users to override your theme table from chadrc
M = require("base46").override_theme(M, "paradice")

return M
