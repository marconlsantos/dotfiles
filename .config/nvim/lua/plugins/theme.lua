return {
	{
		"lalitmee/cobalt2.nvim",
		event = { "ColorSchemePre" }, -- if you want to lazy load
		dependencies = { "tjdevries/colorbuddy.nvim" },
		init = function()
			require("colorbuddy").colorscheme("cobalt2")
		end,
	},

	"nvim-tree/nvim-web-devicons",
	{
		"lukas-reineke/indent-blankline.nvim",
		config = true,
		opts = {
			show_current_context = true,
		},
	},
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = true,
	},
}
