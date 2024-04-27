return {
    {
         "williamboman/mason.nvim",
        dependencies = {
            "williamboman/mason-lspconfig",
            "neovim/nvim-lspconfig",
        },
        lazy = false,
        config = function()
            require("mason").setup()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "tsserver",
                    'eslint',
                    'lua_ls',
                    'clangd',
                    'marksman',
                    'gopls',
                },
            })
            require("lspconfig").lua_ls.setup({
                settings = {
                    Lua = {
                        diagnostics = {
                            globals = { "vim" },
                        },
                    },
                },
            })
            require("lspconfig").eslint.setup({})
            require("lspconfig").tsserver.setup({})
            require("lspconfig").clangd.setup({})
            require("lspconfig").marksman.setup({})
            require("lspconfig").gopls.setup({})
            -- Use LspAttach autocommand to only map the following keys
            -- after the language server attaches to the current buffer
            vim.api.nvim_create_autocmd('LspAttach', {
                group = vim.api.nvim_create_augroup('UserLspConfig', {}),
                callback = function(ev)
                    -- Enable completion triggered by <c-x><c-o>
                    vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

                    -- Buffer local mappings.
                    -- See `:help vim.lsp.*` for documentation on any of the below functions
                    local opts = { buffer = ev.buf }
                    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
                    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
                    vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
                    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
                    vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
                    vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, opts)
                    vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, opts)
                    vim.keymap.set('n', '<space>wl', function()
                        print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
                    end, opts)
                    vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, opts)
                    vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)
                    vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, opts)
                    vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
                    vim.keymap.set('n', '<space>f', function()
                        vim.lsp.buf.format { async = true }
                    end, opts)
                end,
            })
        end,
        keys = {
            {
                "<space>e",
                "<cmd>lua vim.diagnostic.open_float{}<CR>",
                desc = "Open Diagnostics"
            },
            {
                "[d",
                "<cmd>lua vim.diagnostic.goto_next{}<CR>",
                desc = "Diagnostic - Prev"
            },
            {
                "]d",
                "<cmd>lua vim.diagnostic.goto_prev{}<CR>",
                desc = "Diagnostic - Next"
            },
            {
                "<space>f",
                "<cmd>lua vim.diagnostic.setloclist{}<CR>",
                desc = "Diagnostic - Next"
            },
            { "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", "LSP - Go to Implementation" },
        }

    },
}
