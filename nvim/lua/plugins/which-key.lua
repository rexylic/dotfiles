return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
		preset = "helix",
	},
	keys = {
		{ "<Leader>c", group = "Trouble" },
		{ "<Leader>l", group = "LSP" },
		{ "<Leader>q", group = "Vim List" },
		{ "<Leader>x", group = "Trouble List" },
		{ "<Leader>_", group = "TComment" },
		{
			"<leader>?",
			function() require("which-key").show({ global = false }) end,
			desc = "Buffer Local Keymaps (which-key)",
		},
	},
}
