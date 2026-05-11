hl.window_rule({
  match = {
    class = [[steam_app_\d+]],
  },
  tag = '+game',
})
hl.window_rule({
  match = {
    class = [[Minecraft\*? \d+\.\d+.*]],
  },
  tag = '+game',
})
hl.window_rule({
  match = {
    title = [[^$|Wine configuration|Edit Override|Select a theme file|Could not find files!|Select Drive Letter|Browse for Folder]],
  },
  tag = '-game',
})
hl.window_rule({
  match = {
    class = 'gamescope',
  },
  tag = '+game',
})

hl.window_rule({
  match = {
    class = 'steam',
  },
  tag = '+gamestore',
})
hl.window_rule({
  match = {
    class = 'heroic',
  },
  tag = '+gamestore',
})
hl.window_rule({
  match = {
    class = 'Minecraft Launcher',
  },
  tag = '+gamestore',
})
hl.window_rule({
  match = {
    class = 'org.prismlauncher.PrismLauncher',
  },
  tag = '+gamestore',
})

hl.window_rule({
  match = {
    class = 'steam',
    title = 'negative:Steam',
  },
  float = true,
})
hl.window_rule({
  match = {
    class = 'heroic',
    title = 'negative:Heroic Games Launcher',
  },
  float = true,
})
hl.window_rule({
  match = {
    title = 'Wine configuration',
  },
  center = true,
})

hl.window_rule({
  name = 'game',
  match = {
    tag = 'game',
  },
  fullscreen = true,
  workspace = '4 silent',
  content = 'game',
  no_blur = true,
})
hl.window_rule({
  name = 'gamestore',
  match = {
    tag = 'gamestore',
  },
  workspace = '10 silent',
})
hl.window_rule({
  name = 'Minecraft',
  match = {
    class = '^$',
    title = '^$',
    float = true,
  },
  float = false,
  workspace = '10 silent',
})
