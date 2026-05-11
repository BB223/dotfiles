hl.window_rule({
  match = {
    class = 'org.pulseaudio.pavucontrol|com.saivert.pwvucontrol|hyprpwcenter',
  },
  tag = '+settings',
})
hl.window_rule({
  match = {
    class = 'org.pipewire.Helvum',
  },
  tag = '+settings',
})
hl.window_rule({
  match = {
    title = 'btop',
  },
  tag = '+settings',
})
hl.window_rule({
  match = {
    title = 'bluetui',
  },
  tag = '+settings',
})

hl.window_rule({
  name = 'settings',
  match = {
    tag = 'settings',
  },
  float = true,
  size = '(monitor_w*0.7) (monitor_h*0.7)',
  center = true,
})
