-- examples for your init.lua

-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

-- setup with some options
require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    adaptive_size = true,
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
        { key = "s", action = "" },
        { key = "gx", action = "system_open" }
      },
    },
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = false,
  },
  git = {
      ignore = true,
  },
  respect_buf_cwd = true,
})

vim.keymap.set('n', '<Leader>e', '<cmd>NvimTreeToggle<cr>')
vim.keymap.set('n', '<Leader>tf', '<cmd>NvimTreeFocus<cr>')
