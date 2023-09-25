local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
  -- LSP
  "williamboman/mason.nvim",
  "williamboman/mason-lspconfig.nvim",
  "neovim/nvim-lspconfig",

  -- Theme
  {
    "folke/tokyonight.nvim",
    lazy = false,
  },
  
  -- Status bar
  "nvim-lualine/lualine.nvim",

  -- Fuzzy finder
  {
   "nvim-telescope/telescope.nvim", version = "0.1.2",
   dependencies = { {"nvim-lua/plenary.nvim"} }
  },

  {
    "nvim-telescope/telescope-file-browser.nvim",
    dependencies = { {"nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim"} }
  },

  -- Buffers
  {"akinsho/bufferline.nvim", version = "*", dependencies = "nvim-tree/nvim-web-devicons"},

  -- Git
  "lewis6991/gitsigns.nvim",

  -- Syntax highlight
  "nvim-treesitter/nvim-treesitter",
  
  -- Autoclose
  "windwp/nvim-ts-autotag",
  "windwp/nvim-autopairs",

  -- Autocomplete
  -- Tailwind CSS
  "js-everts/cmp-tailwind-colors",
  
  -- CMP 
  "hrsh7th/nvim-cmp",
  "hrsh7th/cmp-nvim-lsp",
  "hrsh7th/cmp-buffer",
  "hrsh7th/cmp-path",
  "hrsh7th/cmp-cmdline",
  "hrsh7th/cmp-vsnip",
  "hrsh7th/vim-vsnip",

  -- LSP Saga
  "glepnir/lspsaga.nvim",

  -- Copilot
  "github/copilot.vim",

  -- Formatters
  "jose-elias-alvarez/null-ls.nvim",
  "MunifTanjim/prettier.nvim",

  -- Home screen
 {
    "goolord/alpha-nvim",
    config = function ()
        require"alpha".setup(require"alpha.themes.dashboard".config)
    end
  },
   
  -- Comment
  { 
    "numToStr/Comment.nvim",
    dependencies = { "JoosepAlviste/nvim-ts-context-commentstring" }
  },

  -- Hardtime
  {
    "m4xshen/hardtime.nvim",
    dependencies = { "MunifTanjim/nui.nvim", "nvim-lua/plenary.nvim" },
  },

  -- NPM packages
  "vuki656/package-info.nvim",

  -- Notification
  "rcarriga/nvim-notify",
}

local opts = {}

require("lazy").setup(plugins, opts)
