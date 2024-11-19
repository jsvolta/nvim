vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.g.have_nerd_font = true

-- Load plugins first
require("jaden.lazy")

-- Load other config options
require("jaden.options")
require("jaden.keymaps")
require("jaden.autocmds")
