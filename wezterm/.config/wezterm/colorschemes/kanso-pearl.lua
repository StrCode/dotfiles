local M = {}
local name = "Kanso-Pearl"

M.init = function()
  return name
end

M.activate = function(config)
  config.color_schemes = config.color_schemes or {}
  config.color_schemes[name] = {
    -- force_reverse_video_cursor = true,
    foreground = "#22262D",
    background = "#F2F1EF",

    cursor_bg = "#22262D",
    cursor_fg = "#F2F1EF",
    cursor_border = "#C5C9C7",

    selection_fg = "#22262D",
    selection_bg = "#E2E1DF",

    scrollbar_thumb = "#43464E",
    split = "#43464E",

    ansi = {
      "#22262D",
      "#c84053",
      "#6f894e",
      "#77713f",
      "#4d699b",
      "#b35b79",
      "#597b75",
      "#545464",
    },
    brights = {
      "#6d6f6e",
      "#d7474b",
      "#6e915f",
      "#836f4a",
      "#6693bf",
      "#624c83",
      "#5e857a",
      "#43436c",
    },
  }
  config.color_scheme = name
end

return M
