local map = vim.keymap.set

-- [[ OIL ]] --
map('n', '-', '<CMD>Oil<CR>')

-- [[ TELESCOPE ]] --
local builtin = require 'telescope.builtin'

map('n', '<leader>fd', builtin.find_files)
map('n', '<leader>fg', builtin.live_grep)
map('n', '<leader>fh', builtin.help_tags)
map('n', '<leader><leader>', builtin.buffers)
map('n', '<leader>/', builtin.colorscheme)
map('n', '<leader>en', function()
  builtin.find_files {
    cwd = vim.fn.stdpath 'config',
  }
end)

-- LSP
map('n', '<leader>q', builtin.diagnostics)
map('n', 'gd', builtin.lsp_definitions, { buffer = 0 })
map('n', 'gr', builtin.lsp_references, { buffer = 0 })
map('n', 'gD', vim.lsp.buf.declaration, { buffer = 0 })
map('n', 'gT', vim.lsp.buf.type_definition, { buffer = 0 })
map('n', 'K', vim.lsp.buf.hover, { buffer = 0 })
map('n', '<leader>ca', vim.lsp.buf.code_action, { buffer = 0 })

-- [[ MISC ]] --
map('n', '<ESC>', ':nohl<CR>')
