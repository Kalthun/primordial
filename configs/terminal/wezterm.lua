local wezterm = require 'wezterm'
local config = {}

config.font = wezterm.font 'Caskaydia Cove Nerd Font Mono'

config.window_close_confirmation = "NeverPrompt"
config.enable_tab_bar = false

return config
