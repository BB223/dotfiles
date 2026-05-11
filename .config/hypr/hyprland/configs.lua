hl.config({
  general = {
    gaps_in = 0,
    gaps_out = 0,
    col = {
      inactive_border = '#595959aa',
      active_border = {
        colors = { '#33ccffee', '#00ff99ee' },
        angle = 45,
      },
    },
    snap = { enabled = true },
  },
  decoration = {
    rounding = 3,
    blur = { enabled = false },
    shadow = { enabled = false },
  },
  animations = { enabled = false },
  input = {
    kb_layout = 'us',
    kb_options = 'caps:escape,compose:ralt',
  },
  misc = {
    disable_hyprland_logo = true,
    disable_splash_rendering = true,
    mouse_move_enables_dpms = true,
    key_press_enables_dpms = true,
  },
  cursor = {
    hide_on_key_press = true,
  },
  ecosystem = {
    no_donation_nag = true,
    enforce_permissions = true,
  },
})
