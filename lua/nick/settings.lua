-- General
vim.g.mapleader = ' '             -- Map leader key
vim.wo.wrap = false               -- Display long lines as just one line
vim.opt.ruler = true              -- Show the cursor position all the time
vim.o.showmode = true             -- We don't need to see things like -- INSERT -- anymore
vim.opt.hidden = true             -- Required to keep multiple buffers open multiple buffers
vim.opt.termguicolors = true      -- Set 24bit colors
vim.opt.mouse = 'a'               -- Enable mouse
vim.opt.clipboard = 'unnamedplus' -- Copy paste between vim and everything else
vim.opt.scrolloff = 8
vim.opt.updatetime = 50
vim.opt.colorcolumn = "80"
vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.guicursor = ""
vim.o.guifont = "Liberation Mono:h12" 

-- Tabs
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true


-- vim.opt.smarttab = true    -- Makes tabbing smarter will realize you have 2 vs 4
-- vim.opt.autoindent = true  -- Good auto indent


-- Interface
vim.opt.number = true       -- Line numbers
vim.opt.rnu = true          -- Relative line numbers
vim.opt.splitbelow = true   -- Horizontal splits will automatically be below
vim.opt.splitright = true   -- Vertical splits will automatically be to the right
vim.opt.cursorline = true   -- Enable highlighting of the current line
vim.opt.laststatus = 2      -- Always display the status line
vim.opt.background = 'dark' -- tell vim what the background color looks like
vim.opt.pumheight = 10      -- Makes popup menu smaller
vim.opt.cmdheight = 2       -- More space for displaying messages

-- Default Plugins
local disabled_built_ins = {
    "gzip",
    "zip",
    "zipPlugin",
    "tar",
    "tarPlugin",
    "getscript",
    "getscriptPlugin",
    "vimball",
    "vimballPlugin",
    "2html_plugin",
    "logipat",
    "rrhelper",
    "spellfile_plugin",
    "matchit"
}

for _, plugin in pairs(disabled_built_ins) do
    vim.g["loaded_" .. plugin] = 1
end
