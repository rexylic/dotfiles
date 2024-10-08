mda {
  source = 'neovim/nvim-lspconfig'
}

require('lspconfig').gopls.setup {}
require('lspconfig').sourcekit.setup {}
