return {
  "NeogitOrg/neogit",
  dependencies = {
    "sindrets/diffview.nvim", -- optional - Diff integration
    config = function()
      vim.keymap.set("n", "<leader>vv", "<cmd>:DiffviewFileHistory %<CR>")
      -- vim.keymap.set("n", "<leader>vc", "<cmd>:DiffviewClose<CR>")
    end
  },
  config = true
}
