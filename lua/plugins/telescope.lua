return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      {
        "nvim-telescope/telescope-live-grep-args.nvim",
        -- This will not install any breaking changes.
        -- For major updates, this must be adjusted manually.
        version = "^1.0.0",
      },
    },
    tag = "0.1.8",
    config = function()
      local telescope = require("telescope")
      local builtin = require("telescope.builtin")

      -- first setup telescope
      telescope.setup({
        defaults = {
          layout_strategy = "horizontal",
          path_display = { "filename_first", "smart" },
          mappings = {
            n = {
              ['<c-d>'] = require('telescope.actions').delete_buffer,
            }, -- n
            i = {
              ["<C-h>"] = "which_key",
              ['<c-d>'] = require('telescope.actions').delete_buffer
            } -- i
          }
        }
      })
      vim.keymap.set("n", "<leader>pf", builtin.find_files)
      -- vim.keymap.set("n", "<leader>fg", builtin.live_grep)
      vim.keymap.set("n", "<leader>pb", builtin.buffers)
      vim.keymap.set("n", "<leader>ph", builtin.help_tags)
      -- vim.keymap.set("n", "<leader>/", builtin.current_buffer_fuzzy_find)
      vim.keymap.set("n", "<leader>ps", telescope.extensions.live_grep_args.live_grep_args, { noremap = true })
      vim.keymap.set("n", "<leader>pr", telescope.extensions.git_worktree.git_worktree, silent)
      vim.keymap.set("n", "<leader>pR", telescope.extensions.git_worktree.create_git_worktree, silent)
      vim.keymap.set("n", "<leader>pm", builtin.marks, silent)
      vim.keymap.set("n", "<leader>px", builtin.registers, silent)

      -- then load the extension
      telescope.load_extension("live_grep_args")

      -- -- git_worktree
      -- require('git-worktree').setup()
      telescope.load_extension("git_worktree")
    end,
  },
  {
    "nvim-telescope/telescope-ui-select.nvim",
    config = function()
      require("telescope").setup({
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown({}),
          },
        },
      })
      require("telescope").load_extension("ui-select")
    end,
  },
}
