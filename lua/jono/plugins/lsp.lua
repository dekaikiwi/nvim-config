return {
    {
         "williamboman/mason.nvim",
        dependencies = {
            "williamboman/nvim-lspconfig",
            "neovim/nvim-lspconfig",
        },
        config = function()
            require("mason").setup()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "tsserver",
                    'eslint',
                    'lua_ls',
                    'clangd',
                },
            })
            require('mason-lspconfig').setup_handlers({
              function(server)
                require("lspconfig")[server].setup({})
              end,
            })
        end,

    },
}
