return {
	'echasnovski/mini.nvim',
	version = false,
	lazy = true,
	init = function()
		require('mini.align').setup {}
		require('mini.extra').setup {}
		require('mini.files').setup {}
		require('mini.indentscope').setup {}
		require('mini.jump2d').setup {}
		require('mini.move').setup {}
		require('mini.notify').setup {}
		require('mini.pick').setup {}
		require('mini.statusline').setup {}
		require('mini.surround').setup {}
		require('mini.tabline').setup {
			set_vim_settings = false,
			tabpage_section = 'right',
		}
	end,
}
