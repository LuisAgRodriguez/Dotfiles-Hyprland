-- Pull in the wezterm API
local wezterm = require 'wezterm'

local config = wezterm.config_builder()

-- Fuentes
config.window_frame ={
  font = wezterm.font { family = 'HackNerdFont', weight = 'Bold' },
  font_size = 10.0,
}
config.font_size = 10.5

-- Colores
config.window_background_opacity = 0.90
config.colors = {
  --Background
  foreground = '#CDD6F4',
  background = '#01141C',
  selection_bg = '#F5E0DC',
  selection_fg = '#1E1E2E',
  --Cursor
  cursor_bg = '#F5E0DC',
  cursor_fg = '#1E1E2E',
  --Bar
  tab_bar = {
    background = '#01141C',
    --Tab
    active_tab = {
    bg_color = '#01141C',
    fg_color = '#CDD6F4',
    intensity = 'Normal',
    underline = 'None',
    italic = false,
    strikethrough = false,
    },
    --Ini Tab
    inactive_tab = {
    bg_color = '#01141C',
    fg_color = '#CDD6F4',
    },
    --Hover
    inactive_tab_hover = {
      bg_color = '#3b3052',
      fg_color = '#909090',
      italic = true,
    },
    --new Tab
    new_tab = {
      bg_color = '#1b1032',
      fg_color = '#808080',
    },
    --new hover Tab
    new_tab_hover = {
      bg_color = '#3b3052',
      fg_color = '#909090',
      italic = true,
    }
  },

}

-- and finally, return the configuration to wezterm
return config
