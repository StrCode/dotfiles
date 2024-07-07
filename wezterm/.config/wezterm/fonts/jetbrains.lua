local wezterm = require("wezterm")
local M = {}
local name = "JetBrains Mono"

M.init = function()
  return name
end

M.activate = function(config)
  config.font = wezterm.font(name)
  -- config.freetype_load_target = "Light"
  -- config.freetype_render_target = "HorizontalLcd"
  config.font_size = 14
  config.line_height = 1.3
  config.harfbuzz_features = {}
  config.font_rules = {
    {
      intensity = "Normal",
      italic = false,
      font = wezterm.font("BerkeleyMonoTrial Nerd Font", { weight = "Regular" }),
    },
    {
      intensity = "Normal",
      italic = true,
      font = wezterm.font("BerkeleyMonoTrial Nerd Font", { weight = 325, style = "Italic" }),
    },
    {
      intensity = "Normal",
      italic = false,
      font = wezterm.font("BerkeleyMonoTrial Nerd Font", { weight = "Regular" }),
    },
    {
      intensity = "Normal",
      italic = true,
      font = wezterm.font("BerkeleyMonoTrial Nerd Font", { weight = "Regular", style = "Italic" }),
    },
  }
end

return M
