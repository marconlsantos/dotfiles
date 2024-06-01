return {
	{
		"rebelot/kanagawa.nvim",
		name = "kanagawa",
		priority = 1000,
		config = function()
			vim.cmd.colorscheme("kanagawa")
		end,
	},
	"tpope/vim-sleuth", -- Detect tabstop and shiftwidth automatically
	"numToStr/Comment.nvim",
	{
		"folke/todo-comments.nvim",
		event = "VimEnter",
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
		opts = {
			signs = false,
		},
	},
}
