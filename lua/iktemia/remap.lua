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

vim.keymap.set("n", "<leader>pv", '<cmd>:Ex<CR>', { remap = false })

-- move across buffer faster centering the cursor
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- move between matches but center the view
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- replace with yanked content
vim.keymap.set("x", "<leader>p", [["_dP]])

-- copy to system clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- delete without saving it to buffer. Send it to Blackhole
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

vim.keymap.set("n", "Q", "<nop>")
-- vim.keymap.set("n", "<C-q>", "<cmd>:q<CR>", { remap = false })

-- floating diagnostic
vim.api.nvim_set_keymap('n', '<space>e', '<cmd>lua vim.diagnostic.open_float()<CR>', {})

-- jump without register in jumplist
vim.api.nvim_set_keymap('n', '}', ':<C-u>lua vim.cmd("keepjumps norm! " .. vim.v.count1 .. "}")<CR>',
  { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '{', ':<C-u>lua vim.cmd("keepjumps norm! " .. vim.v.count1 .. "{")<CR>',
  { noremap = true, silent = true })

-- neogit
vim.keymap.set('n', '<leader>gg', '<cmd>:Neogit<CR>')
