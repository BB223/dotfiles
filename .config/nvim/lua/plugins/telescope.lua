return {
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.5',
        dependencies = {
            'nvim-lua/plenary.nvim',
            'nvim-telescope/telescope-fzf-native.nvim',
        },
        config = function()
            require('telescope').setup({})
            require('telescope').load_extension('fzf')

            local builtin = require('telescope.builtin')
            vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
            vim.keymap.set('n', '<C-p>', builtin.git_files, {})
            vim.keymap.set('n', '<leader>ps', function()
                builtin.grep_string({ search = vim.fn.input("Grep > ") });
            end)
            vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})
        end,
    },
    {
        'nvim-telescope/telescope-fzf-native.nvim',
        build = 'make',
    },
    {
        'nvim-telescope/telescope-symbols.nvim',
        opts = {
            sources = { 'emoji', 'kaomoji', 'gitmoji' },
        },
        enabled = false,
    }
}
