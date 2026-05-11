hl.window_rule({
  match = {
    class = '[Ss]potify',
  },
  tag = '+music',
})

hl.window_rule({
  name = 'music',
  match = {
    tag = 'music',
  },
  workspace = '7 silent',
})
