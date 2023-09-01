-- Set the root directory to the git root directory of the project
-- So that when opening a file, the working directory is set to the root of the project
-- This is useful for plugins like telescope and fzf

-- Store the directory from which nvim was invoked
vim.g.initial_working_directory = vim.fn.getcwd()

-- Function to set the working directory back to the initial one
local function set_working_dir()
    vim.cmd("cd " .. vim.g.initial_working_directory)
end

-- Add the function to the _G global table so it can be accessed from the autocmd
_G.set_working_dir = set_working_dir

-- Automatically change the working directory to the initial one when opening a file
vim.cmd [[
  autocmd BufEnter * lua _G.set_working_dir()
]]

