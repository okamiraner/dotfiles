local builtin = require('telescope.builtin')
local telescope = require('telescope')


telescope.setup {
  defaults = {
    layout_strategy = 'vertical',
    layout_config = {
      vertical = {
        prompt_position = 'top',
        mirror = true
      }
    }
  },
  pickers = {
    find_files = {
      hidden = true
    }
  }
}

vim.keymap.set('n', '<leader>ff', builtin.find_files, {} )
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {} )

