return {

    {
        "VonHeikemen/lsp-zero.nvim",
        version = "v3.x",
        dependencies = {
            -- LSP Support
            "neovim/nvim-lspconfig",
            "williamboman/mason.nvim",
            "williamboman/mason-lspconfig.nvim",

            -- Autocompletion
            "hrsh7th/nvim-cmp",
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-path",
            "saadparwaiz1/cmp_luasnip",
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-nvim-lua",

            "hrsh7th/cmp-nvim-lsp-signature-help",
            -- Snippets
            "L3MON4D3/LuaSnip",
            "rafamadriz/friendly-snippets",
        },
        config = function()
            require("configs.lsp")
        end,
    },

    {
        "kylechui/nvim-surround",
        version = "*", -- Use for stability; omit to use `main` branch for the latest features
        event = "VeryLazy",
        config = function()
            require("configs.surround")
        end,
    },

    {
        "nvim-treesitter/nvim-treesitter",
        lazy = false,
        build = ":TSUpdate",
        event = { "BufReadPost", "BufNewFile" },
        config = function()
            require("configs.treesitter")
        end,
    },

    {
        "nvim-telescope/telescope.nvim",
        lazy = false,
        dependencies = {
            "nvim-lua/plenary.nvim",
            "ahmedkhalf/project.nvim",
            "debugloop/telescope-undo.nvim",
        },
        config = function()
            require("configs.telescope")
        end,
    },

    {
        "nvim-telescope/telescope-fzf-native.nvim",
        lazy = false,
        build = "make",
        dependencies = {
            "nvim-telescope/telescope.nvim",
        },
        config = function()
            require("configs.telescope")
        end,
    },

    {
        "RRethy/nvim-base16",
        lazy = false,
        config = function()
            vim.cmd("colorscheme base16-catppuccin")
        end,
    },
    
    {
        "lervag/vimtex",
        config = function()
            vim.cmd([[
                let g:vimtex_compiler_method = 'latexmk'
                let g:vimtex_view_method = 'zathura'
            ]])
        
        end,
    },
}
