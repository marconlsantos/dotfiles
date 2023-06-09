require("nvim-treesitter.configs").setup({
	ensure_installed = { "javascript", "typescript", "lua", "vim", "c_sharp" },
	auto_install = true,
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false,
	},
	indent = {
		enable = true,
	},
	context_commentstring = {
		enable = true,
	},
})
