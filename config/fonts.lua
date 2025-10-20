local wezterm = require('wezterm')
local platform = require('utils.platform')

local primary_font = 'JetBrainsMono Nerd Font'
local fallback_fonts = {
   { family = primary_font, weight = 'Medium' },
   { family = 'Cascadia Code PL', weight = 'Regular' },
   'Segoe UI Emoji',
}

local font_size = platform.is_mac and 12.5 or 10.5

return {
   font = wezterm.font_with_fallback(fallback_fonts),
   font_size = font_size,
   line_height = 1.05,
   harfbuzz_features = { 'calt=1', 'clig=1', 'liga=1', 'ss01=1' },
   font_rules = {
      {
         italic = true,
         font = wezterm.font({ family = primary_font, style = 'Italic' }),
      },
      {
         intensity = 'Bold',
         font = wezterm.font({ family = primary_font, weight = 'DemiBold' }),
      },
      {
         intensity = 'Bold',
         italic = true,
         font = wezterm.font({ family = primary_font, weight = 'Bold', style = 'Italic' }),
      },
   },

   --ref: https://wezfurlong.org/wezterm/config/lua/config/freetype_pcf_long_family_names.html#why-doesnt-wezterm-use-the-distro-freetype-or-match-its-configuration
   freetype_load_target = 'Normal', ---@type 'Normal'|'Light'|'Mono'|'HorizontalLcd'
   freetype_render_target = 'Normal', ---@type 'Normal'|'Light'|'Mono'|'HorizontalLcd'
}
