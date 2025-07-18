return {
  {
    "datsfilipe/vesper.nvim",
    opts = {
      italics = {
        comments = false,
        keywords = true,
        functions = false,
        strings = false,
        variables = false,
      },
    },
  },
  {
    "webhooked/kanso.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      bold = true, -- enable bold fonts
      italics = true, -- enable italics
      compile = false, -- enable compiling the colorscheme
      undercurl = true, -- enable undercurls
      commentStyle = { italic = true },
      functionStyle = {},
      keywordStyle = { italic = true },
      statementStyle = {},
      typeStyle = {},
      transparent = true, -- do not set background color
      dimInactive = true, -- dim inactive window `:h hl-NormalNC`
      terminalColors = true, -- define vim.g.terminal_color_{0,17}
      colors = { -- add/modify theme and palette colors
        palette = {},
        theme = { zen = {}, pearl = {}, ink = {}, all = {} },
      },
      overrides = function(colors) -- add/modify highlights
        return {}
      end,
      theme = "zen", -- Load "zen" theme
      background = { -- map the value of 'background' option to a theme
        dark = "zen", -- try "ink" !
        light = "pearl", -- try "mist" !
      },
    },
  },
  {

    "LazyVim/LazyVim",
    opts = {
      colorscheme = "kanso-zen",
    },
  },
}
