return {
    {
        -- TODO: Add a keybinding to comment on ? in visual mode.
        "tpope/vim-commentary",
        lazy = false,
    },
    {
        "tpope/vim-fugitive",
        lazy = false,
        keys = {
            {
                "<leader>gs",
                "<cmd>Git<CR>",
                desc = "Git Status"
            },
            {
                "<leader>gc",
                "<cmd>Git commit<CR>",
                desc = "Git Commit"
            },
            {
                "<leader>gp",
                "<cmd>Git push<CR>",
                desc = "Git Push"
            },
            {
                "<leader>gl",
                "<cmd>Git pull<CR>",
                desc = "Git Pull"
            },
            {
                "<leader>gb",
                "<cmd>Git blame<CR>",
                desc = "Git Blame"
            }
        }
    },
    {
        "mbbill/undotree",
        keys = {
            {
                "<leader>u",
                "<cmd>UndotreeToggle<CR>",
                desc = "Undo Tree"
            }
        }
    },
    {
        "folke/trouble.nvim",
        dependencies = { "kyazdani42/nvim-web-devicons" },
    },
    {
        "theprimeagen/vim-be-good",
    },
    { 
        "folke/which-key.nvim",
        config = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
            require("which-key").setup {}
        end,
    }
}
