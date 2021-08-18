local utils = require'utils'
local wk = require("which-key")

-- uppercase word under cursor
utils.keymap('i', '<c-u>', '<ESC>viwUea')
utils.keymap('n', '<c-u>', 'viwUe<Esc>')

-- save file
utils.keymap('n', '<C-S>', ':w<CR>')

-- quit
utils.keymap('n', '<C-Q>', ':wq!<CR>')

-- better tab in visual mode
utils.keymap('v', '<TAB>', '>gv')
utils.keymap('v', '<S-TAB>', '<gv')

-- better window navigation
utils.keymap('n', '<C-h>', '<C-w>h')
utils.keymap('n', '<C-j>', '<C-w>j')
utils.keymap('n', '<C-k>', '<C-w>k')
utils.keymap('n', '<C-l>', '<C-w>l')


-- whichkey
wk.register({
    f = {
        name = "File", -- optional group name
        f = { "<cmd>Telescope find_files<cr>", "Find File" }, -- create a binding with label
    },

    p = {
        name = "Packer",
        c = { "<cmd>PackerCompile<cr>", "Compile" },
        i = { "<cmd>PackerInstall<cr>", "Install" },
        r = { "<cmd>lua require('utils').reload_lv_config()<cr>", "Reload" },
        s = { "<cmd>PackerSync<cr>", "Sync" },
        S = { "<cmd>PackerStatus<cr>", "Status" },
        u = { "<cmd>PackerUpdate<cr>", "Update" },
      },

    s = {
        name = "Search",
        b = { "<cmd>Telescope git_branches<cr>", "Checkout branch" },
        c = { "<cmd>Telescope colorscheme<cr>", "Colorscheme" },
        f = { "<cmd>Telescope find_files<cr>", "Find File" },
        h = { "<cmd>Telescope help_tags<cr>", "Find Help" },
        M = { "<cmd>Telescope man_pages<cr>", "Man Pages" },
        r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File" },
        R = { "<cmd>Telescope registers<cr>", "Registers" },
        t = { "<cmd>Telescope live_grep<cr>", "Text" },
        k = { "<cmd>Telescope keymaps<cr>", "Keymaps" },
        C = { "<cmd>Telescope commands<cr>", "Commands" },
        p = {
          "<cmd>lua require('telescope.builtin.internal').colorscheme({enable_preview = true})<cr>",
          "Colorscheme with Preview",
        },
    },

    t = {
        name = "NvimTree",
        t = { "<cmd>NvimTreeToggle<CR>", "Toggle Tree" },
        r = { "<cmd>NvimTreeRefresh<CR>", "Refresh Tree" },
        f = { "<cmd>NvimTreeFindFile<CR>", "Find File" },
        },

}, { prefix = "<leader>" })



