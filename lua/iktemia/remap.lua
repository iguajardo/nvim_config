-- scape terminal key
vim.keymap.set("t", "<esc><esc>", "<c-\\><c-n>")

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

-- vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set({ "n", "v" }, "<leader>y", function()
  local mode = vim.fn.mode()
  if mode == "v" or mode == "V" then
    vim.cmd('silent normal! "zy')  -- Yank to temporary "z" register
    vim.fn.setreg("+", vim.fn.substitute(vim.fn.getreg("z"), "\n", " ", "g"))  -- Remove newlines and copy to "+"
  else
    vim.cmd('silent normal! "zy')  -- Yank in normal mode
    vim.fn.setreg("+", vim.fn.substitute(vim.fn.getreg("z"), "\n", " ", "g"))  -- Process and copy to "+"
  end
end, { silent = true })

-- vim.keymap.set({ "n", "v" }, "<leader>y", "zy:let @+ = substitute(@z, '\n', ' ', 'g')<CR>")
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

-- move from quickfix list
vim.keymap.set("n", "<C-j>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-k>", "<cmd>cprev<CR>zz")

-- quit
vim.keymap.set({ "n", "v" }, "<C-q>", "<Cmd>confirm q<CR>")

-- save
vim.keymap.set({ "n", "v" }, "<C-s>", "<Cmd>w<CR>")
vim.keymap.set("i", "<C-s>", "<Esc><Cmd>w<CR>a")

-- split windows
vim.keymap.set("n", "<C-w>h", "<Cmd>set nosplitright<CR> <Cmd>vsplit<CR> <Cmd>set splitright<CR>")
vim.keymap.set("n", "<C-w>j", "<Cmd>set splitbelow<CR> <Cmd>split<CR>")
vim.keymap.set("n", "<C-w>k", "<Cmd>set nosplitbelow<CR> <Cmd>split<CR> <Cmd>set splitbelow<CR>")
vim.keymap.set("n", "<C-w>l", "<Cmd>set splitright<CR> <Cmd>vsplit<CR>")

-- search highlight
vim.keymap.set("n", "<Esc>", "<Cmd>nohlsearch<CR>")

-- close quickfix list
vim.keymap.set('n', '<leader>q', '<Cmd>cclose<CR>', { remap = false })
