local npairs = require('nvim-autopairs')
local compe = require('nvim-autopairs.completion.compe')

npairs.setup {
    disable_filetype = { "TelescopePrompt" },
    ignored_next_char = string.gsub([[ [%w%%%'%[%"%.] ]],"%s+", ""),
    enable_moveright = true,
    enable_afterquote = true, -- add bracket pairs after quote
    enable_check_bracket_line = false, --- check bracket in same line
    check_ts = true,
    ts_config = {
        lua = {},
    }
}

compe.setup({
  map_cr = true, --  map <CR> on insert mode
  map_complete = true, -- it will auto insert `(` after select function or method item
  auto_select = false,  -- auto select first item
})

