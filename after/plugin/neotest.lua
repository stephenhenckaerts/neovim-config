require('neotest').setup({
  adapters = {
    require('neotest-jest')({
      jestCommand = "npx jest --setupFiles dotenv/config",
      jestConfigFile = "custom.jest.config.ts",
      env = { CI = true, NODE_ENV = "test" },
      cwd = function(path)
        return vim.fn.getcwd()
      end,
    }),
    require('neotest-plenary'),
    require('neotest-vim-test')({
      ignore_file_types = { 'javascript' },  -- Adjust based on your needs
    }),
  },
})

-- Key mapping to run all tests in the project
vim.api.nvim_set_keymap('n', '<leader>tp', ':lua require("neotest").run.run({ jestCommand = "npx jest --setupFiles dotenv/config" })<CR>', { noremap = true, silent = true })

-- Key mapping to run the nearest test
vim.api.nvim_set_keymap('n', '<leader>tn', ':lua require("neotest").run.run()<CR>', { noremap = true, silent = true })

-- Key mapping to run the current file
vim.api.nvim_set_keymap('n', '<leader>tf', ':lua require("neotest").run.run(vim.fn.expand("%"))<CR>', { noremap = true, silent = true })

-- Key mapping to debug the nearest test (requires nvim-dap and adapter support)
vim.api.nvim_set_keymap('n', '<leader>td', ':lua require("neotest").run.run({strategy = "dap"})<CR>', { noremap = true, silent = true })

-- Key mapping to stop the nearest test
vim.api.nvim_set_keymap('n', '<leader>ts', ':lua require("neotest").run.stop()<CR>', { noremap = true, silent = true })

-- Key mapping to attach to the nearest test
vim.api.nvim_set_keymap('n', '<leader>ta', ':lua require("neotest").run.attach()<CR>', { noremap = true, silent = true })
