local dap = require "dap"

local codelldb = require "configs.dap.adapters.codelldb"
local cppdbg = require "configs.dap.adapters.cppdbg"

dap.adapters.codelldb = cppdbg.adapter
dap.configurations.cpp = cppdbg.config
dap.configurations.c = cppdbg.config

-- local debugpy = require("configs.dap.adapters.debugpy")
--
-- dap.adapters.debugpy = function(cb, config)
--   if config.request == 'attach' then
--     ---@diagnostic disable-next-line: undefined-field
--     local port = (config.connect or config).port
--     ---@diagnostic disable-next-line: undefined-field
--     local host = (config.connect or config).host or '127.0.0.1'
--     cb({
--       type = 'server',
--       port = assert(port, '`connect.port` is required for a python `attach` configuration'),
--       host = host,
--       options = {
--         source_filetype = 'python',
--       },
--     })
--   else
--     cb({
--       type = 'executable',
--       command = vim.fn.expand('$HOME/.virtualenvs/debugpy/bin/python'),
--       args = { '-m', 'debugpy.adapter' },
--       options = {
--         source_filetype = 'python',
--       },
--     })
--   end
-- end
--
-- dap.configurations.debugpy = debugpy.config
