vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('yiska-highlight', { clear = true }),
  callback = function() vim.highlight.on_yank() end,
})

vim.api.nvim_create_autocmd('BufEnter', {
  desc = 'Set 2 space indent on certain filetypes',
  group = vim.api.nvim_create_augroup('yiska-format', { clear = true }),
  pattern = { '*.html', '*.ts', '*.tsx', '*.js', '*.jsx', '*.css', '*.scss', '*.lua' },
  callback = function()
    local set = vim.opt_local

    set.sts = 2
    set.ts = 2
    set.sw = 2
  end,
})
