-- Display Settings
vim.opt.nu = true                -- Show line numbers
vim.opt.relativenumber = true    -- Show relative line numbers
vim.opt.termguicolors = true     -- Enable true color support
vim.opt.cursorline = true        -- Highlight the current line
vim.opt.colorcolumn = "100"      -- Highlight column 100
vim.opt.signcolumn = "yes"       -- Always show sign column

-- Search Settings
vim.opt.hlsearch = false         -- Don't highlight search results
vim.opt.incsearch = true         -- Incremental search

-- Indentation and Tab Settings
vim.opt.tabstop = 2              -- Set tabstop to 2 spaces
vim.opt.softtabstop = 2          -- Use 2 spaces for tab while editing
vim.opt.shiftwidth = 2           -- Use 2 spaces per indent
vim.opt.expandtab = true         -- Convert tabs to spaces

vim.opt.autoindent = true             -- enable auto indentation
vim.opt.smartindent = true            -- make smarter auto indentation

-- Behavior Settings
vim.opt.scrolloff = 8            -- Start scrolling 8 lines before the edge
vim.opt.updatetime = 50          -- Time (in ms) before swap file is saved
vim.opt.isfname:append("@-@")    -- Modify the behavior of word motions

-- Clipboard Settings
vim.opt.clipboard:append("unnamedplus")  -- Use system clipboard

-- Window Split Settings
vim.opt.splitbelow = true        -- Horizontal splits appear below current window
vim.opt.splitright = true        -- Vertical splits appear to the right of current window

-- Backup Settings
vim.opt.backup = false               -- disable backup
vim.opt.writebackup = false          -- disable backup when writing
vim.opt.swapfile = false             -- disable swapfile
vim.opt.undodir = '~/.nvim/undo'     -- set an undo directory
vim.opt.undofile = true              -- enable persistent undo

-- Autoread Settings
vim.opt.autoread = true

