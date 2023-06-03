require("telescope").load_extension("fzf")

local tlscp = require("telescope.builtin")

vim.keymap.set("n", "<leader>fh", tlscp.help_tags, { desc = "Show help tags" })
vim.keymap.set("n", "<leader>ff", tlscp.find_files, { desc = "Find files" })
vim.keymap.set("n", "<leader>fg", tlscp.live_grep, { desc = "Fuzzy find" })
vim.keymap.set("n", "<leader>fb", tlscp.buffers, { desc = "Show buffers" })
vim.keymap.set("n", "<leader>fs", tlscp.lsp_document_symbols, { desc = "Show LSP symbols" })
vim.keymap.set("n", "<leader>fd", tlscp.diagnostics, { desc = "Show LSP diagnostics" })
vim.keymap.set("n", "<leader>km", tlscp.keymaps, { desc = "Show keymaps" })
