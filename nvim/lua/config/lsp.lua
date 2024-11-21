local lc = require('lspconfig')

--Enable (broadcasting) snippet capability for completion
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

lc.clangd.setup {}
lc.css_variables.setup {}
lc.cssls.setup {
  capabilities = capabilities,
}
lc.eslint.setup {
  on_attach = function(client, bufnr)
    vim.api.nvim_create_autocmd("BufWritePre", {
      buffer = bufnr,
      command = "EslintFixAll",
    })
  end,
}
lc.leanls.setup {}
lc.sourcekit.setup {}
lc.ts_ls.setup {}
