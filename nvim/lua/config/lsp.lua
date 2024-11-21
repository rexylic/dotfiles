local lc = require('lspconfig')
lc.eslint.setup {
  on_attach = function(client, bufnr)
    vim.api.nvim_create_autocmd("BufWritePre", {
      buffer = bufnr,
      command = "EslintFixAll",
    })
  end,
}
lc.leanls.setup {}
lc.ts_ls.setup {}
