return {
	"nvim-tree/nvim-tree.lua",
	config = true,
	opts = {
		sort_by = "case_sensitive",
		view = {
			width = 50,
			side = "right",
		},
		renderer = {
			group_empty = true,
		},
		filters = {
			dotfiles = true,
		},
	},
}
