return {
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        opts = {
            transparent = true,
            styles = {
                sidebars = "transparent",
                float = "transparent",
            },
        },
        init = function()
            vim.cmd([[colorscheme tokyonight]])
        end,
    },
}
