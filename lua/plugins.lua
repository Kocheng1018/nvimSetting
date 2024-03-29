local status, packer = pcall(require, "packer")
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use "wbthomason/packer.nvim"
  use {
    "svrana/neosolarized.nvim",
    requires = { "tjdevries/colorbuddy.nvim" }
  }
  use "nvim-lualine/lualine.nvim" -- Statusline

  use "onsails/lspkind-nvim" -- vscode-like pictograms
  use "hrsh7th/cmp-buffer" -- nvim-cmp source for buffer words
  use "hrsh7th/cmp-nvim-lsp" -- nvim-cmp source for neovim"s built-in LSP
  use "hrsh7th/nvim-cmp" -- Completion

  use "neovim/nvim-lspconfig" -- LSP

  use "jose-elias-alvarez/null-ls.nvim" -- Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua
  use "MunifTanjim/prettier.nvim" -- Prettier plugin for Neovim"s built-in LSP client

  use "williamboman/mason.nvim"
  use "williamboman/mason-lspconfig.nvim"

  use "glepnir/lspsaga.nvim" -- LSP UIs
  use "L3MON4D3/LuaSnip"
  use {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate"
  }
  use "kyazdani42/nvim-web-devicons" -- File icons
  use "windwp/nvim-autopairs"
  use "windwp/nvim-ts-autotag"
  use "nvim-telescope/telescope.nvim"
  use "nvim-telescope/telescope-file-browser.nvim"
  use "nvim-lua/plenary.nvim" -- Common utilities
  use({
    "iamcco/markdown-preview.nvim",
    run = function() vim.fn["mkdp#util#install"]() end,
  })
  use "akinsho/nvim-bufferline.lua"

  use "lewis6991/gitsigns.nvim" -- to show git diff before check
  use "dinhhuy258/git.nvim" -- For git blame & browse

  use "JoosepAlviste/nvim-ts-context-commentstring" -- read code type to comment
  use "numToStr/Comment.nvim" -- base comment

  use {"rrethy/vim-hexokinase", run = "cd ~/.local/share/nvim/site/pack/packer/start/vim-hexokinase && make hexokinase"}

  use "goolord/alpha-nvim" -- vim greeter
  use "lukas-reineke/indent-blankline.nvim"
end)
