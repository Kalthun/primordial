local wezterm = require 'wezterm'
local config = {}

config.window_close_confirmation = "NeverPrompt"
config.enable_tab_bar = false
config.default_cursor_style = 'SteadyBar'

config.window_padding = {
  left = 2,
  right = 2,
  top = 0,
  bottom = 0,
}

return config
