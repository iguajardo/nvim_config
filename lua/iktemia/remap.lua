-- scape terminal key
vim.keymap.set("t", "<esc><esc>", "<c-\\><c-n>")

-- Open new terminal at bottom, fixed height
vim.keymap.set("n", "<leader>t", function()
  vim.cmd.new()
  vim.cmd.wincmd("J")
  vim.api.nvim_win_set_height(0, 12)
  vim.wo.winfixheight = true
  vim.cmd.term()
end)
