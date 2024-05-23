return {
	{
		'nvim-telescope/telescope-fzf-native.nvim',
		build = 'make',
	},
	{
		'nvim-telescope/telescope.nvim',
		tag = '0.1.1',
		dependencies = { 
			'nvim-lua/plenary.nvim' ,
			'BurntSushi/ripgrep',
			'sharkdp/fd'
		},
		config = true,
		opts = {
			defaults = {
				layout_config = { prompt_position = 'top' },
				sorting_strategy = 'ascending',
			},
		},
	},
}
