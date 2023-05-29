return {
	{
		"mfussenegger/nvim-dap",
		init = function()
			local dap = require("dap")

			vim.keymap.set("n", "<F5>", function()
				dap.continue()
			end, { desc = "Start/Continue" })
			vim.keymap.set("n", "<F10>", function()
				dap.step_over()
			end, { desc = "Step Over" })
			vim.keymap.set("n", "<F11>", function()
				dap.step_into()
			end, { desc = "Step Into" })
			vim.keymap.set("n", "<F12>", function()
				dap.step_out()
			end, { desc = "Step Out" })
			vim.keymap.set("n", "<F9>", function()
				dap.toggle_breakpoint()
			end, { desc = "Toggle Breakpoint" })
			vim.keymap.set("n", "<Leader>dr", function()
				dap.repl.open()
			end, { desc = "Open REPL" })
		end,
	},
	{
		"rcarriga/nvim-dap-ui",
		dependencies = "mfussenegger/nvim-dap",
		init = function()
			vim.keymap.set({ "n", "v" }, "<Leader>do", function()
				require("dap.ui").open()
			end, { desc = "Open DAP UI" })
		end,
	},
}
