require("config.lazy")

vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.wo.relativenumber = true
vim.wo.number = true

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
local builtin = require('telescope.builtin')
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
vim.keymap.set("n", "<C-n>", ":Neotree filesystem toggle right<CR>")
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {}) 
vim.keymap.set('n', '<leader>fs', require("telescope").extensions.live_grep_args.live_grep_args, { noremap = true }) 
