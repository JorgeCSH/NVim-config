-- Here we use have our package manager, in this case we use packer. Warning, unmaintained, someday I will change it.
-- Also must be sourced when you change something.
-- In this case, to open the manager we type "PackerSync" to sync the packages we are adding.

-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Here we add another package, in this case, telescope
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.8',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }
  -- Here we add our pre-definded color scheme/theme....REMEMBER TO SOURCE!!!
  use({ 
	  "catppuccin/nvim", 
	  as = "catppuccin",
	  config = function()
		  vim.cmd('colorscheme catppuccin-macchiato')
	  end
  })
  -- Treesitter for code interface, we must init.
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use('nvim-treesitter/playground')
  -- harpoon for switch between files
  use('ThePrimeagen/harpoon')
  -- To see the current state compared to edits you have done.
  use('mbbill/undotree')
  -- Fugitivie 
  use('tpope/vim-fugitive')
end)


