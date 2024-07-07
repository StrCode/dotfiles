return {
  'nvim-neotest/neotest',
  dependencies = {
    'nvim-neotest/nvim-nio',
    'nvim-lua/plenary.nvim',
    -- 'antoinemadec/FixCursorHold.nvim',
    'nvim-treesitter/nvim-treesitter',
    'nvim-neotest/neotest-python',
  },
  config = function()
    -- setup testing
    local neotest = require 'neotest'

    require('neotest').setup {
      adapters = {
        require 'neotest-python' {
          -- Extra arguments for nvim-dap configuration
          -- See https://github.com/microsoft/debugpy/wiki/Debug-configuration-settings for values
          dap = {
            justMyCode = false,
            console = 'integratedTerminal',
          },
          args = { '--log-level', 'DEBUG', '--quiet' },
          runner = 'pytest',
          status = { virtual_text = true },
          output = { open_on_run = true },
        },
      },
    }

    vim.keymap.set('n', '<leader>tr', function()
      neotest.run.run()
      neotest.summary.open()
    end, { desc = 'Run Nearest Test' })

    vim.keymap.set('n', '<leader>tt', function()
      neotest.run.run(vim.fn.expand '%')
    end, { desc = 'Run File Tests' })

    vim.keymap.set('n', '<leader>tT', function()
      require('neotest').run.run(vim.uv.cwd())
    end, { desc = 'Run All Test Files' })

    vim.keymap.set('n', '<leader>tl', function()
      require('neotest').run.run_last()
    end, { desc = 'Run Last Test ' })

    vim.keymap.set('n', '<leader>ts', function()
      require('neotest').summary.toggle()
    end, { desc = 'Toggle Summary' })

    vim.keymap.set('n', '<leader>to', function()
      require('neotest').output.open { enter = true, auto_close = true }
    end, { desc = 'Show Output' })

    vim.keymap.set('n', '<leader>tO', function()
      require('neotest').output_panel.toggle()
    end, { desc = 'Toggle Output Panel' })

    vim.keymap.set('n', '<leader>tS', function()
      require('neotest').run.stop()
    end, { desc = 'Stop' })
  end,
}
