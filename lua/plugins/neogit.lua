return {
  "NeogitOrg/neogit",
  dependencies = {
    "sindrets/diffview.nvim", -- optional - Diff integration
    config = function()
      vim.keymap.set("n", "<leader>df", "<cmd>:DiffviewFileHistory %<CR>")
      vim.keymap.set("n", "<leader>dc", "<cmd>:DiffviewClose<CR>", { remap = false })
    end
  },
  config = true
}
