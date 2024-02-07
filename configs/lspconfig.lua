local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

-- if you just want default config for the servers then put them in a table
local servers = { "pyright", "clangd" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

-- 
-- lspconfig.pyright.setup { blabla}
-- lspconfig.clangd.setup {
--   on_attach = function(client, bufnr)
--     client.resolved_capabilities.document_formatting = true
--     client.server_capabilities.signatureHelpProvider = false
--     on_attach(client, bufnr)
--   end,
--   capabilities = capabilities
-- }
