local M = {}

M.adapter = {
  type = "server",
  port = "${port}",
  executable = {
    command = vim.fn.stdpath "data" .. "mason/bin/codelldb",
    args = { "--port", "${port}" },
  },
}

M.config = {
  {
    name = "(codelldb) Launch file",
    type = "codelldb",
    request = "launch",
    program = function()
      return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
    end,
    cwd = "${workspaceFolder}",
    stopOnEntry = false,
  },
  {
    name = "(codelldb) Launch ROS Node",
    type = "codelldb",
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
    stopOnEntry = false,
  },
  {
    name = "(codelldb) Attach ROS Node",
    type = "codelldb",
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
