return {
	"neovim/nvim-lspconfig",
	{
		"williamboman/mason.nvim",
		build = ":MasonUpdate",
		config = true,
	},
	"williamboman/mason-lspconfig.nvim",
}
