return {
    'nvim-telescope/telescope.nvim', dependencies = {
    { 
        "nvim-telescope/telescope-live-grep-args.nvim" ,
        -- This will not install any breaking changes.
        -- For major updates, this must be adjusted manually.
        version = "^1.0.0",
    },
  },
  tag = '^0.1.8',
  config = function()
    local telescope = require("telescope")
    local builtin = require('telescope.builtin')

    -- first setup telescope
    telescope.setup({
        -- your config
    })
    vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
    vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
    vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
    vim.keymap.set('n', '<leader>fh', builtin.help_tags, {}) 
    vim.keymap.set('n', '<leader>fs', telescope.extensions.live_grep_args.live_grep_args, { noremap = true }) 

    -- then load the extension
    telescope.load_extension("live_grep_args")
  end
}
