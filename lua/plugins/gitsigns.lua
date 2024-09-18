return {
  "lewis6991/gitsigns.nvim",
  config = function ()
    require('gitsigns').setup()
    vim.keymap.set('n', '<leader>bb', function() vim.cmd.Gitsigns "toggle_current_line_blame" end)
    vim.keymap.set('n', '<leader>bl', function() vim.cmd.Gitsigns "blame" end)
  end
}
