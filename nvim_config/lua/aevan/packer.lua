-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.4',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  --Treesitter installs
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use('nvim-treesitter/playground')

  --Harpoon
  use('theprimeagen/harpoon')

  --UndoTree
  use('mbbill/undotree')

  --Fugivite
  use('tpope/vim-fugitive')

  --Vim Command Completion
  use('smolck/command-completion.nvim')

  --LSP Zero
  use {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v3.x',
  requires = {
	  --- Uncomment these if you want to manage LSP servers from neovim
	  {'williamboman/mason.nvim'},
	  {'williamboman/mason-lspconfig.nvim'},

      -- LSP Support
      {'neovim/nvim-lspconfig'},
      -- Autocompletion
      {'hrsh7th/nvim-cmp'},
      {'hrsh7th/cmp-nvim-lsp'},
      {'L3MON4D3/LuaSnip'},
  }
}

  use('github/copilot.vim')

  use {"akinsho/toggleterm.nvim", tag = '*', config = function()
      require("toggleterm").setup{
      }
  end}

--which key
use {
  "folke/which-key.nvim",
  config = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
    require("which-key").setup {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
  end
}

-- Debugging
use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} }

-- Tab Handling
use 'nvim-tree/nvim-web-devicons' -- OPTIONAL: for file icons
use 'lewis6991/gitsigns.nvim' -- OPTIONAL: for git status
use 'romgrk/barbar.nvim'

-- mini libraries
use { 'echasnovski/mini.comment', branch = 'stable' }
use { 'echasnovski/mini.pairs', branch = 'stable' }
use { 'echasnovski/mini.surround', branch = 'stable' }

-- LuaLine
use {
  'nvim-lualine/lualine.nvim',
  requires = { 'nvim-tree/nvim-web-devicons', opt = true }
}

-- DBT Tool
use {
    "cfmeyers/dbt.nvim",
    requires = {
        "nvim-lua/plenary.nvim",
        "nvim-telescope/telescope.nvim",
        "rcarriga/nvim-notify",
    },
}

use {"mrquantumcodes/retrospect.nvim"}

end)
