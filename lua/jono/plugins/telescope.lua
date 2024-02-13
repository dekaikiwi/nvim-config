return {
    {
        'nvim-telescope/telescope.nvim',
        dependencies = { 'nvim-lua/plenary.nvim' },
        keys = {
            {
                "<leader>pf",
                "<cmd>lua require('telescope.builtin').find_files{}<CR>",
                desc = "Telescope - Find Files"            
            },
            {
                "<leader>pg",
                "<cmd>lua require('telescope.builtin').git_files()<CR>",
                "Telescope - Git Files"
            },
            {
                "<leader>ps",
                "<cmd>lua require('telescope.builtin').grep_string({ search = vim.fn.input('Grep> ') })<CR>",
                "Telescope - Grep String"
            },
            {
                "<leader>pb",
                "<cmd>lua require('telescope.builtin').buffers()<CR>",
                "Telescope - Buffers"
            },
            {
                "<leader>ph",
                "<cmd>lua require('telescope.builtin').help_tags()<CR>",
                "Telescope - Help Tags"
            },
        },
    }
}
