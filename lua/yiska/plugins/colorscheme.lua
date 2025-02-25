return {
  {
    'folke/tokyonight.nvim',
    lazy = false,
    priority = 1000,
    opts = {
      style = 'storm',
      styles = {
        comments = { italic = false },
      },
      dim_inactive = true,
    },
    init = function() vim.cmd.colorscheme 'tokyonight' end,
  },
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 1000,
    enabled = true,
    opts = {
      flavour = 'mocha',
      show_end_of_buffer = true,
      term_colors = true,
      dim_inactive = {
        enabled = true,
        shade = 'dark',
        percentage = 0.3,
      },
      styles = {
        comments = {},
        conditionals = {},
      },
    },
  },
}
