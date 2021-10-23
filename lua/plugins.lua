return require('packer').startup(function(use)
-- Package Manager
  use 'wbthomason/packer.nvim'
-- File Explorer
  use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons',
    config = function() require'nvim-tree'.setup {} end
    }
-- LSP
  use 'neovim/nvim-lspconfig'
  use 'williamboman/nvim-lsp-installer'
  --use 'glepnir/lspsaga.nvim'
-- Completion
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/nvim-cmp'
  use 'onsails/lspkind-nvim'
  use 'glepnir/lspsaga.nvim'
-- TreeSitter
  use {'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'}
-- Telescope
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
-- Fancy things
--
  use {
    'nvim-lualine/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }
  use 'christianchiarulli/nvcode-color-schemes.vim'
  use {
    'norcalli/nvim-colorizer.lua',
    config = function() require('colorizer').setup() end
  }
  use {
    'akinsho/bufferline.nvim',
    requires = 'kyazdani42/nvim-web-devicons'
  }
  use 'numToStr/Comment.nvim'
end)
