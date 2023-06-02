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
			vim.keymap.set("n", "<S-F11>", function()
				dap.step_out()
			end, { desc = "Step Out" })
			vim.keymap.set("n", "<F9>", function()
				dap.toggle_breakpoint()
			end, { desc = "Toggle Breakpoint" })
			vim.keymap.set("n", "<C-F9>", function()
				dap.set_breakpoint(vim.fn.input("Breakpoint condition: "))()
			end, { desc = "Conditional Breakpoint" })
			vim.keymap.set("n", "<S-F9>", function()
				dap.set_breakpoint(nil, nil, vim.fn.input("Log point message: "))
			end)
			vim.keymap.set("n", "<Leader>dr", function()
				dap.repl.open()
			end, { desc = "Open REPL" })
		end,
		config = function()
			local dap = require("dap")

			dap.adapters.coreclr = {
				type = "executable",
				command = vim.fn.stdpath("data") .. "/mason/packages/netcoredbg/netcoredbg",
				args = { "--interpreter=vscode" },
			}

			dap.configurations.cs = {
				{
					type = "coreclr",
					name = "launch - netcoredbg",
					request = "launch",
					program = vim.fn.getcwd() .. "/bin/Debug/net7.0",
				},
			}
		end,
	},
	{
		"rcarriga/nvim-dap-ui",
		dependencies = "mfussenegger/nvim-dap",
		init = function()
			vim.keymap.set({ "n", "v" }, "<Leader>do", function()
				require("dapui").open()
			end, { desc = "Open DAP UI" })
			vim.keymap.set({ "n", "v" }, "<Leader>dc", function()
				require("dapui").close()
			end, { desc = "Close DAP UI" })
		end,
		config = function()
			local dap, dapui = require("dap"), require("dapui")

			dapui.setup()

			dap.listeners.after.event_initialized["dapui_config"] = function()
				dapui.open()
			end
			dap.listeners.before.event_terminated["dapui_config"] = function()
				dapui.close()
			end
			dap.listeners.before.event_exited["dapui_config"] = function()
				dapui.close()
			end
		end,
	},
}
