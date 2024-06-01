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
	-- File Explorer / Tree
	{ -- https://github.com/nvim-tree/nvim-tree.lua
		"nvim-tree/nvim-tree.lua",
		dependencies = {
			-- https://github.com/nvim-tree/nvim-web-devicons
			"nvim-tree/nvim-web-devicons", -- Fancy icon support
		},
		opts = {
			actions = {
				open_file = {
					window_picker = {
						enable = false,
					},
				},
			},
		},
		config = function(_, opts)
			-- Recommended settings to disable default netrw file explorer
			vim.g.loaded_netrw = 1
			vim.g.loaded_netrwPlugin = 1
			require("nvim-tree").setup(opts)
		end,
	},
}
