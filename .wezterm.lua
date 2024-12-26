-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- config.color_scheme = 'Tokyo Night'
config.color_scheme = 'GruvboxDarkHard'

config.window_padding = {
	left = "0.5cell",
	right = "0cell",
	top = "0cell",
	bottom = "0cell",
}

config.font = wezterm.font 'JetBrainsMono Nerd Font'
config.font_size = 13.0

config.colors = {
	foreground = "#fbf1c7",  -- Adjusted for better visibility
	background = "#1d2021",

	cursor_bg = "#ebdbb2",  -- Brighter cursor background
	cursor_fg = "black",
	cursor_border = "#ebdbb2",

	selection_fg = "#1d2021",  -- Darker selection foreground
	selection_bg = "#ebdbb2",  -- Brighter selection background

	scrollbar_thumb = "#3c3836",  -- More visible scrollbar

	-- The color of the split lines between panes
	split = "#3c3836",

	ansi = {
		"#1d2021", -- black, color 0
		"#cc241d", -- red, color 1
		"#98971a", -- green, color 2
		"#d79921",
		"#458588",
		"#b16286",
		"#689d6a",
		"#ebdbb2", -- Brighter, color 7
	},
	brights = {
		"#928374", -- black, color 0
		"#fb4934", -- red, color 1
		"#b8bb26", -- green, color 2
		"#fabd2f",
		"#83a598",
		"#d3869b",
		"#8ec07c",
		"#fbf1c7", -- Brightest white, color 7
	},
}

config.default_prog = { 'pwsh.exe', '-NoLogo' }


-- and finally, return the configuration to wezterm
return config
