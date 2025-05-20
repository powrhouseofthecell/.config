local wezterm = require("wezterm")

local theme = wezterm.plugin.require("https://github.com/neapsix/wezterm").main

local config = wezterm.config_builder()

-- Nerd Fonts
-- BlexMono Nerd Font Mono
-- GeistMono Nerd Font Mono
-- FiraCode Nerd Font Mono
-- OperatorMonoLig Nerd Font
-- JetBrainsMono Nerd Font
config.font = wezterm.font("JetBrainsMono Nerd Font")
config.font_size = 16.3

config.enable_tab_bar = true

config.window_decorations = "RESIZE"
config.window_background_opacity = 1

config.window_padding = {
	left = 30,
	right = 30,
	top = 30,
	bottom = 30,
}
config.macos_window_background_blur = 10

config.color_scheme = "catppuccin-mocha"
-- config.color_scheme = "rose-pine"
-- config.color_scheme = "kanagawabones"
-- config.color_scheme = "Equilibrium Gray Dark (base16)"
-- config.color_scheme = "zenbones_dark"
-- config.color_scheme = "Gruvbox dark, hard (base16)"
-- config.color_scheme = "Guezwhoz"
-- config.color_scheme = "Derp (terminal.sexy)"
-- config.color_scheme = "Classic Dark (base16)"
-- config.color_scheme = "Mikado (terminal.sexy)"

config.keys = {
	-- Show tab navigator
	{
		key = "p",
		mods = "CMD",
		action = wezterm.action.ShowTabNavigator,
	},
	-- Show launcher menu
	{
		key = "P",
		mods = "CMD|SHIFT",
		action = wezterm.action.ShowLauncher,
	},
	-- Rename current tab
	{
		key = "E",
		mods = "CMD|SHIFT",
		action = wezterm.action.PromptInputLine({
			description = "Enter new name for tab",
			action = wezterm.action_callback(function(window, _, line)
				if line then
					window:active_tab():set_title(line)
				end
			end),
		}),
	},

	-- switch active tab
	{
		key = "[",
		mods = "CMD",
		action = wezterm.action.ActivateTabRelative(-1),
	},
	{
		key = "]",
		mods = "CMD",
		action = wezterm.action.ActivateTabRelative(1),
	},
}

return config
