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
    }

  },
  v = {
    [">"] = { ">gv", "indent"},
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
    }
  }
}
M.lazygit = {
  n = {
    ["<leader>gl"] = {
      "<cmd> LazyGit <CR>",
      "LazyGit"
    },
    ["<leader>gf"] = {
      "<cmd> LazyGitCurrentFile <CR>",
      "LazyGit current file"
    },
    ["<leader>gc"] = {
      "<cmd> LazyGitFilter <CR>",
      "LazyGit commits"
    }
  }
}

-- more keybinds!

return M
