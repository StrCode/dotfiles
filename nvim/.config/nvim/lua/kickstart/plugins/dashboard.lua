return {
  {
    'MaximilianLloyd/ascii.nvim',
    event = 'VimEnter',
    dependencies = { { 'MunifTanjim/nui.nvim' } },
  },
  {
    'nvimdev/dashboard-nvim',
    event = 'VimEnter',
    config = function()
      require('dashboard').setup {
        -- config
        config = {
          header = require('ascii').art.text.neovim.ansi_shadow,
        },
      }
    end,
    dependencies = { { 'nvim-tree/nvim-web-devicons' } },
  },
}
