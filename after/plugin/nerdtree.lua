-- Map <leader>pv to open NERDTree focused on the current file
vim.api.nvim_set_keymap('n', '<leader>pv', ':NERDTreeFind<CR>', { noremap = true, silent = true })

-- Close NERDTree when a file is opened
vim.g.NERDTreeQuitOnOpen = 1

-- Customize NERDTree behavior on `I` and `S`
-- By default, NERDTree uses NERDTree-Map-ActivateNode-* maps.
-- We'll override these to close NERDTree after opening in a split.
vim.api.nvim_set_keymap('n', '<buffer><silent>I', ':NERDTree-Map-ActivateNode-VSplit<CR>:q<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<buffer><silent>S', ':NERDTree-Map-ActivateNode-Split<CR>:q<CR>', { noremap = true, silent = true })

