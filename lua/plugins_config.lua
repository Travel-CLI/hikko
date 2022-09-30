--TODO:
require('utils.bootstrap');

-- Checking plugins on startup
local function check_plugins()
	require('packer').startup(function(use)
	  use "wbthomason/packer.nvim"

	  -- Color scheme
	  use 'tanvirtin/monokai.nvim'

	  -- Wakatime
	  use 'wakatime/vim-wakatime'

	  -- LSP Progressbar
	  use {
	    'j-hui/fidget.nvim',
	    config = function()
	      require('plugins/fidget')
	    end
	  }

	  -- Installer for LSP
	  use {
	    "williamboman/mason.nvim",
	    requires = {
	      "williamboman/mason-lspconfig.nvim",
	      "neovim/nvim-lspconfig",
	    },
	    config = function()
	      require('plugins/mason')
	    end
	  }

	  -- Menu for viewing problems in LSP
	  use {
	    "folke/trouble.nvim",
	    requires = "kyazdani42/nvim-web-devicons",
	    config = function()
	      require("trouble").setup()
	    end,
	  }

	  -- Git
	  use {
	    'lewis6991/gitsigns.nvim',
	    tag = 'release',
	    config = function()
	      require('gitsigns').setup()
	    end
	  }
	  -- Autocompletion
	  use {
	    'hrsh7th/nvim-cmp',
	    requires = {
	      'L3MON4D3/LuaSnip',
	      'saadparwaiz1/cmp_luasnip',
	      'hrsh7th/cmp-nvim-lsp',
	      'hrsh7th/cmp-path',
	      'hrsh7th/cmp-emoji',
	      'hrsh7th/cmp-nvim-lsp-signature-help',
	      'hrsh7th/cmp-nvim-lua',
	      'rafamadriz/friendly-snippets'
	    },
	    config = function()
	      require('plugins/cmp')
	    end
	  }

	  -- Icons for autocompletion
	  use {
	    'onsails/lspkind-nvim',
	    config = function()
	      require('plugins/lspkind')
	    end
	  }

	  -- Statusbar
	  use {
	    'nvim-lualine/lualine.nvim',
	    requires = { 'kyazdani42/nvim-web-devicons', opt = true },
	    config = function()
	      require('plugins/lualine')
	    end
	  }

	  -- Comments
	  use {
	    'b3nj5m1n/kommentary',
	    config = function()
	      require('kommentary.config').configure_language("typescript", {
		single_line_comment_string = "//",
		multi_line_comment_strings = { "/*", "*/" },
	      })
	    end,
	  }

	  -- Correctly highlight many languages
	  use {
	    'nvim-treesitter/nvim-treesitter',
	    config = function()
	      require('plugins/tree-sitter')
	    end
	  }

	  -- Auto pairs for quotes and brackets
	  use {
	    'windwp/nvim-autopairs',
	    config = function()
	      require('nvim-autopairs').setup {}
	    end
	  }

	  -- Popup for searching for files, buffers, languages, git blames etc.
	  use {
	    'nvim-telescope/telescope.nvim',
	    requires = { { 'nvim-lua/plenary.nvim' } },
	    config = function()
	      require('plugins/telescope')
	    end
	  }

	  -- File explorer
	  use {
	    'kyazdani42/nvim-tree.lua',
	    config = function()
	      require('plugins/nvim-tree')
	    end
	  }

	  -- Null-ls
	  use {
	    'jose-elias-alvarez/null-ls.nvim',
	    config = function()
	      require('plugins/null-ls')
	    end,
	    requires = {
	      "williamboman/mason-lspconfig.nvim",
	      "neovim/nvim-lspconfig",
	      "hrsh7th/nvim-cmp"
	    }
	  }

    -- Todo comments highlight
    use {
      'folke/todo-comments.nvim',
      requires = { 'nvim-lua/plenary.nvim' },
      config = function ()
        require('plugins/todo')
      end
    }
	end)
end

-- If packer doesn't exists
if Bootstrap.check_packer() then
	Bootstrap.install();
	check_plugins()
  cmd("PackerSync")
  cmd("PackerCompile")
else

	-- If packer exists - simply load plugins
	check_plugins()
end
