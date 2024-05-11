local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require("lspconfig")
local util = require('lspconfig.util')
local config = require("lspconfig.configs")

-- if you just want default config for the servers then put them in a table
local servers = {
  "basedpyright",
  "clangd",
  "lemminx",
  "biome",
  -- "neocmake",
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

lspconfig.basedpyright.setup{
  capabilities = capabilities,
  on_attach = on_attach,
  settings = {
    basedpyright = {
      typeCheckingMode = "off"
    }
  }
}

if not config.neocmake then
  config.neocmake = {
    default_config = {
      cmd = {"neocmakelsp", "--stdio"},
      filetypes = {"cmake"},
      root_dir = function (fname)
        return util.find_git_ancestor(fname)
      end,
      single_file_support = true,
      on_attach = on_attach,
      init_options = {
        format = {
          enable = true
        },
        scan_cmake_in_package = true
      }
    }
  }
  lspconfig.neocmake.setup({})
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
