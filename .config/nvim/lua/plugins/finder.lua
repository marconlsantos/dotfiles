return {
	{
		"nvim-telescope/telescope-fzf-native.nvim",
		build = "make",
	},
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.1",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			local tlscp = require("telescope.builtin")
			vim.keymap.set("n", "<leader>fh", tlscp.help_tags)
			vim.keymap.set("n", "<leader>ff", tlscp.find_files)
			vim.keymap.set("n", "<leader>fg", tlscp.live_grep)
			vim.keymap.set("n", "<leader>fb", tlscp.buffers)
			vim.keymap.set("n", "<leader>fs", tlscp.lsp_document_symbols)
			vim.keymap.set("n", "<leader>fd", tlscp.diagnostics)
		end,
		init = function()
			require("telescope").setup({
				defaults = {
					layout_config = { prompt_position = "top" },
                    sorting_strategy = "ascending",
				},
				pickers = {
					diagnostics = {
						theme = "dropdown",
					},
					lsp_document_symbols = {
						theme = "dropdown",
					},
				},
			})

			require("telescope").load_extension("fzf")
		end,
	},
}
