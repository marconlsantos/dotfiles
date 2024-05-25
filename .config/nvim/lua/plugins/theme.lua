return {
	"EdenEast/nightfox.nvim",
	"nvim-tree/nvim-web-devicons",
	-- {
	-- 	"lukas-reineke/indent-blankline.nvim",
	-- 	config = true,
	-- 	opts = {
	-- 		show_current_context = true,
	-- 	},
	-- },
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = true,
	},
}
