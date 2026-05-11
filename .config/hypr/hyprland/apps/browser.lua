hl.window_rule({
  match = {
    class = 'firefox',
  },
  tag = '+browser',
})
hl.window_rule({
  match = {
    class = 'Tor Browser',
  },
  tag = '+browser',
})
hl.window_rule({
  match = {
    title = 'Picture-in-Picture',
  },
  tag = '+pip',
})

hl.window_rule({
  name = 'browser',
  match = {
    tag = 'browser',
  },
  workspace = '2 silent',
})

hl.window_rule({
  name = 'PiP',
  match = {
    tag = 'pip',
  },
  float = true,
  move = '(monitor_w-window_w-monitor_w*0.03) (monitor_h-window_h-monitor_h*0.04)',
  size = '(monitor_w*0.35) (monitor_h*0.35)',
  pin = true,
  keep_aspect_ratio = true,
})
