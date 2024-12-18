return
{
    "NeogitOrg/neogit",
    dependencies = {
        "nvim-lua/plenary.nvim",         -- required
        "sindrets/diffview.nvim",        -- optional - Diff integration

        "nvim-telescope/telescope.nvim", -- optional
    },
    config = function()
        require('neogit').setup({})

        local neogit = require('neogit')
vim.keymap.set('n', '<Leader>gq', neogit.open, { desc = "Open Neogit" })
    end
}
