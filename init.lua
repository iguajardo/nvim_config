vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.wo.relativenumber = true
vim.wo.number = true
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- custom theme
-- vim.opt.termguicolors = true
vim.cmd.colorscheme "gray"

-- Open new terminal at bottom, fixed height
vim.keymap.set("n", "<leader>t", function()
  vim.cmd.new()
  vim.cmd.wincmd("J")
  vim.api.nvim_win_set_height(0, 12)
  vim.wo.winfixheight = true
  vim.cmd.term()
end)

-- scape terminal key
vim.keymap.set("t", "<esc><esc>", "<c-\\><c-n>")
require("config.lazy")
