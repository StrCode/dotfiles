return {
  "stevearc/conform.nvim",
  optional = true,
  opts = {
    formatters_by_ft = {
      ["python"] = { "ruff_fix", "ruff_format" },
      ["c"] = { "clang_format" },
    },
    formatters = {
      clang_format = {
        prepend_args = { "--style=file", "--fallback-style=LLVM" },
      },
    },
  },
}
