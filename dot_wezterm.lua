local wezterm = require("wezterm")
local config = wezterm.config_builder()

-- Font
config.font = wezterm.font("JetBrains Mono")
config.font_size = 14.0

-- Color scheme
config.color_scheme = "Gruvbox Dark (Gogh)"

-- Transparent background
config.window_background_opacity = 0.85
config.macos_window_background_blur = 20

-- Launch tmux by default
config.default_prog = { '/usr/local/bin/tmux' }


return config
