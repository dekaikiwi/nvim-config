return {
    "theprimeagen/harpoon",
    keys = {
        {
            "<leader>ha",
            "<cmd>lua require('harpoon.mark').add_file()<CR>",
            desc = "Harpoon - Mark File"
        },
        {
            "<leader>hq",
            "<cmd>lua require('harpoon.ui').toggle_quick_menu()<CR>",
            desc = "Harpoon - Quick Menu"
        },
        {
            "<leader>hn",
            "<cmd>lua require('harpoon.ui').nav_next()<CR>",
            desc = "Harpoon - Next File"
        },
        {
            "<leader>hN",
            "<cmd>lua require('harpoon.ui').nav_prev()<CR>",
            desc = "Harpoon - Previous"
        }
    }
}
