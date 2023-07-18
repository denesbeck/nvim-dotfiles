local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

require("packer").startup({function(use)
  -- Package management
  use "wbthomason/packer.nvim"

  -- LSP
  use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
  }

  -- Theme
  use {
    "folke/tokyonight.nvim",
    opts = {
      transparent=true,
      styles = {
          sidebars = "transparent",
          floats = "transparent",
      },
    }
  }

  -- Status bar
  use "nvim-lualine/lualine.nvim"

  -- Fuzzy finder
  use {
    "nvim-telescope/telescope.nvim", tag = "0.1.2",
    requires = { {"nvim-lua/plenary.nvim"} }
  }
  use {
    "nvim-telescope/telescope-file-browser.nvim",
    requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
  }

  -- Buffers
  use {"akinsho/bufferline.nvim", tag = "*", requires = "nvim-tree/nvim-web-devicons"}

  -- Git
  use "lewis6991/gitsigns.nvim"

  -- Syntax highlight
  use "nvim-treesitter/nvim-treesitter"

  -- Autoclose
  use "windwp/nvim-ts-autotag"
  use "windwp/nvim-autopairs"
  
  -- Autocomplete
  -- Tailwind CSS
  use "js-everts/cmp-tailwind-colors"
  
  -- CMP
  use "hrsh7th/cmp-nvim-lsp"
  use "hrsh7th/cmp-buffer"
  use "hrsh7th/cmp-path"
  use "hrsh7th/cmp-cmdline"
  use "hrsh7th/nvim-cmp"
  use "hrsh7th/cmp-vsnip"
  use "hrsh7th/vim-vsnip"

  --LSP Saga
  use "glepnir/lspsaga.nvim"

  -- Copilot
  use "github/copilot.vim"

  -- Formatters
  use "jose-elias-alvarez/null-ls.nvim"
  use "MunifTanjim/prettier.nvim"

  -- Home screen
  use {
    'goolord/alpha-nvim',
    config = function ()
        require'alpha'.setup(require'alpha.themes.dashboard'.config)
    end
  }

  -- Comment
  use { 'numToStr/Comment.nvim',
    requires = {
      'JoosepAlviste/nvim-ts-context-commentstring'
    }
  }

end,
config = {
  display = {
    open_fn = require('packer.util').float,
  }
}})
