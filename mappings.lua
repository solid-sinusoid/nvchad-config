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
    ["<C-Left>"] = {
      "<cmd>vertical resize +5<CR>",
      "Resize Window Left",
    },
    ["<C-Right>"] = {
      "<cmd>vertical resize -5<CR>",
      "Resize Window Right",
    },
    ["<C-Up>"] = {
      "<cmd>horizontal resize +5<CR>",
      "Resize Window Up",
    },
    ["<C-Down>"] = {
      "<cmd> horizontal resize -5<CR>",
      "Resize Window Down",
    },
    ["<C-D>"] = { "<C-D>zz" },
    ["<C-U>"] = { "<C-U>zz" },
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
    ["<leader>du"] = {
      function()
        require("dapui").toggle()
      end,
      "Toggle DapUI",
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

M.overseer = {
  n = {
    ["<leader>tu"] = {
      "<cmd> OverseerToggle <CR>",
      "Toggle Overseer UI",
    },
    ["<leader>tr"] = {
      "<cmd> OverseerRun <CR>",
      "Run Task",
    },
  },
}

M.lspsaga = {
  n = {
    ["<leader>o"] = {
      "<cmd> Lspsaga outline <CR>",
      "Toggle Outline Current Code",
    },
    ["<leader>cf"] = {
      "<cmd> Lspsaga finder <CR>",
      "Find word under cursor",
    },
    ["<leader>lr"] = {
      "<cmd> Lspsaga rename <CR>",
      "Rename variable LSP",
    },
    ["K"] = {
      "<cmd> Lspsaga hover_doc <CR>",
      "Hower Doc",
    },
    ["gd"] = {
      "<cmd> Lspsaga goto_definition <CR>",
      "Goto Definition",
    },
    ["gtd"] = {
      "<cmd> Lspsaga goto_type_definition <CR>",
      "Goto Type Definition",
    },
  },
}

M.spectre = {
  n = {
    ["<leader>S"] = {
      function()
        require("spectre").toggle()
      end,
      "Toggle Find and Replace menu",
    },
  },
}
return M
