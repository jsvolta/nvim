return { 
    'catppuccin/nvim', 
    name = 'catppuccin', 
    priority = 1000,
    enabled = true,
    opts = {
        flavour = "mocha",
        show_end_of_buffer = true,
        term_colors = true,
        dim_inactive = {
            enabled = true,
            shade = "dark",
            percentage = 0.3,
        },
        styles = {
            comments = {},
            conditionals = {},
        },
    },
    init = function() 
        vim.cmd.colorscheme 'catppuccin'
    end,
}
