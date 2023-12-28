vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
    use('wbthomason/packer.nvim')

    use('Mofiqul/dracula.nvim')

    use('nvim-treesitter/nvim-treesitter', {
        run = ':TSUpdate'
    })

    use 'nvim-lua/plenary.nvim'

    use {
        'nvim-telescope/telescope.nvim',
        requires = {
            {
                'nvim-lua/plenary.nvim'
            }
        }
    }

    use {
        'ThePrimeagen/harpoon',
        branch = 'harpoon2',
        requires = {
            {
                'nvim-lua/plenary.nvim'
            }
        }
    }

    use {
        'VonHeikemen/lsp-zero.nvim',
        requires = {
            {'neovim/nvim-lspconfig'},
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-path'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'saadparwaiz1/cmp_luasnip'},
            {'hrsh7th/cmp-nvim-lua'},
            {'L3MON4D3/LuaSnip'},
            {'rafamadriz/friendly-snippets'},
        }
    }

    use {
        'ggandor/leap.nvim',
        config = function() require('leap').set_default_keymaps() end
    }
end)
