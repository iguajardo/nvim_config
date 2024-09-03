return {
  "catppuccin/nvim",
  name = "catppuccin",
  flavour = "macchiato",
  priority = 1000,
  config = function()
    vim.cmd.colorscheme "catppuccin"
  end
}

