-- easily manage external editor tooling such as LSP servers, DAP servers, linters, and formatters through a single interface
return {
    {
		'williamboman/mason.nvim',
		build = ':MasonUpdate',
	},

    -- LSP
	'neovim/nvim-lspconfig',
	'williamboman/mason-lspconfig.nvim',

    -- DAP
    { 
        'rcarriga/nvim-dap-ui', 
        dependencies = {
            'mfussenegger/nvim-dap', 
            'nvim-neotest/nvim-nio'
        } 
    },

    -- linting
    'mfussenegger/nvim-lint',

    -- formating
    'mhartington/formatter.nvim'
}