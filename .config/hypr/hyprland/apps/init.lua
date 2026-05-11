hl.window_rule({
  -- Ignore maximize requests from all apps. You'll probably like this.
  name = 'suppress-maximize-events',
  match = {
    class = '.*',
  },
  suppress_event = 'maximize',
})

hl.window_rule({
  -- Fix some dragging issues with XWayland
  name = 'fix-xwayland-drags',
  match = {
    class = '^$',
    title = '^$',
    xwayland = true,
    float = true,
    fullscreen = false,
    pin = false,
  },
  no_focus = true,
})

-- Hyprland-run windowrule
hl.window_rule({
  name = 'move-hyprland-run',
  match = {
    class = 'hyprland-run',
  },

  move = '20 monitor_h-120',
  float = true,
})

require('hyprland.apps.browser')
require('hyprland.apps.dialogue')
require('hyprland.apps.file_manager')
require('hyprland.apps.gaming')
require('hyprland.apps.messanger')
require('hyprland.apps.music')
require('hyprland.apps.settings')
require('hyprland.apps.news')
require('hyprland.apps.terminal')
require('hyprland.apps.viewer')

hl.layer_rule({
  match = {
    namespace = 'waybar',
  },
  blur = true,
})
hl.layer_rule({
  match = {
    namespace = 'rofi',
  },
  blur = true,
  ignore_alpha = 0.5,
})

