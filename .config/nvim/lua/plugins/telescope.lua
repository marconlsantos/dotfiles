return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = {
        'nvim-lua/plenary.nvim',
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release' }
    },
    config = function()
        require('telescope').setup({
            extensions = {
                fzf = {}
            }
        })

        require('telescope').load_extension('fzf')

        vim.keymap.set("n", "<space>fh", require('telescope.builtin').help_tags)
        vim.keymap.set("n", "<space>ff", require('telescope.builtin').find_files)
        vim.keymap.set("n", "<space>fn", function()
            require('telescope.builtin').find_files({
                cwd = vim.fn.stdpath("config")
            })
        end)
    end
}
