return {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    build = ":TSUpdate",
    event = { "BufReadPost", "BufNewFile" },
    config = function()
        require("nvim-treesitter.configs").setup({
            -- Needed parsers
            ensure_installed = {
                "vimdoc",
                "c",
                "lua",
                "rust",
            },

            -- Install all parsers synchronously
            sync_install = false,
            auto_install = true,

            highlight = {
                -- Enabling highlight for all files
                enable = true,
                disable = {},
                additional_vim_regex_highlighting = false,
            },

            indent = {
                -- Disabling indentation for all files
                enable = false,
                disable = {},
            },
        })
    end,
}
