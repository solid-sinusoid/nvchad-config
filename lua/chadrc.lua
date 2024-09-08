---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "highlights"

M.base46 = {
  theme = "paradice",
  theme_toggle = { "paradice", "one_light" },

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
    "statusline",
  },
}

M.mason = {
  command = true,
  pkgs = {
    -- lua stuff
    "lua-language-server",
    "stylua",
    -- python
    "basedpyright",
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
    "prettier", -- Formatter
    -- json
    "biome", -- Linter
    "jq", -- Formatter
    "json-lsp", -- LSP
    -- docker
    "dockerfile-language-server",
    "docker-compose-language-service",
    -- Rust
    "rust-analyzer",
  },
}

return M
