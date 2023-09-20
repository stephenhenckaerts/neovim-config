vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer
  use 'wbthomason/packer.nvim'

  -- Start Screen
  use 'mhinz/vim-startify'

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

  -- Code Testing
  use {
    "nvim-neotest/neotest",
    requires = {
      "nvim-neotest/neotest-plenary",
      "nvim-neotest/neotest-vim-test",
      "nvim-treesitter/nvim-treesitter",
      "antoinemadec/FixCursorHold.nvim",
      "nvim-neotest/neotest-jest",
    }
  }

  -- Code Debugging
  use 'mfussenegger/nvim-dap'

  -- Utilities
  use 'mbbill/undotree'
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = false }
  }
  use 'tpope/vim-fugitive'
  use 'nvim-lua/plenary.nvim'
  use 'preservim/nerdcommenter'

  -- LSP & Autocompletion
  use {
    'neoclide/coc.nvim',
    branch = 'release'
  }

  -- Git & Version Control
  use 'github/copilot.vim'
end)

