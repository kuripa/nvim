return require('packer').startup(function()

    -- packer
    use 'wbthomason/packer.nvim'

    -- gruvbox
    use 'sainnhe/gruvbox-material' -- with treesitter support
    -- use 'morhetz/gruvbox'

    -- autocompletion
    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/nvim-compe'

    -- treesitter
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }

    -- telescope
    use {
        'nvim-telescope/telescope.nvim',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- nvimtree
    use {
        'kyazdani42/nvim-tree.lua',
        requires = 'kyazdani42/nvim-web-devicons'
    }
    -- autopairs
    use 'windwp/nvim-autopairs'

    -- using packer.nvim
    use {
        'akinsho/nvim-bufferline.lua',
        requires = 'kyazdani42/nvim-web-devicons'
    }

    -- statusline
    use {
        'hoob3rt/lualine.nvim',
        requires = {'kyazdani42/nvim-web-devicons', opt = true}
    }
    -- dashboard
    use {
        'glepnir/dashboard-nvim'
    }

    -- kommentary
    use {
        'b3nj5m1n/kommentary'
    }

    -- which key
    use {
    'folke/which-key.nvim'
    }

end)

