local dap = require("dap")
local dapui = require("dapui")
local vscode = require("dap.ext.vscode")

dap.adapters.coreclr = {
	type = "executable",
	command = os.getenv("HOME") .. "/.local/share/nvim/mason/bin/netcoredbg",
	args = { "--interpreter=vscode" },
}

--vscode.json_decode = require("json5").parse
vscode.load_launchjs(nil, { coreclr = { "cs" } })

vim.keymap.set("n", "<F5>", dap.continue, { desc = "Start/Continue" })
vim.keymap.set("n", "<S-F5>", dap.terminate, { desc = "Stop" })
vim.keymap.set("n", "<F10>", dap.step_over, { desc = "Step Over" })
vim.keymap.set("n", "<F11>", dap.step_into, { desc = "Step Into" })
vim.keymap.set("n", "<S-F11>", dap.step_out, { desc = "Step Out" })
vim.keymap.set("n", "<F9>", dap.toggle_breakpoint, { desc = "Toggle Breakpoint" })

vim.keymap.set("n", "<Leader>dr", dap.repl.open, { desc = "Open REPL" })

vim.keymap.set({ "n", "v" }, "<Leader>do", dapui.open, { desc = "Open DAP UI" })
vim.keymap.set({ "n", "v" }, "<Leader>dc", dapui.close, { desc = "Close DAP UI" })

vim.keymap.set("n", "<C-F9>", function()
	dap.set_breakpoint(vim.fn.input("Breakpoint condition: "))()
end, { desc = "Conditional Breakpoint" })
vim.keymap.set("n", "<S-F9>", function()
	dap.set_breakpoint(nil, nil, vim.fn.input("Log point message: "))
end)

dap.listeners.after.event_initialized["dapui_config"] = function()
	dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
	dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
	dapui.close()
end
