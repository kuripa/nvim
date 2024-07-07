return
{
    "lervag/vimtex",
    config = function()
        vim.cmd([[
                let g:vimtex_compiler_method = 'latexmk'
                let g:vimtex_view_method = 'zathura'
            ]])
    end,
}
