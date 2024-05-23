require('telescope').load_extension('fzf')

local tlscp = require('telescope.builtin')

-- File pickers
vim.keymap.set('n', '<leader>ff', tlscp.find_files, { desc = 'Find files' })
vim.keymap.set('n', '<leader>fg', tlscp.live_grep, { desc = 'Live grep search' })

-- Vim pickers
vim.keymap.set('n', '<leader>vk', tlscp.keymaps, { desc = 'Show keymaps' })
vim.keymap.set('n', '<leader>vh', tlscp.help_tags, { desc = 'Help tags' })
