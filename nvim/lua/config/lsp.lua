local lc = require('lspconfig')

--Enable (broadcasting) snippet capability for completion
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true
local extra_capabilities = require('cmp_nvim_lsp').default_capabilities()
vim.tbl_extend('force', capabilities, extra_capabilities)

lc.clangd.setup {
	capabilities = capabilities,
}
lc.css_variables.setup {
	capabilities = capabilities,
}
lc.cssls.setup {
  capabilities = capabilities,
}
lc.eslint.setup {
  capabilities = capabilities,
  on_attach = function(client, bufnr)
    vim.api.nvim_create_autocmd("BufWritePre", {
      buffer = bufnr,
      command = "EslintFixAll",
    })
  end,
}
lc.leanls.setup {
	capabilities = capabilities,
}
lc.sourcekit.setup {
	capabilities = capabilities,
}
lc.ts_ls.setup {
	capabilities = capabilities,
}
