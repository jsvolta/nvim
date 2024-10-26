return {
    'catppuccin/nvim', 
    name = 'catppuccin', 
    priority = 1000,
    opts = {
        -- transparent background is incompatible with dim inactive
        -- transparent_background = true, -- disables setting the background color.
        show_end_of_buffer = true, -- shows the '~' characters after the end of buffers
        dim_inactive = {
            enabled = true, -- dims the background color of inactive window
            shade = "dark",
            percentage = 0.20, -- percentage of the shade to apply to the inactive window
        },
    },
    init = function()
      -- load the colorscheme here
      vim.cmd.colorscheme 'catppuccin-mocha'
    end,
}
