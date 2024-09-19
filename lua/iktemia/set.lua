-- ide settings
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.wo.relativenumber = true
vim.wo.number = true

-- special keys
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- custom theme
vim.cmd.colorscheme "gray"

vim.opt.swapfile = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true
vim.opt.termguicolors = true
vim.opt.scrolloff = 8

vim.opt.showtabline = 0
