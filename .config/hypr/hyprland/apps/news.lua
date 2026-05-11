hl.window_rule({
  match = {
    title = 'bulletty',
  },
  tag = '+news',
})

hl.window_rule({
  name = 'news',
  match = {
    tag = 'news',
  },
  float = true,
  size = 'size = (monitor_w*0.9) (monitor_h*0.9)',
  center = true,
})
