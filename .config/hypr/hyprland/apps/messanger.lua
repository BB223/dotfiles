hl.window_rule({
  match = {
    class = 'discord',
  },
  tag = '+im',
})
hl.window_rule({
  match = {
    class = 'Element',
  },
  tag = '+im',
})

hl.window_rule({
  name = 'messanger',
  match = {
    tag = 'im',
  },
  workspace = '8 silent',
})
