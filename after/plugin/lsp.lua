local lsp = require('lsp-zero')
local cmp = require('cmp')
local cmp_action = lsp.cmp_action()

lsp.preset('recommended')
lsp.setup()

lsp.ensure_installed({
    'tsserver',
    'eslint',
    'sumneko_lua',
    'clangd',
    'clangd-format'
})


lsp.format_on_save({
    format_opts = {
        async = false,
        timeout_ms = 10000,
    },
    servers = {
        ['tsserver'] = { 'typescript', 'javascript' },
        ['clangd'] = { 'cpp', 'c' },
        ['lua_ls'] = { 'lua' }
    }
})

--Enable (broadcasting) snippet capability for completion
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

require 'lspconfig'.cssls.setup {
    capabilities = capabilities,
}

cmp.setup({
    mapping = cmp.mapping.preset.insert({
        ['<Tab>'] = cmp.mapping.confirm({ select = false }),
    })
});
