local gpu_adapters = require('utils.gpu-adapter')
local backdrops = require('utils.backdrops')
local color_spec = require('colors.custom')
local colors = color_spec.palette

local meta = color_spec.meta or {}

return {
   max_fps = 120,
   front_end = 'WebGpu', ---@type 'WebGpu' | 'OpenGL' | 'Software'
   webgpu_power_preference = 'HighPerformance',
   webgpu_preferred_adapter = gpu_adapters:pick_best(),
   underline_thickness = '1.4pt',

   -- cursor
   animation_fps = 120,
   cursor_blink_ease_in = 'EaseOut',
   cursor_blink_ease_out = 'EaseOut',
   default_cursor_style = 'BlinkingBlock',
   cursor_blink_rate = 650,

   -- color scheme
   colors = colors,

   -- background: pass in `true` if you want wezterm to start with focus mode on (no bg images)
   background = backdrops:initial_options(false),

   -- scrollbar
   enable_scroll_bar = false,

   -- tab bar
   enable_tab_bar = true,
   hide_tab_bar_if_only_one_tab = false,
   use_fancy_tab_bar = false,
   tab_max_width = 26,
   show_tab_index_in_tab_bar = false,
   switch_to_last_active_tab_when_closing_tab = true,

   -- command palette
   command_palette_fg_color = meta.accent_soft or '#7fd4ff',
   command_palette_bg_color = meta.surface or '#172031',
   command_palette_font_size = 12,
   command_palette_rows = 18,

   -- window
   window_padding = {
      left = 8,
      right = 8,
      top = 14,
      bottom = 10,
   },
   adjust_window_size_when_changing_font_size = false,
   window_close_confirmation = 'NeverPrompt',
   window_frame = {
      active_titlebar_bg = meta.glass_heavy or 'rgba(8, 14, 23, 0.65)',
      inactive_titlebar_bg = meta.glass or 'rgba(8, 14, 23, 0.45)',
   },
   window_background_opacity = 0.92,
   text_background_opacity = 0.92,
   win32_system_backdrop = 'Acrylic',
   inactive_pane_hsb = {
      saturation = 0.85,
      brightness = 0.75,
   },

   visual_bell = {
      fade_in_function = 'EaseIn',
      fade_in_duration_ms = 180,
      fade_out_function = 'EaseOut',
      fade_out_duration_ms = 220,
      target = 'CursorColor',
   },
}
