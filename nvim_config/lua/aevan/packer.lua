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

end)
