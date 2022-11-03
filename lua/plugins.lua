local status, packer = pcall(require,'packer')
if (not status) then
  print('Packer is not installed')
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  
-- Essentials--
  use 'wbthomason/packer.nvim'
  use {'nvim-lualine/lualine.nvim',
  requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  use 'nvim-lua/plenary.nvim' -- Common utilities
  use 'glepnir/dashboard-nvim' -- Dashboard
  use 'kyazdani42/nvim-tree.lua' --NvimTree file manager
  use 'akinsho/nvim-bufferline.lua' -- Tab header
 
-- Additional
  use 'BurntSushi/ripgrep'  

-- Color scheme --
  use { 'svrana/neosolarized.nvim',
    requires = {'tjdevries/colorbuddy.nvim'}
  }

-- Navigation Easy --
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-file-browser.nvim'


  -- Programming --
  use 'numToStr/Comment.nvim'
  use 'windwp/nvim-autopairs'

  -- Auto Complete
  use 'hrsh7th/cmp-buffer' -- nvim-cmp source for buffer words
  use 'hrsh7th/cmp-nvim-lsp' -- nvim-cmp source for neovim's built-in LSP
  use 'hrsh7th/nvim-cmp' -- Completion
  use 'hrsh7th/cmp-path'

  -- LSP
  use 'neovim/nvim-lspconfig' -- LSP
  use 'L3MON4D3/LuaSnip'
  use {
    'nvim-treesitter/nvim-treesitter',
--    run = ':TSUpdate'

  -- Terminal --
  use 'akinsho/toggleterm.nvim'
end)
