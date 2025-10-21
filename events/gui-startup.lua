local wezterm = require('wezterm')
local mux = wezterm.mux

local M = {}

local function default_prompt_mode()
   local hour = tonumber(os.date('%H')) or 0
   if hour >= 21 or hour < 7 then
      return 'focus'
   end
   return 'flow'
end

M.setup = function()
   wezterm.on('gui-startup', function(cmd)
      local _, _, window = mux.spawn_window(cmd or {})
      local gui_window = window:gui_window()
      gui_window:set_config_overrides({
         set_environment_variables = {
            P42_PROMPT_MODE = default_prompt_mode(),
         },
      })
      gui_window:maximize()
   end)
end

return M
