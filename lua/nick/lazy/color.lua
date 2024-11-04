function ColorMyPencils(color)
    color = color or "oxocarbon"
    vim.cmd.colorscheme(color)

    -- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    -- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

return {
    {
  "nyoom-engineering/oxocarbon.nvim"
  -- Add in any other configuration; 
  --   event = foo, 
  --   config = bar
  --   end,
},
    {
        "RRethy/nvim-base16",
        lazy = false,
    },

    {
        "rose-pine/neovim",
        name = "rose-pine"
    },

    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        opts = {},
    },

    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        config = function()
            ColorMyPencils()
        end
    },

}
