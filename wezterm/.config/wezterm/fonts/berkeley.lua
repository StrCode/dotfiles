local wezterm = require("wezterm")
local M = {}
local name = "TX-02"

M.init = function()
  return name
end

M.activate = function(config)
  config.font = wezterm.font(name)
  -- config.freetype_load_target = "Light"
  -- config.freetype_render_target = "HorizontalLcd"
  config.font_size = 17
  config.line_height = 1.5
  config.harfbuzz_features = { "ss02=1" }
  config.font_rules = {
    {
      intensity = "Normal",
      italic = false,
      font = wezterm.font("TX-02", { weight = "Regular" }),
    },
    {
      intensity = "Normal",
      italic = true,
      font = wezterm.font("TX-02", { weight = "Regular", style = "Italic" }),
    },
    {
      intensity = "Bold",
      italic = false,
      font = wezterm.font("TX-02", { weight = "Bold" }),
    },
    {
      intensity = "Bold",
      italic = true,
      font = wezterm.font("TX-02", { weight = "Bold", style = "Italic" }),
    },
  }
end

return M
