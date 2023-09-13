vim.api.nvim_exec([[
function! ToggleNERDTree()
  if exists("t:NERDTreeBufName") && bufwinnr(t:NERDTreeBufName) != -1
    execute 'NERDTreeClose'
  elseif expand('%') == ''
    execute 'NERDTreeToggle'
  else
    execute 'NERDTreeFind'
  endif
endfunction
]], false)

vim.api.nvim_set_keymap('n', '<leader>pv', ':call ToggleNERDTree()<CR>', { noremap = true, silent = true })

vim.cmd [[
  autocmd FileType nerdtree setlocal number relativenumber
]]

vim.g.NERDTreeQuitOnOpen = 1

