return {
  "folke/zen-mode.nvim",
	dependencies = {
		"folke/twilight.nvim",
	},
  opts = {
		window = {
			backdrop = 1,
			width = 120,
			height = 1,
		},
		plugins = {
			alacritty = {
				enabled = true,
				font = "24",
			}
		}
  }
}
