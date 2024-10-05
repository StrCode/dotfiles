return {
  -- add pyright to lspconfig
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      ---@type lspconfig.options
      servers = {
        -- pyright will be automatically installed with mason and loaded with lspconfig
        pyright = {
          -- settings = {
          -- disableOrganizeImports = true,
          -- },
        },

        rust_analyzer = {
          cmd = {
            "rustup",
            "run",
            "stable",
            "rust-analyzer",
          },
          filetypes = { "rust" },
          settings = {
            ["rust_analyzer"] = {
              cargo = {
                allFeatures = true,
              },
            },
          },
        },

        clangd = {},
      },
    },
  },
  -- add any tools you want to have installed below
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "clang-format",
      },
    },
  },
}
