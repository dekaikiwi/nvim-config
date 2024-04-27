return {
    {
        'nvim-telescope/telescope.nvim',
        lazy = false,
        dependencies = { 'nvim-lua/plenary.nvim' },
        keys = {
            {
                "<leader>pf",
                "<cmd>lua require('telescope.builtin').find_files{}<CR>",
                desc = "Telescope - Find Files"            
            },
            {
                "<leader>pg",
                "<cmd>lua require('telescope.builtin').git_status()<CR>",
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
            {
                "<leader>pr",
                "<cmd>lua require('telescope.builtin').lsp_references()<CR>",
                "Telescope - LSP References"
            }
        },
    }
}
