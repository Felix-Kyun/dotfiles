--                    ______     ___           __ __
--                   / ____/__  / (_)  __     / //_/_  ____  ______
--                  / /_  / _ \/ / / |/_/    / ,< / / / / / / / __ \
--                 / __/ /  __/ / />  <     / /| / /_/ / /_/ / / / /
--                /_/    \___/_/_/_/|_|____/_/ |_\__, /\__,_/_/ /_/
--                                   /_____/    /____/
-- 				                  nvim config [plugins.lua]

vim.cmd [[packadd packer.nvim]]
return require('packer').startup(function(use)
  --packer.nvim 
  use 'wbthomason/packer.nvim'

  --nord theme 
  use 'shaunsingh/nord.nvim'

  -- plenery 
  use 'nvim-lua/plenary.nvim'

  -- web devicons
  use {
    'kyazdani42/nvim-web-devicons',
    config = function() require('nvim-web-devicons').setup() end,
  }

  -- lualine
  use {
    "nvim-lualine/lualine.nvim",
    event = "VimEnter",
    requires = { 'kyazdani42/nvim-web-devicons' },
    config = function() require('lualine').setup { options = { theme = 'nord' } }  end,
  }

  --nvim tree
  use {
    'kyazdani42/nvim-tree.lua',
    event = 'CursorHold',
    requires = { 'kyazdani42/nvim-web-devicons' },
    config = function() require('nvim-tree').setup() end,
  }

  -- telescope 
   use {
     {
         'nvim-telescope/telescope.nvim',
         event = 'CursorHold',
     },
     {
         'nvim-telescope/telescope-fzf-native.nvim',
         after = 'telescope.nvim',
         run = 'make',
         config = function()
             require('telescope').load_extension('fzf')
         end,
     },
     {
         'nvim-telescope/telescope-symbols.nvim',
         after = 'telescope.nvim',
     },
  }


  -- which key
  use {
    "folke/which-key.nvim",
    config = function() require("which-key").setup() end,
  }

  -- nest 
  use 'LionC/nest.nvim'

  -- dashboard
  use 'glepnir/dashboard-nvim'

  -- lsp stuff 
  use {
    'VonHeikemen/lsp-zero.nvim',
    config = function() require 'config.lsp' end,
    requires = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},
      {'williamboman/mason.nvim'},
      {'williamboman/mason-lspconfig.nvim'},

    -- Autocompletion
      {'hrsh7th/nvim-cmp'},
      {'hrsh7th/cmp-buffer'},
      {'hrsh7th/cmp-path'},
      {'saadparwaiz1/cmp_luasnip'},
      {'hrsh7th/cmp-nvim-lsp'},
      {'hrsh7th/cmp-nvim-lua'},

      -- Snippets
      {'L3MON4D3/LuaSnip'},
      {'rafamadriz/friendly-snippets'},
    }
  }

  -- treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    event = 'CursorHold',
    run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
      { 'nvim-treesitter/playground', after = 'nvim-treesitter' },
      { 'nvim-treesitter/nvim-treesitter-textobjects', after = 'nvim-treesitter' },
      { 'nvim-treesitter/nvim-treesitter-refactor', after = 'nvim-treesitter' },
      { 'windwp/nvim-ts-autotag', after = 'nvim-treesitter' },
      { 'JoosepAlviste/nvim-ts-context-commentstring', after = 'nvim-treesitter' },
  }

  -- fidget 
  use {
    'j-hui/fidget.nvim',
    after = 'lualine.nvim',
    config = function()
      require('fidget').setup()
    end,
  }

  -- indent lien
  use {
    'lukas-reineke/indent-blankline.nvim',
    event = 'BufRead',
  }

  -- nvim colorizer
  use {
    'norcalli/nvim-colorizer.lua',
    event = 'CursorHold',
    config = function ()
      require('colorizer').setup()
    end
  }

  use {
    'lewis6991/gitsigns.nvim',
    event = 'BufRead',
    config = function()
      require('gitsigns').setup()
    end
  }

  use {
    'numToStr/Navigator.nvim',
    event = 'CursorHold',
    config = function () require 'config.nav' end
  }

  use {
    'phaazon/hop.nvim',
    event = 'BufRead',
    config = function () require 'config.hop' end
  }

  use({
   'karb94/neoscroll.nvim',
   event = 'WinScrolled',
   config = function()
       require('neoscroll').setup({ hide_cursor = false })
   end,
  })

  use {
    'numToStr/Comment.nvim',
    event = 'BufRead',
    config = function() require('Comment').setup() end
    }

  -- auto pairs


  -- surround 
  use {
    'tpope/vim-surround',
    event = 'BufRead',
    requires = {
      {
        'tpope/vim-repeat',
        event = 'BufRead'
      }
    }
  }

  use {
    'wellle/targets.vim',
    event = 'BufRead'
  }

  use {
    'AndrewRadev/splitjoin.vim',
    event = 'CursorHold'
  }

  use {
    'numToStr/FTerm.nvim',
    event = 'CursorHold',
    config = function() require('config.term') end
  }

  use {
	  "windwp/nvim-autopairs",
    event = 'InsertCharPre',
    after = 'nvim-cmp',
    config = function() require("nvim-autopairs").setup {} end
  }

  use {
  "folke/trouble.nvim",
  event = 'BufRead',
  requires = "kyazdani42/nvim-web-devicons",
  config = function() require("trouble").setup() end
  }
   --buffer line
   -- using packer.nvim
use {
  'akinsho/bufferline.nvim', 
  event = 'BufRead',
  requires = 'kyazdani42/nvim-web-devicons',
  config = function() require('config.bufferline').setup() end,
}

  use { 'nvim-lua/popup.nvim' }

  use 'lewis6991/impatient.nvim'

  use {
    'Pocco81/true-zen.nvim',
    config = function() require('true-zen').setup() end,
    event = 'BufRead',
  }

  config = { display = { open_fn = function() return require('packer.util').float({ border = single }) end } }
end)
