return {
	'echasnovski/mini.nvim',
	version = false,
	lazy = true,
	init = function()
		require('mini.files').setup {}
		require('mini.move').setup {}
	end,
}
