hl.window_rule({
  match = {
    class = 'com.mitchellh.ghostty',
  },
  tag = '+terminal',
})

hl.window_rule({
  name = 'terminal',
  match = {
    tag = 'terminal',
  },
  workspace = '1',
})
