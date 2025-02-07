local wezterm = require 'wezterm'
local config = {}

config.window_close_confirmation = "NeverPrompt"
config.enable_tab_bar = false
config.default_cursor_style = 'SteadyBar'

config.window_padding = {
  left = 2,
  right = 0,
  top = 0,
  bottom = 0,
}

config.max_fps = 244

config.enable_wayland = false

return config
