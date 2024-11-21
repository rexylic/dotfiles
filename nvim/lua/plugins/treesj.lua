return {
  'Wansmer/treesj',
  dependencies = { 'nvim-treesitter/nvim-treesitter' }, 
  init = function() require('treesj').setup {} end,
	opts = {
		use_default_keymaps = false,
	},
}
