return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use 'nvim-treesitter/nvim-treesitter'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
  use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
  use 'L3MON4D3/LuaSnip' -- Snippets plugin use 'neovim/nvim-lspconfig' use 'ellisonleao/gruvbox.nvim'

  use 'nvim-tree/nvim-web-devicons'
  use { 
    'nvim-telescope/telescope.nvim',
    requires = { 'nvim-lua/plenary.nvim' }
  }
  use {
    'nvim-telescope/telescope-fzf-native.nvim',
	run = 'make' 
  }
  use 'neovim/nvim-lspconfig'
  use 'ellisonleao/gruvbox.nvim'
  use 'williamboman/mason.nvim'
  use 'Mofiqul/dracula.nvim'
  use {
    "nvim-neorg/neorg",
    config = function()
        require("neorg").setup {
			load = {
				["core.defaults"] = {}
			}
        }
    end,
  }

  use {
    "klen/nvim-test",
     config = function()
      require('nvim-test').setup()
    end
  }
  use "lukas-reineke/indent-blankline.nvim"
  use "nvim-lualine/lualine.nvim"
  use "TimUntersberger/neogit"
  use "eddiebergman/nvim-treesitter-pyfold"
  use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} }
  use {
    "folke/trouble.nvim",
    requires = "nvim-tree/nvim-web-devicons",
    config = function()
      require("trouble").setup { }
    end
  }
  use({
      "glepnir/lspsaga.nvim",
      branch = "main",
      config = function()
          require('lspsaga').setup({})
      end,
  })

end)
