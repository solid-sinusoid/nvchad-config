local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local util = require 'lspconfig.util'

-- if you just want default config for the servers then put them in a table
local servers = {
  "basedpyright",
  "clangd",
  "lemminx",
  "biome",
  "neocmake",
  -- "yaml-language-server"
}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

-- jsonls
local jscapabilities = vim.lsp.protocol.make_client_capabilities()
jscapabilities.textDocument.completion.completionItem.snippetSupport = true

lspconfig.jsonls.setup{
  capabilities = jscapabilities
}

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
