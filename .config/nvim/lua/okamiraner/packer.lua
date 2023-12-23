vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
  use('wbthomason/packer.nvim')

  use('Mofiqul/dracula.nvim')

  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.4',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  use("theprimeagen/harpoon")

  use {
      'VonHeikemen/lsp-zero.nvim',
      branch = 'v1.x',
      requires = {
       {'neovim/nvim-lspconfig'},
          {'williamboman/mason.nvim'},
          {'williamboman/mason-lspconfig.nvim'},
          {'hrsh7th/nvim-cmp'},
          {'hrsh7th/cmp-buffer'},
          {'hrsh7th/cmp-path'},
          {'hrsh7th/cmp-nvim-lsp'},
          {'rafamadriz/friendly-snippets'},
      }
  }

end)
