local actions = require('telescope.actions')
require('telescope').load_extension('fzf')

require('telescope').setup{
  defaults = {
    -- Default configuration for telescope goes here:
    -- config_key = value,
    mappings = {
      i = {
        -- map actions.which_key to <C-h> (default: <C-/>)
        -- actions.which_key shows the mappings for your picker,
        -- e.g. git_{create, delete, ...}_branch for the git_branches picker
        ["<C-h>"] = "which_key", 
        ["<C-k>"] = actions.move_selection_next, 
        ["<C-l>"] = actions.move_selection_previous,
      }, 
      n = {
          ['k'] = actions.move_selection_next, 
          ['l'] = actions.move_selection_previous
      }
    }
  },
  pickers = {
    find_files = {
        find_command = {'fd', '-H'}
    },
    
    buffers = {
        mappings = {
            n = {
                ['<Del>'] = actions.delete_buffer, 
            },
            i = {
                ['<Del>'] = actions.delete_buffer,
            },
        }
    }
  },
  extensions = {
    fzf = {
      fuzzy = true 
    , override_generic_sorter = true 
    , override_file_sorter = true
    , case_mode = 'smart_case'
    },
  }
}

local builtin = require('telescope.builtin')

vim.keymap.set('n', '<Leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<Leader>lg', builtin.live_grep, {})
vim.keymap.set('n', '<Leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<Leader>fh', builtin.help_tags, {})

vim.keymap.set('n', '<Leader>cl', builtin.colorscheme, {})
vim.keymap.set('n', '<Leader>jl', builtin.jumplist, {})
