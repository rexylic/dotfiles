return {
	'echasnovski/mini.nvim',
	version = false,
	lazy = true,
	init = function()
		require('mini.align').setup {}
		require('mini.files').setup {}
		require('mini.indentscope').setup {}
		require('mini.move').setup {}
		require('mini.starter').setup {}
		require('mini.statusline').setup {}
		require('mini.tabline').setup {}
	end,
}
