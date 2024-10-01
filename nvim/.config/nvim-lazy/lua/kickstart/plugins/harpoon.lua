return {
  -- luacheck: ignore
  -- Fast file navigation (Uses SPC a)
  {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-telescope/telescope.nvim',
    },
    event = 'VeryLazy',
    config = function()
      local harpoon = require 'harpoon'
      local ui = require 'harpoon.ui'

      harpoon:setup {
        settings = {
          save_on_toggle = true, -- Save state on window toggle
        },
      }

      -- Telescope Config
      local conf = require('telescope.config').values
      local pickers = require 'telescope.pickers'
      local themes = require 'telescope.themes'
      local finders = require 'telescope.finders'
      local actions = require 'telescope.actions'
      local action_state = require 'telescope.actions.state'

      local function generate_new_finder(harpoon_files)
        local files = {}
        for i, item in ipairs(harpoon_files.items) do
          table.insert(files, i .. '. ' .. item.value)
        end

        return finders.new_table {
          results = files,
        }
      end

      local function toggle_telescope(harpoon_files)
        pickers
          .new(
            themes.get_dropdown {
              --TODO: make previewer work.
              previewer = false,
            },
            {
              prompt_title = 'Harpoon',
              finder = generate_new_finder(harpoon_files),
              previewer = conf.file_previewer {},
              sorter = conf.generic_sorter {},
              -- Initial mode, change this to your liking. Normal mode is better for navigating with j/k
              initial_mode = 'normal',
              -- Make telescope select buffer from harpoon list
            }
          )
          :find()
      end

      -- keymaps

      vim.keymap.set('n', '<C-e>', function()
        toggle_telescope(harpoon:list())
      end, { desc = 'Open harpoon window' })

      vim.keymap.set('n', '<leader>a', function()
        harpoon:list():add()
      end, { desc = 'Append file to harpoon' })

      vim.keymap.set('n', '<C-h>', function()
        harpoon:list():select(1)
      end)
      vim.keymap.set('n', '<C-t>', function()
        harpoon:list():select(2)
      end)
      vim.keymap.set('n', '<C-n>', function()
        harpoon:list():select(3)
      end)
      vim.keymap.set('n', '<C-s>', function()
        harpoon:list():select(4)
      end)

      vim.keymap.set('n', '<leader>ac', function()
        harpoon:list():clear()
      end, { desc = 'Clear Harpoon List' })
    end,
  },
}
