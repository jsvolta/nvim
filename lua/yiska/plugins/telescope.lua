return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.8',
  -- or                              , branch = '0.1.x',
  dependencies = { 'nvim-lua/plenary.nvim', { 'nvim-tree/nvim-web-devicons', opts = {} } },
  config = function()
    require('telescope').setup {
      pickers = {
        find_files = { hidden = true, theme = 'ivy' },
        live_grep = { theme = 'ivy' },
        help_tags = { theme = 'ivy' },
        buffers = { theme = 'dropdown' },
        colorscheme = { theme = 'dropdown' },
        diagnosticts = { theme = 'ivy' },
      },
    }
  end,
}
