-- General
vim.g.mapleader = ' ' -- Map leader key
vim.wo.wrap = false -- Display long lines as just one line
vim.opt.ruler = false -- Show the cursor position all the time
vim.o.showmode = true -- We don't need to see things like -- INSERT -- anymore
vim.opt.hidden = true -- Required to keep multiple buffers open multiple buffers
vim.opt.termguicolors = true -- Set 24bit colors
vim.opt.mouse = 'a' -- Enable mouse
vim.opt.clipboard = 'unnamedplus' -- Copy paste between vim and everything else

-- Tabs
vim.opt.tabstop = 4 -- Insert 2 spaces for a tab
vim.opt.shiftwidth = 4 -- Change the number of space characters inserted for indentation
vim.opt.smarttab = true -- Makes tabbing smarter will realize you have 2 vs 4
vim.opt.expandtab = true -- Converts tabs to spaces
vim.opt.smartindent = true -- Makes indenting smart
vim.opt.autoindent = true -- Good auto indent
vim.opt.showtabline = 2 -- Always show tabs

-- Interface
vim.opt.number = true -- Line numbers
vim.opt.rnu = true -- Relative line numbers
vim.opt.splitbelow = true -- Horizontal splits will automatically be below
vim.opt.splitright = true -- Vertical splits will automatically be to the right
vim.opt.cursorline = true -- Enable highlighting of the current line
vim.opt.laststatus = 2 -- Always display the status line
vim.opt.background = 'dark' -- tell vim what the background color looks like
vim.opt.pumheight = 10 -- Makes popup menu smaller
vim.opt.cmdheight = 2 -- More space for displaying messages

-- Backup
vim.opt.backup = false -- This is recommended by coc
vim.opt.writebackup = false -- This is recommended by coc

-- Misc
--vim.opt.iskeyword+=- = true -- Treat dash separated words as a word text object
vim.opt.conceallevel = 0 -- So that I can see `` in markdown files
vim.opt.updatetime = 300 -- Faster completion
vim.opt.timeoutlen = 500 -- By default timeoutlen is 1000 ms
vim.opt.autochdir = true -- Your working directory will always be the same as your working directory

-- Set format options
vim.cmd [[
  augroup format_options
    autocmd!
    autocmd BufWinEnter * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
    autocmd BufRead * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
    autocmd BufNewFile * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
  augroup END
]]

vim.cmd("colors gruvbox-material") -- Set colorscheme to gruvbox 
