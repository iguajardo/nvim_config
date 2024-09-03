return {
  "nvim-treesitter/nvim-treesitter", 
  build = ":TSUpdate",
  ensure_installed = {"lua", "javascript", "typescript", "json", "yaml"},
  highlight = { enable = true },
  indent = { enable = true },
}
