---@type Base46Table
local M = {}
-- UI
M.base_30 = {
  white = "#E8E3E3", -- соответствует base05
  black = "#151515", -- соответствует base00, обычно фон вашей темы
  darker_black = "#1F1F1F", -- соответствует base01, на 6% темнее
  black2 = "#2E2E2E", -- соответствует base02, на 6% светлее черного
  one_bg = "#2A2A2A", -- немного светлее, чтобы отличаться от black2
  one_bg2 = "#343434", -- на 6% светлее, чем one_bg
  one_bg3 = "#3E3E3E", -- на 6% светлее, чем one_bg2
  grey = "#424242", -- соответствует base03, на 40% светлее черного
  grey_fg = "#4B4B4B", -- на 10% светлее серого
  grey_fg2 = "#565656", -- на 5% светлее, чем grey_fg
  light_grey = "#6A6A6A", -- на 10% светлее, чем grey_fg2
  red = "#B66467", -- соответствует base08
  baby_pink = "#D58C8E", -- более светлый оттенок красного
  pink = "#D097A9", -- немного ярче, чем baby_pink
  line = "#1C1C1C", -- немного светлее черного для линий
  green = "#8C977D", -- соответствует base0B
  vibrant_green = "#A3C084", -- более яркий зеленый
  nord_blue = "#8DA3B9", -- соответствует base0D
  blue = "#6E94B9", -- немного темнее, чем nord_blue
  seablue = "#5E9E9E", -- смесь зеленого и синего
  yellow = "#D9BC8C", -- соответствует base09/base0A
  sun = "#E1C79A", -- более светлый оттенок желтого
  purple = "#A988B0", -- соответствует base0E
  dark_purple = "#957396", -- более темный оттенок фиолетового
  teal = "#6B9C9B", -- смесь синего и зеленого
  orange = "#D79771", -- оттенок оранжевого для акцентов
  cyan = "#8AA6A2", -- соответствует base0C
  statusline_bg = "#1F1F1F", -- соответствует darker_black
  lightbg = "#2E2E2E", -- соответствует black2
  pmenu_bg = "#8C977D", -- совпадает с green
  folder_bg = "#6E94B9" -- совпадает с blue
}

-- check https://github.com/chriskempson/base16/blob/master/styling.md for more info
M.base_16 = {
  base00 = "#151515";
  base01 = "#1F1F1F";
  base02 = "#2E2E2E";
  base03 = "#424242";
  base04 = "#BBB6B6";
  base05 = "#E8E3E3";
  base06 = "#E8E3E3";
  base07 = "#E8E3E3";
  base08 = "#B66467";
  base09 = "#D9BC8C";
  base0A = "#D9BC8C";
  base0B = "#8C977D";
  base0C = "#8AA6A2";
  base0D = "#8DA3B9";
  base0E = "#A988B0";
  base0F = "#BBB6B6";
}

-- OPTIONAL
-- overriding highlights for this specific theme only 
M.polish_hl = {
  Comment = {
    bg = "#ffffff", -- or M.base_30.cyan 
    italic =  true
  }
}

-- set the theme type whether is dark or light
M.type = "dark" -- "or light"

-- this will be later used for users to override your theme table from chadrc
M = require("base46").override_theme(M, "paradice")

return M
