return {
  "catppuccin/nvim",
  name = "catppuccin",
  -- flavour = "moccha",
  priority = 1000,
  config = function()
    vim.cmd.colorscheme "catppuccin"
  end
}

