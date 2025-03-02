return {
  {
    'rose-pine/neovim',
    name = 'rose-pine',
    config = function() vim.cmd 'colorscheme rose-pine' end,
  },
  {
    'folke/tokyonight.nvim',
    lazy = false,
    priority = 1000,
    opts = {
      style = 'night',
      styles = {
        comments = { italic = false },
      },
      dim_inactive = true,
    },
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
