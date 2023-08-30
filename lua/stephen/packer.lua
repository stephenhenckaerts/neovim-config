vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer
    use 'wbthomason/packer.nvim'

    -- UI & Appearance
    use ("joshdick/onedark.vim")

    -- Navigation & File Management
    use 'preservim/nerdtree'
    use {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.2',
        requires = { 'nvim-lua/plenary.nvim' }
    }
    use{
      'ggandor/leap.nvim',
      requires = { 'tpope/vim-repeat' }
    }
    use 'ThePrimeagen/harpoon'

    -- Code Parsing, Highlighting & Manipulation
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
    use 'nvim-treesitter/playground'
    use 'jiangmiao/auto-pairs'

    -- Utilities
    use 'mbbill/undotree'
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = false }
    }
    use 'tpope/vim-fugitive'
    use 'nvim-lua/plenary.nvim'

    -- LSP & Autocompletion
    use {
        'neoclide/coc.nvim',
        branch = 'release'
    }

    -- Git & Version Control
    use 'github/copilot.vim'
end)

