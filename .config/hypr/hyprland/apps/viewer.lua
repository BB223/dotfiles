hl.window_rule({
  match = {
    class = 'imv',
  },
  content = 'photo',
  tag = '+viewer',
})
hl.window_rule({
  match = {
    class = 'mpv',
  },
  content = 'video',
  tag = '+viewer',
})

hl.window_rule({
  name = 'viewer',
  match = {
    tag = 'viewer',
  },
  fullscreen = true,
  opacity = '1.0',
  no_blur = true,
})
