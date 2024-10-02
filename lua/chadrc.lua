---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "highlights"

M.base46 = {
  theme = "kanagawa",
  theme_toggle = { "kanagawa", "one_light" },
  changed_themes = {
    tokyodark = {
      polish_hl = {
        treesitter = {
          ["@type"] = { fg = "#7199ee", bold = true, italic = false },
          ["@module"] = { fg = "#ee6d85", italic = true },
          ["@punctuation.delimiter"] = {fg = "#7199ee"}
        },
      },
    },
    kanagawa = {
      polish_hl = {
        treesitter = {
          ["@keyword.import"] = { fg = "#a48ec7" },
          ["@uri"] = { fg = "#7FB4CA" },
          ["@tag.delimiter"] = { fg = "#d8616b" },
          ["@variable.member.key"] = { fg = "#DCD7BA" },
          ["@punctuation.bracket"] = { fg = "#a48ec7" },
          ["@punctuation.delimiter"] = { fg = "#DCD7BA" },
          ["@module"] = { fg = "#d8616b", italic = true },
          ["@type"] = { fg = "#dca561", bold = true, italic = false },
        }
      }
    }
  },



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

M.ui = {

  statusline = {
    theme = "minimal", -- default/vscode/vscode_colored/minimal
    -- default/round/block/arrow separators work only for default statusline theme
    -- round and block will work for minimal theme only
    separator_style = "round",
    order = nil,
    modules = nil,
  },

  -- lazyload it when there are 1+ buffers
  tabufline = {
    enabled = true,
    lazyload = true,
    order = { "treeOffset", "buffers", "tabs", "btns" },
    modules = nil,
  },
}

M.nvdash = {
  load_on_startup = true,
  header = {
    " ██████   █████                                ███                 ",
    "░░██████ ░░███                                ░░░                  ",
    " ░███░███ ░███   ██████   ██████  █████ █████ ████  █████████████  ",
    " ░███░░███░███  ███░░███ ███░░███░░███ ░░███ ░░███ ░░███░░███░░███ ",
    " ░███ ░░██████ ░███████ ░███ ░███ ░███  ░███  ░███  ░███ ░███ ░███ ",
    " ░███  ░░█████ ░███░░░  ░███ ░███ ░░███ ███   ░███  ░███ ░███ ░███ ",
    " █████  ░░█████░░██████ ░░██████   ░░█████    █████ █████░███ █████",
    "░░░░░    ░░░░░  ░░░░░░   ░░░░░░     ░░░░░    ░░░░░ ░░░░░ ░░░ ░░░░░ ",
  },

  -- buttons = {
  --   { "  Find File", "Spc f f", "Telescope find_files" },
  --   { "󰈚  Recent Files", "Spc f o", "Telescope oldfiles" },
  --   { "󰈭  Find Word", "Spc f w", "Telescope live_grep" },
  --   { "  Bookmarks", "Spc m a", "Telescope marks" },
  --   { "  Themes", "Spc t h", "Telescope themes" },
  --   { "  Mappings", "Spc c h", "NvCheatsheet" },
  -- },
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
