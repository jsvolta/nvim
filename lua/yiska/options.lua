local set = vim.opt
vim.g.have_nerd_font = true

-- [[ Behavior ]]
set.clipboard = 'unnamedplus'
set.ignorecase = true
set.incsearch = true

set.smartcase = true
set.splitbelow = true
set.splitright = true
set.tagcase = 'followscs'
set.updatetime = 250
set.visualbell = true
set.wrapscan = true

-- [[ Format ]]
set.autoindent = true
set.breakindent = true
set.colorcolumn = { 80, 120 }
set.expandtab = true
set.shiftwidth = 4
set.smarttab = true
set.softtabstop = 4
set.tabstop = 4

-- [[ Visual ]]
set.cursorline = true
set.hlsearch = true
set.list = true
set.listchars = { tab = '» ', trail = '·', nbsp = '␣' }
set.number = true
set.scrolloff = 10
set.signcolumn = 'yes'
set.wrap = false

-- [[ MISC ]]
set.shell = 'pwsh'
set.shellcmdflag = '-NoLogo'
