require "nvchad.mappings"
local map = vim.keymap.set

-- General mappings
map("n", "\\", "<cmd>vsplit<CR>", { desc = "Window Vertical Split" })
map("n", "-", "<cmd>split<CR>", { desc = "Window Horizontal Split" })
map("n", "<leader>q", "<cmd>q<CR>", { desc = "Window Close" })

map("n", "<leader>fm", function()
  require("conform").format()
end, { desc = "Formatting" })

map("n", "<leader>frm", function()
  vim.lsp.buf.format()
end, { desc = "LSP Formatting" })

-- Resize
map("n", "<C-Left>", "<cmd>vertical resize +5<CR>", { desc = "Resize Window Left" })
map("n", "<C-Right>", "<cmd>vertical resize -5<CR>", { desc = "Resize Window Right" })
map("n", "<C-Up>", "<cmd>horizontal resize +5<CR>", { desc = "Resize Window Up" })
map("n", "<C-Down>", "<cmd>horizontal resize -5<CR>", { desc = "Resize Window Down" })

-- Scrolling
map("n", "<C-D>", "<C-D>zz", { desc = "Scroll Down Centered" })
map("n", "<C-U>", "<C-U>zz", { desc = "Scroll Up Centered" })

-- Indent
map("v", ">", ">gv", { desc = "Indent right" })
map("v", "<", "<gv", { desc = "Indent left" })

-- DAP mappings
map("n", "<leader>db", "<cmd>DapToggleBreakpoint<CR>", { desc = "DAP Toggle Breakpoint" })
map("n", "<leader>dr", "<cmd>DapContinue<CR>", { desc = "DAP Continue" })
map("n", "<leader>du", function()
  require("dapui").toggle()
end, { desc = "DAP UI Toggle" })

map("n", "<leader>di", function()
  require("dapui").eval()
end, { desc = "DAP Eval" })

map("n", "<leader>df", function()
  require("dapui").float_element()
end, { desc = "DAP Float Element" })

-- LazyGit mappings
map("n", "<leader>gl", "<cmd>LazyGit<CR>", { desc = "LazyGit" })
map("n", "<leader>gf", "<cmd>LazyGitCurrentFile<CR>", { desc = "LazyGit Current File" })
map("n", "<leader>gc", "<cmd>LazyGitFilter<CR>", { desc = "LazyGit Commits" })

-- Scissors mappings v0.10 needed
-- map("n", "<leader>se", function()
--   require("scissors").editSnippet()
-- end, { desc = "Scissors Edit Snippet" })
--
-- map("n", "<leader>sa", function()
--   require("scissors").addNewSnippet()
-- end, { desc = "Scissors Add New Snippet" })

-- Overseer mappings
map("n", "<leader>tu", "<cmd>OverseerToggle<CR>", { desc = "Overseer Toggle UI" })
map("n", "<leader>tr", "<cmd>OverseerRun<CR>", { desc = "Overseer Run Task" })

-- LSPSaga mappings
map("n", "<leader>o", "<cmd>Lspsaga outline<CR>", { desc = "LSPSaga Outline" })
map("n", "<leader>cf", "<cmd>Lspsaga finder<CR>", { desc = "LSPSaga Finder" })
map("n", "<leader>lr", "<cmd>Lspsaga rename<CR>", { desc = "LSPSaga Rename" })
map("n", "K", "<cmd>Lspsaga hover_doc<CR>", { desc = "LSPSaga Hover Doc" })
map("n", "gd", "<cmd>Lspsaga goto_definition<CR>", { desc = "LSPSaga Goto Definition" })
map("n", "gtd", "<cmd>Lspsaga goto_type_definition<CR>", { desc = "LSPSaga Goto Type Definition" })

-- Spectre mappings
map("n", "<leader>S", function()
  require("spectre").toggle()
end, { desc = "Spectre Toggle" })

-- Disable mappings (if necessary)
-- local nomap = vim.keymap.del
-- Example of disabling a mapping
-- nomap("i", "<C-k>")
-- nomap("n", "<C-k>")
