local M = {}

M.adapter = {
  id = "cppdbg",
  type = "executable",
  command = vim.fn.stdpath "data" .. "mason/bin/OpenDebuhAD7",
  args = {},
}

M.config = {
  {
    name = "(cppdbg) Launch file",
    type = "cppdbg",
    request = "launch",
    program = function()
      return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
    end,
    cwd = "${workspaceFolder}",
    stopOnEntry = false,
  },
  {
    name = "(cppdbg) Attach file",
    type = "cppdbg",
    request = "attach",
    MiMode = "gdb",
    processId = "${command:pickProcess}",
    program = function()
      return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
    end,
    -- cwd = "${workspaceFolder}",
    -- stopOnEntry = false,
    setupCommands = {
      {
        text = "-enable-pretty-printing",
        description = "enable pretty printing",
        ignoreFailures = false,
      },
    },
  },
  {
    name = "(cppdbg) Attach file :1234",
    type = "cppdbg",
    request = "launch",
    MIMode = "gdb",
    miDebuggerServerAddress = "localhost:1234",
    miDebuggerPath = "/usr/bin/gdb",
    program = function()
      return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
    end,
    cwd = "${workspaceFolder}",
    setupCommands = {
      {
        text = "-enable-pretty-printing",
        description = "enable pretty printing",
        ignoreFailures = false,
      },
    },
  },
  {
    name = "(cppdbg) Launch ROS Node",
    type = "cppdbg",
    request = "launch",
    program = function()
      local package_name = vim.fn.input "Package path: "
      local node_name = vim.fn.input "Node name: "
      local path = vim.fn.getcwd()
        .. "/"
        .. "install/"
        .. package_name
        .. "/"
        .. "lib/"
        .. package_name
        .. "/"
        .. node_name
      return path
    end,
    cwd = "${workspaceFolder}",
    stopOnEntry = false,
  },
  {
    name = "(cppdbg) Attach ROS Node",
    type = "cppdbg",
    request = "attach",
    program = function()
      local package_name = vim.fn.input "Package path: "
      local node_name = vim.fn.input "Node name: "
      local path = vim.fn.getcwd()
        .. "/"
        .. "install/"
        .. package_name
        .. "/"
        .. "lib/"
        .. package_name
        .. "/"
        .. node_name
      return path
    end,
    waitFor = true,
  },
}

return M
