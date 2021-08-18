-- General
require('settings')
require('mappings')
require('plugins')

-- Plugins
require('modules.treesitter')
require('modules.nvimtree')
require('modules.compe-conf')
require('modules.statusline')
require('modules.autopairs')
require('modules.bufferline')
require('modules.dashboard')
require('modules.kommentary')
require('modules.whichkey')
require('modules.neogit')
require('modules.gitsigns')
require('modules.diffview')

-- Lsp
require('lsp.lsp-config')
require('lsp.clangd-ls')
require('lsp.lua-ls')
