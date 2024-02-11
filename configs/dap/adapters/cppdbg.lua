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
