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
map('n', 'gd', builtin.lsp_definitions)
map('n', 'gr', builtin.lsp_references)
map('n', 'gD', vim.lsp.buf.declaration)
map('n', 'gI', builtin.lsp_implementations)
map('n', 'gT', vim.lsp.buf.type_definition)
map('n', 'K', vim.lsp.buf.hover)
map('n', '<leader>D', builtin.lsp_type_definitions)
map('n', '<leader>ds', builtin.lsp_document_symbols)
map({ 'n', 'x' }, '<leader>ca', vim.lsp.buf.code_action)
map('n', '<leader>ws', builtin.lsp_dynamic_workspace_symbols)
map('n', '<leader>rn', vim.lsp.buf.rename)

-- [[ MISC ]] --
map('n', '<ESC>', ':nohl<CR>')
