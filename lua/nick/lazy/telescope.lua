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
                defaults = {
                    layout_strategy = 'horizontal',
                    layout_config = {
                        preview_cutoff = 40,
                        height = 0.9,
                        prompt_position = 'top',
                    },
                    sorting_strategy = 'ascending',
                    prompt_prefix = ' ',
                    selection_caret = ' ',
                    entry_prefix = '  ',
                    multi_icon = '<>',
                    winblend = 0,
                    border = {},
                    borderchars = { '─', '│', '─', '│', '┌', '┐', '┘', '└' },
                    color_devicons = true,
                    use_less = true,
                    path_display = { 'truncate' },
                    set_env = { ['COLORTERM'] = 'truecolor' }, -- default = nil,
                    file_ignore_patterns = { "node_modules" },
                    mappings = {
                        n = {
                            ['o'] = require('telescope.actions.layout').toggle_preview,
                            ['<C-c>'] = require('telescope.actions').close,
                        },
                        i = {
                            ['<C-o>'] = require('telescope.actions.layout').toggle_preview,
                        },
                    },
                },
                pickers = {
                    find_files = {
                        theme = "ivy",
                        previewer = false,
                        layout_config = {
                            height = 0.3, -- Set the height of the Ivy theme to 0.3
                        },
                        find_command = {
                            'fd', '--type', 'f', '-H', '--strip-cwd-prefix',
                        },
                    }
                },
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
            require("telescope").load_extension("file_browser")
            --require("telescope").load_extension("fzf")

            vim.keymap.set("n", "<space>.", function()
                require("telescope").extensions.file_browser.file_browser()
            end)

            local builtin = require("telescope.builtin")

            vim.keymap.set("n", "<leader>.", builtin.find_files, {})
            vim.keymap.set("n", "<leader>fj", builtin.git_files, {})
            vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
            vim.keymap.set("n", "<leader>,", builtin.buffers, {})
            vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})
            --vim.keymap.set("n", "<leader>fm", builtin.man_pages(), {})
            vim.keymap.set("n", "<leader>fm", function() builtin.man_pages({ sections = { "1", "2", "3" } }) end, {})
            vim.keymap.set("n", "<leader>u", "<cmd>Telescope undo<cr>")
        end,
    },
    {
        "nvim-telescope/telescope-file-browser.nvim",
        dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
    }

}
