require('nvim-treesitter.configs').setup({
	ensure_installed = { 'lua', 'vim', 'vimdoc', 'c_sharp', 'javascript', 'typescript', 'html', 'json5', 'xml' },
	auto_install = true,
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false,
	},
	indent = {
		enable = true,
	}
})
