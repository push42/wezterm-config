-- Midnight glass palette engineered for a premium neon aesthetic.
-- stylua: ignore
local aurora = {
   base          = '#0b111a',
   mantle        = '#101927',
   crust         = '#090d15',
   surface0      = '#172031',
   surface1      = '#1f2a3f',
   surface2      = '#27344c',
   overlay0      = '#324055',
   overlay1      = '#3d4c64',
   overlay2      = '#4b5a73',
   text          = '#e7f0ff',
   subtext1      = '#c3d1eb',
   subtext0      = '#a5b3cf',
   accent_blue   = '#ff6a6a',
   accent_cyan   = '#ffa657',
   accent_mint   = '#7de2a7',
   accent_gold   = '#f7d770',
   accent_peach  = '#ffb37a',
   accent_rose   = '#f38fbf',
   accent_violet = '#c099ff',
}

local colorscheme = {
   foreground = aurora.text,
   background = aurora.base,
   cursor_bg = aurora.accent_cyan,
   cursor_border = aurora.accent_cyan,
   cursor_fg = aurora.crust,
   selection_bg = aurora.surface2,
   selection_fg = aurora.text,
   ansi = {
      '#1a2333',
   '#ff6a6a',
      '#5fd89a',
      '#fbd567',
      '#7aa2f7',
      '#c099ff',
      '#7cd1ff',
   '#e7f0ff',
   },
   brights = {
      '#263046',
   '#ff8f8f',
      '#7feeb3',
      '#ffe08a',
      '#96b8ff',
      '#d7b2ff',
      '#9ae4ff',
   '#eef4ff',
   },
   tab_bar = {
      background = 'rgba(8, 14, 23, 0.55)',
      active_tab = {
         bg_color = aurora.surface2,
         fg_color = aurora.text,
         intensity = 'Bold',
      },
      inactive_tab = {
         bg_color = aurora.surface0,
         fg_color = aurora.subtext0,
      },
      inactive_tab_hover = {
         bg_color = aurora.surface1,
         fg_color = aurora.text,
      },
      new_tab = {
         bg_color = aurora.mantle,
         fg_color = aurora.subtext0,
      },
      new_tab_hover = {
         bg_color = aurora.surface2,
         fg_color = aurora.text,
         italic = true,
      },
   },
   visual_bell = aurora.accent_rose,
   indexed = {
      [16] = aurora.accent_peach,
      [17] = aurora.accent_violet,
   },
   scrollbar_thumb = 'rgba(122, 162, 247, 0.2)',
   split = aurora.overlay0,
   compose_cursor = aurora.accent_gold,
}

local meta = {
   accent = aurora.accent_blue,
   accent_soft = aurora.accent_cyan,
   accent_warm = aurora.accent_peach,
   accent_gold = aurora.accent_gold,
   accent_pink = aurora.accent_rose,
   surface = aurora.surface0,
   surface_hover = aurora.surface1,
   glass = 'rgba(8, 14, 23, 0.45)',
   glass_heavy = 'rgba(8, 14, 23, 0.65)',
   text = aurora.text,
   text_dim = aurora.subtext0,
}

return {
   palette = colorscheme,
   meta = meta,
}
