mda {
  source = 'nvim-treesitter/nvim-treesitter',
  hooks = {
    post_checkout = function()
      vim.cmd [[TSUpdate]]
    end
  }
}

mda {
  source = 'Wansmer/treesj',
}
mdl(function()
  require('treesj').setup {}
end)
