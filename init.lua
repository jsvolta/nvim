vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.g.have_nerd_font = true

require "yiska.options"
require "yiska.autocmds"
require "lazy_init"
require "yiska.keymaps"

require 'nvim-treesitter.install'.compilers = { "cl", "clang", "gcc" }
