---@type MappingsTable
local M = {}

M.general = {
  n = {
    --  format with conform
    ["<leader>fm"] = {
      function()
        require("conform").format()
      end,
      "formatting",
    },
  },
  v = {
    [">"] = { ">gv", "indent" },
  },
}

M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = {
      "<cmd> DapToggleBreakpoint <CR>",
      "Add breakpoint at line",
    },
    ["<leader>dr"] = {
      "<cmd> DapContinue <CR>",
      "Start or continue the debugger",
    },
  },
}
M.lazygit = {
  n = {
    ["<leader>gl"] = {
      "<cmd> LazyGit <CR>",
      "LazyGit",
    },
    ["<leader>gf"] = {
      "<cmd> LazyGitCurrentFile <CR>",
      "LazyGit current file",
    },
    ["<leader>gc"] = {
      "<cmd> LazyGitFilter <CR>",
      "LazyGit commits",
    },
  },
}

M.nvimtree = {
  n = {
    ["l"] = {
      function()
        local api = require "nvim-tree.api"
        local function edit_or_open()
          local node = api.tree.get_node_under_cursor()
          if node.nodes ~= nil then
            api.node.open.edit()
          else
            api.node.open.edit()
            api.tree.close()
          end
        end
        edit_or_open()
      end,
      "Edit Or Open",
    },
    ["L"] = {
      function()
        local api = require "nvim-tree.api"
        local function vsplit_preview()
          local node = api.tree.get_node_under_cursor()
          if node.nodes ~= nil then
            api.node.open.edit()
          else
            api.node.open.vertical()
          end
          api.tree.focus()
        end
        vsplit_preview()
      end,
    },
    ["h"] = {
      function()
        require("nvim-tree.api").tree.close()
      end
    },
    ["H"] = {
      function()
        require("nvim-tree.api").tree.collapse_all()
      end
    }
  },
}

-- more keybinds!

return M
