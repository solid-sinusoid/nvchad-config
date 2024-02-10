---@type MappingsTable
local M = {}

M.general = {
  n = {
    ["\\"] = {
      "<cmd> vsplit <CR>",
      "Vertical Split",
    },
    ["-"] = {
      "<cmd> split <CR>",
      "Horizontal Split",
    },
    ["<leader>q"] = {
      "<cmd>q<CR>",
      "Close window",
    },
    --  format with conform
    ["<leader>fm"] = {
      function()
        require("conform").format()
      end,
      "formatting",
    },
    ["<leader>frm"] = {
      function()
        vim.lsp.buf.format()
      end,
      "default formatting",
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

M.scissors = {
  n = {
    ["<leader>se"] = {
      function()
        require("scissors").editSnippet()
      end,
      "Edit snippet",
    },
    ["<leader>sa"] = {
      function()
        require("scissors").addNewSnippet()
      end,
      "Add new snippet",
    },
  },
}
-- more keybinds!

return M
