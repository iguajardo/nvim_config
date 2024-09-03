return {
  "catppuccin/nvim",
  name = "catppuccin",
	flavour = "mocha",
  priority = 1000, 
  config = function() 
    vim.cmd.colorscheme "catppuccin"
  end 
}

