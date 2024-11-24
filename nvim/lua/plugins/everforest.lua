return {
	'neanias/everforest-nvim',
	version = false,
	lazy = false,
	priority = 1000,
	init = function()
		require('everforest').setup {
			diagnostic_text_highlight = true,
			diagnostic_line_highlight = true,
			inlay_hints_background = "dimmed",
		}
	end
}
