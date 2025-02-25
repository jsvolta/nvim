return {
  {
    'echasnovski/mini.nvim',
    version = false,
    enabled = true,
    config = function()
      local statusline = require 'mini.statusline'

      statusline.setup { use_icons = true }
      require('mini.pairs').setup()
    end,
  },
}
