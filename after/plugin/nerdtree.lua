-- Setting other NERDTree related options and behaviors
vim.cmd('let g:NERDTreeQuitOnOpen = 1')

-- Setting autocommands and custom commands for NERDTree
vim.cmd([[
    autocmd StdinReadPre * let s:std_in=1
    autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd o | endif
    autocmd FileType nerdtree setlocal relativenumber
]])

-- Setting custom command Ex to open NERDTree in current file's directory
vim.cmd("command! Ex NERDTree %:p:h | wincmd o")

