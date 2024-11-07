return {
    {
    'stevearc/oil.nvim',
    ---@module 'oil'
    ---@type oil.SetupOpts
    opts = {},
    -- Optional dependencies
    --dependencies = { { "echasnovski/mini.icons", opts = {} } },
    dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if prefer nvim-web-devicons
    config = function()
        require("oil").setup({})
        local neogit = require('oil')
        vim.keymap.set("n", "<leader>o", neogit.open, {})
    end,
    }
}
