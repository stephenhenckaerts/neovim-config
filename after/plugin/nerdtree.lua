vim.api.nvim_set_keymap('n', '<leader>pv', ':NERDTreeFind<CR>', { noremap = true, silent = true })

vim.cmd [[
  autocmd FileType nerdtree setlocal number relativenumber
]]

vim.g.NERDTreeQuitOnOpen = 1

vim.api.nvim_set_keymap('n', '<buffer><silent>I', ':NERDTree-Map-ActivateNode-VSplit<CR>:q<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<buffer><silent>S', ':NERDTree-Map-ActivateNode-Split<CR>:q<CR>', { noremap = true, silent = true })
