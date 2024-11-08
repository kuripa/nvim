-- vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)
-- vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Move to window using the <ctrl> hjkl keys
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Go to Left Window", remap = true })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Go to Lower Window", remap = true })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Go to Upper Window", remap = true })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Go to Right Window", remap = true })

-- switch between window 
vim.keymap.set('n', '<C-,>', '<C-w>w', { noremap = true, silent = true })

-- Resize window using <ctrl> arrow keys
vim.keymap.set("n", "<C-Up>", "<cmd>resize +2<cr>", { desc = "Increase Window Height" })
vim.keymap.set("n", "<C-Down>", "<cmd>resize -2<cr>", { desc = "Decrease Window Height" })
vim.keymap.set("n", "<C-Left>", "<cmd>vertical resize -2<cr>", { desc = "Decrease Window Width" })
vim.keymap.set("n", "<C-Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase Window Width" })

--  move selected lines up and down
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")

vim.keymap.set("n", "Q", "<nop>")

vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- make this file executeable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "<leader>vpp", "<cmd>cd ~/.config/nvim/lua/nick/<CR>");

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- find neovim config files
vim.keymap.set("n", '<leader>cf',
    function()
        require('telescope.builtin').find_files({
            prompt_title = "NeoVim Configuration",
            cwd = vim.fn.stdpath("config"),
        })
    end)

-- find notes 
vim.keymap.set("n", '<leader>cg',
    function()
        require('telescope.builtin').find_files({
            prompt_title = "Notes",
            cwd = "~/notes",
        })
    end)


vim.keymap.set('n', '<leader>r', ':%s/')
vim.keymap.set('x', '<leader>r', ':s/')

vim.keymap.set({ "n", "v" }, "<leader>q", '<cmd>q<cr>', {desc = "Quit Neovim"})
vim.keymap.set({ "n", "v" }, "<leader>w", '<cmd>w<cr>', {desc = "Save File"})
