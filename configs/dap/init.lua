local dap = require("dap")

local codelldb = require("custom.configs.dap.adapters.codelldb")
local cppdbg = require("custom.configs.dap.adapters.cppdbg")

dap.adapters.codelldb = cppdbg.adapter
dap.configurations.cpp = cppdbg.config
dap.configurations.c = cppdbg.config

