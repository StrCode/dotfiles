local M = {}

-- stylua: ignore
local colorschemes = {
  { label = "Ayu Dark",         value = "Ayu Dark (Gogh)" },
  { label = "Vesper",         value = "Vesper" },
  { label = "Vacuous 2",         value = "Vacuous 2 (terminal.sexy)" },
  { label = "Tokyo Night Moon", value = "Tokyo Night (Gogh)"},
  { label = "Catppuccin Mocha", value = "Catppuccin Mocha"},
  { label = "Kanagawa Dragon", value = "Kanagawa Dragon (Gogh)"},
  { label = "Oxocarbon Dark",   value = "Oxocarbon Dark (Gogh)" },
  { label = "Matrix",           value = "matrix" },
  { label = "Black Metal (Bathory) (base16)",           value = "Black Metal (Bathory) (base16)" },

}

M.init = function()
  return colorschemes
end

M.activate = function(config, _, value)
  config.color_scheme = value
end

return M
