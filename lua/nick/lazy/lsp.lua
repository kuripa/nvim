return
{
    "VonHeikemen/lsp-zero.nvim",
    version = "*",
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
        local lsp = require("lsp-zero")

        lsp.preset("recommended")

        -- Fix Undefined global 'vim'
        lsp.configure("lua_ls", {
            settings = {
                Lua = {
                    diagnostics = {
                        globals = { "vim" },
                    },
                },
            },
        })

        local cmp = require("cmp")
        local cmp_select = { behavior = cmp.SelectBehavior.Select }
        local cmp_action = require("lsp-zero").cmp_action()

        require("luasnip.loaders.from_vscode").lazy_load()

        require 'cmp'.setup {
            snippet = {
                expand = function(args)
                    require 'luasnip'.lsp_expand(args.body)
                end
            }
        }


        cmp.setup({
            sources = {
                { name = "nvim_lsp" },  -- LSP
                { name = "nvim_lsp_signature_help" }, -- LSP for parameters in functions
                { name = "nvim_lua" },  -- Lua Neovim API
                { name = "luasnip" },   -- Luasnip
                { name = "buffer" },    -- Buffers
                { name = "path" },      -- Paths
                { name = "emoji" },     -- Emoji
            },

            mapping = {
                ["<C-p>"] = cmp.mapping.select_prev_item(cmp_select),
                ["<C-n>"] = cmp.mapping.select_next_item(cmp_select),
                ["<C-y>"] = cmp.mapping.confirm({ select = true }),
                ["<C-Space>"] = cmp.mapping.complete(),
                ["<C-f>"] = cmp_action.luasnip_jump_forward(),
                ["<C-b>"] = cmp_action.luasnip_jump_backward(),
                ["<Tab>"] = cmp.config.disable,
                ["<S-Tab>"] = cmp.config.disable,
                ["<C-e>"] = cmp.mapping({
                    i = cmp.mapping.abort(), -- Abort completion
                    c = cmp.mapping.close(), -- Close completion window
                }),
            },

            snippet = {
                expand = function(args)
                    require('luasnip').lsp_expand(args.body)
                end,
            },
        })


        lsp.set_preferences({
            suggest_lsp_servers = false,
            sign_icons = {
                error = "E",
                warn = "W",
                hint = "H",
                info = "I",
            },
        })

        lsp.on_attach(function(client, bufnr)
            local opts = { buffer = bufnr, remap = false }

            vim.keymap.set("n", "gd", function()
                vim.lsp.buf.definition()
            end, opts)
            vim.keymap.set("n", "K", function()
                vim.lsp.buf.hover()
            end, opts)
            vim.keymap.set("n", "<leader>vws", function()
                vim.lsp.buf.workspace_symbol()
            end, opts)
            vim.keymap.set("n", "<leader>vd", function()
                vim.diagnostic.open_float()
            end, opts)
            vim.keymap.set("n", "[d", function()
                vim.diagnostic.goto_next()
            end, opts)
            vim.keymap.set("n", "]d", function()
                vim.diagnostic.goto_prev()
            end, opts)
            vim.keymap.set("n", "<leader>vca", function()
                vim.lsp.buf.code_action()
            end, opts)
            vim.keymap.set("n", "<leader>vrr", function()
                vim.lsp.buf.references()
            end, opts)
            vim.keymap.set("n", "<leader>vrn", function()
                vim.lsp.buf.rename()
            end, opts)
            vim.keymap.set("i", "<C-h>", function()
                vim.lsp.buf.signature_help()
            end, opts)
        end)

        lsp.setup()


        require('mason').setup({})
        require('mason-lspconfig').setup({
            ensure_installed = {},
            handlers = {
                lsp.default_setup,
            },
        })

        vim.diagnostic.config({
            virtual_text = true,
        })
    end,
}
