-- Set Leader Key
vim.g.mapleader = " "

-- local wk = require('which-key')

-- wk.add({
--     { "<leader>sd", desc = "<cmd>lua vim.diagnostic.open_float({scope='line'})<CR>", group = "Show" },
--     { "<leader>pv", desc = "<cmd>Ex<cr>" },
-- })
-- wk.register({
--     s = {
--         name = "Show",
--         d = { "<cmd>lua vim.diagnostic.open_float({scope='line'})<CR>", "Show Diagnostics for Current Line." },
--     },
--     p = {
--         v = { "<cmd>Ex<cr>", "Open File Explorer" },
--     }
-- }, { prefix = "<leader>" })


vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
