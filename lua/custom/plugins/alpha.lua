return {
  'goolord/alpha-nvim',
  event = 'VimEnter',
  enabled = true,
  init = false,
  dependencies = {
    'echasnovski/mini.icons',
    'nvim-lua/plenary.nvim',
  },
  config = function()
    local alpha = require 'alpha'
    local dashboard = require 'alpha.themes.dashboard'

    dashboard.section.header.val = {
      '               ..                                ',
      '              .=*:                               ',
      '             :@@@:                               ',
      '             #@@#:                     ...       ',
      '            -@@@-.                   =@@*.       ',
      '           .@@@@-                   =@@@+.       ',
      '          .#@@@%:                  .@@@@=.       ',
      '          =@@@@+......=***+:.      +@@@#:        ',
      '         .#@@@@@%@@@@@@@@@@@=..   .#@@@*.        ',
      '         -%@@@#-%@@@@@@@@@@@@@@#. +@@@@*.        ',
      '        .+@@@@+   .@@@@@@@@@@@@@@@@@@@%-         ',
      '        .*@@@#.    .-%@@@@@%#####%@@@@%.         ',
      '        :#@@@=       ..-=:.      =@@@@=          ',
      '        -@@@%                   .+@@@@.          ',
      '       .=@@@.                   :%@@@-           ',
      '       .*@@+                    :@@@@.           ',
      '                               .-@@@:            ',
      '                               .+@@+.            ',
      '                               .:*#:.            ',
      '                                 ..              ',
    }
    dashboard.section.buttons.val = {
      dashboard.button('e', '  > New file', ':ene <BAR> startinsert <CR>'),
      dashboard.button('f', '󰭎  > Find file', ':cd . | Telescope find_files<CR>'),
      dashboard.button('r', '  > Recent', ':Telescope oldfiles<CR>'),
      dashboard.button('c', '  > Config', '<Cmd>e C:\\Users\\tripp\\AppData\\Local\\nvim<CR>'),
      dashboard.button('l', '󰒲  > Lazy', '<Cmd>Lazy<CR>'),
      dashboard.button('m', '󱌣  > Mason', '<Cmd>Mason<CR>'),
      dashboard.button('q', '󰩈  > Quit NVIM', ':qa<CR>'),
    }
    alpha.setup(dashboard.opts)
  end,
}
