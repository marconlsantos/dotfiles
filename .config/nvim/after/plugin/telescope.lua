require("telescope").load_extension("fzf")

local tlscp = require("telescope.builtin")

-- File pickers
vim.keymap.set("n", "<leader>gf", tlscp.git_files, { desc = "Find Git files" })
vim.keymap.set("n", "<leader>ff", tlscp.find_files, { desc = "Find files" })
vim.keymap.set("n", "<leader>gr", tlscp.live_grep, { desc = "Live grep search" })

-- Vim pickers
vim.keymap.set("n", "<leader>bf", tlscp.buffers, { desc = "List open buffers" })
vim.keymap.set("n", "<leader>km", tlscp.keymaps, { desc = "Show keymaps" })
