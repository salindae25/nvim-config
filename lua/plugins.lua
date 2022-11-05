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
  use 'windwp/nvim-ts-autotag'

  -- Auto Complete
  use 'hrsh7th/cmp-buffer' -- nvim-cmp source for buffer words
  use 'hrsh7th/cmp-nvim-lsp' -- nvim-cmp source for neovim's built-in LSP
  use 'hrsh7th/nvim-cmp' -- Completion
  use 'hrsh7th/cmp-path'

  -- LSP
  use 'neovim/nvim-lspconfig' -- LSP
  use 'glepnir/lspsaga.nvim' -- LSP UIs
  use 'L3MON4D3/LuaSnip'
  use 'rafamadriz/friendly-snippets'
  use 'saadparwaiz1/cmp_luasnip' 
  use {
    'nvim-treesitter/nvim-treesitter',
--    run = ':TSUpdate'
  }
  use 'onsails/lspkind-nvim' -- vscode-like pictograms
  use 'jose-elias-alvarez/null-ls.nvim' -- Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua

  -- Terminal --
  use 'akinsho/toggleterm.nvim'

end)
