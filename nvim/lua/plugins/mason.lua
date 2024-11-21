return {
	"williamboman/mason.nvim",
	dependencies = {
		'williamboman/mason-lspconfig.nvim',
	},
	init = function()
		require("mason").setup()
	end
}
