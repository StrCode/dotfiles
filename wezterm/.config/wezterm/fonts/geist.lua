local wezterm = require("wezterm")
local M = {}
local name = "Geist Mono"

M.init = function()
  return name
end

M.activate = function(config)
  config.font = wezterm.font(name)
  -- config.freetype_load_target = "Light"
  -- config.freetype_render_target = "HorizontalLcd"
  config.font_size = 14
  config.line_height = 1.2
  config.harfbuzz_features = { "ss02=1" }
  config.font_rules = {}
  config.font_rules = {
    {
      intensity = "Normal",
      italic = false,
      font = wezterm.font("Geist Mono", { weight = "Regular" }),
    },
    {
      intensity = "Normal",
      italic = true,
      font = wezterm.font("Geist Mono", { weight = 325, style = "Italic" }),
    },
    {
      intensity = "Bold",
      italic = false,
      font = wezterm.font("Geist Mono", { weight = "Bold" }),
    },
    {
      intensity = "Bold",
      italic = true,
      font = wezterm.font("Geist Mono", { weight = "Bold", style = "Italic" }),
    },
  }
end

return M
