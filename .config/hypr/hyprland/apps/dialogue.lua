hl.window_rule({
  match = {
    class = 'hyprpolkitagent',
  },
  stay_focused = true,
  tag = '+dialogue',
})
hl.window_rule({
  match = {
    class = '.*[Pp]inentry-.*',
  },
  stay_focused = true,
  tag = '+dialogue',
})
hl.window_rule({
  match = {
    title = 'Add Folder to Workspace',
  },
  tag = '+dialogue',
})
hl.window_rule({
  match = {
    title = 'Save As',
  },
  tag = '+dialogue',
})
hl.window_rule({
  match = {
    initial_title = 'Open Files',
  },
  tag = '+dialogue',
})

hl.window_rule({
  name = 'dialogue',
  match = {
    tag = 'dialogue',
  },
  float = true,
  -- size = '(monitor_w*0.7) (monitor_h*0.6)',
  center = true,
})
