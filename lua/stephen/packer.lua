vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Core: Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- UI: Appearance and UI enhancements
    use({ 'rose-pine/neovim', as = 'rose-pine' }) -- Color theme

    -- File & Code Navigation: Tools for navigating and searching within projects
    use {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.2',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    -- Code Parsing & Manipulation: Syntax trees, playgrounds, and more
    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
    use('nvim-treesitter/playground')

    -- Utilities: Plugins that provide general utility functionalities
    use('nvim-lua/plenary.nvim')
    use('ThePrimeagen/harpoon')
    use('mbbill/undotree')
    use('tpope/vim-fugitive')
    use {
      'nvim-lualine/lualine.nvim',
      requires = { 'nvim-tree/nvim-web-devicons', opt = false }
    }
    use('preservim/nerdtree')
    use('jiangmiao/auto-pairs')

    -- LSP & Autocompletion: Language Server Protocol and code autocompletion tools
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },             -- Core LSP
            { 'williamboman/mason.nvim' },           -- Mason LSP (Optional)
            { 'williamboman/mason-lspconfig.nvim' }, -- Mason LSP Config (Optional)

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },     -- Core Completion
            { 'hrsh7th/cmp-nvim-lsp' }, -- LSP Completion
            { 'L3MON4D3/LuaSnip' },     -- Snippets
        }
    }

    -- Git & Version Control: Tools related to version control systems
    use('github/copilot.vim') -- GitHub Copilot extension for Vim
end)
