local builtin = require('telescope.builtin')
local wk = require('which-key')

wk.register({
    p = {
        name = "Telescope",
        f = { "<cmd>lua require('telescope.builtin').find_files()<cr>", "find files" },
        p = { "<cmd>lua require('telescope.builtin').git_files()<cr>", "git files" },
        s = { "<cmd>lua require('telescope.builtin').grep_string({ search = vim.fn.input('Grep > ') })<cr>", "grep string" },
        h = { "<cmd>lua require('telescope.builtin').help_tags()<cr>", "help tags" },
    }
}, { prefix = "<leader>" })

-- vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
-- vim.keymap.set('n', '<C-p>', builtin.git_files, {})
-- vim.keymap.set('n', '<leader>ps', function()
--     builtin.grep_string({ search = vim.fn.input("Grep > ") })
-- end)
