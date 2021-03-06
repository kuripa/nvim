return require('packer').startup(function()

    -- packer
    use 'wbthomason/packer.nvim'

    -- plenary
    use 'nvim-lua/plenary.nvim'

    -- gruvbox
    use 'sainnhe/gruvbox-material'

    -- lsp-config
    use 'neovim/nvim-lspconfig'

    -- compe
    use 'hrsh7th/nvim-compe'

    -- treesitter
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }

    -- telescope
    use {
        'nvim-telescope/telescope.nvim',
        requires = 'nvim-lua/plenary.nvim'
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
    use 'glepnir/dashboard-nvim'

    -- kommentary
    use 'b3nj5m1n/kommentary'

    -- which key
    use 'folke/which-key.nvim'

    -- neogit
    use {
        'TimUntersberger/neogit',
        requires = 'nvim-lua/plenary.nvim'
    }

    -- gitsigns
    use {
        'lewis6991/gitsigns.nvim',
        requires = 'nvim-lua/plenary.nvim'
    }

    -- diffview
    use 'sindrets/diffview.nvim'

end)

