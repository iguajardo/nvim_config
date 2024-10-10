return {
  "nvim-lualine/lualine.nvim",
  config = function()
    require("lualine").setup({
      options = {
        theme = "dracula",
      },
      sections = {
        lualine_b = {
          {
            function()
              local cwd = vim.fn.getcwd()
              return " " .. vim.fn.fnamemodify(cwd, ":t")
            end
          },
          'branch',
        },
        lualine_c = {
          {
            'filename',
            path = 1
          },
        },
      }
    })
  end
}
