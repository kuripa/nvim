return
{
    {
        "nvim-telescope/telescope-fzf-native.nvim",
        lazy = false,
        build = "make",
        dependencies = {
            "nvim-telescope/telescope.nvim",
        },
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
            require("telescope").setup({
                extensions = {
                    undo = {
                        use_delta = true,
                        use_custom_command = nil, -- setting this implies `use_delta = false`. Accepted format is: { "bash", "-c", "echo '$DIFF' | delta" }
                        side_by_side = false,
                        vim_diff_opts = { ctxlen = 8 },
                        entry_format = "state #$ID, $STAT, $TIME",
                        mappings = {
                            i = {
                                -- IMPORTANT: Note that telescope-undo must be available when telescope is configured if
                                -- you want to replicate these defaults and use the following actions. This means
                                -- installing as a dependency of telescope in it's `requirements` and loading this
                                -- extension from there instead of having the separate plugin definition as outlined
                                -- above.
                                ["<s-cr>"] = require("telescope-undo.actions").yank_additions,
                                ["<c-cr>"] = require("telescope-undo.actions").yank_deletions,
                                ["<cr>"] = require("telescope-undo.actions").restore,
                            },
                        }, -- telescope-undo.nvim config, see below
                    },
                },
            })
            require("telescope").load_extension("undo")


            --require("telescope").load_extension("fzf")

            local builtin = require("telescope.builtin")
            vim.keymap.set("n", "<leader>pf", builtin.find_files, {})
            vim.keymap.set("n", "<leader>jf", builtin.git_files, {})
            vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
            vim.keymap.set("n", "<leader>b", builtin.buffers, {})
            vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})
            --vim.keymap.set("n", "<leader>fm", builtin.man_pages(), {})
            vim.keymap.set("n", "<leader>fm", function() builtin.man_pages({ sections = { "1","2","3" } }) end, {})
            vim.keymap.set("n", "<leader>u", "<cmd>Telescope undo<cr>")
        end,
    }
}
