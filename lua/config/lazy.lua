-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out,                            "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Setup lazy.nvim
require("lazy").setup({
  show = false,
  spec = {
    -- import your plugins
    { import = "plugins" },
  },
  -- automatically check for plugin updates
  checker = { enabled = true, notify = false, frequency = 86400 },
  change_detection = {
    notify = false,
  },
})

require('import-cost').setup({
  -- Filetypes to attach to
  filetypes = {
    'javascript',
    'javascriptreact',
    'typescript',
    'typescriptreact',
  },
  format = {
    -- Format string for bytes/kilobytes in virtual text
    byte_format = '%.1fb',
    kb_format = '%.1fk',
    -- Virtual text format (remove second "%s" to ignore gzipped size)
    virtual_text = '%s (gzipped: %s)',
  },
  -- Highlight of virtual text —
  -- a highlight group to link to or table as specified by nvim_set_hl()
  highlight = 'Comment',
})
