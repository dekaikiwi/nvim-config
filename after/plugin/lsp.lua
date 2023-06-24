local lsp = require('lsp-zero')

lsp.preset('recommended')
lsp.setup()

lsp.ensure_installed({
	'tsserver',
	'eslint',
	'sumneko_lua'
})

--Enable (broadcasting) snippet capability for completion
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

require'lspconfig'.cssls.setup {
  capabilities = capabilities,
}
