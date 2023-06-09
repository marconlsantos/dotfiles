return {
	"neovim/nvim-lspconfig",
	{
		"williamboman/mason.nvim",
		build = ":MasonUpdate",
	},
	"williamboman/mason-lspconfig.nvim",
	{
		"jose-elias-alvarez/null-ls.nvim",
		event = { "BufReadPre", "BufNewFile" },
	},
}
