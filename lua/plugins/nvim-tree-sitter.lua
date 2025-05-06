return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			local config = require("nvim-treesitter.configs")
			config.setup({
				auto_install = true,
				highlight = { enable = true },
				indent = { enable = true },
				ensure_installed = {
					"lua",
					"javascript",
					"typescript",
					"json",
					"yaml",
					"go",
          "markdown",
          "kotlin",
				},
			})
		end,
	},
}
