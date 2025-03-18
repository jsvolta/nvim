return {
  {
    'neovim/nvim-lspconfig',
    dependencies = {
      -- Auto install lsp and related tools to stdpath for Neovim
      { 'stevearc/dressing.nvim',  opts = {}, event = 'VeryLazy' }, -- NOTE: Needed for Mason language filter
      { 'williamboman/mason.nvim', opts = {} },                    -- NOTE: must be loaded before setting up servers with lspconfig
      'williamboman/mason-lspconfig.nvim',
      'WhoIsSethDaniel/mason-tool-installer.nvim',

      'saghen/blink.cmp',

      {
        'folke/lazydev.nvim',
        ft = 'lua',
        opts = {
          library = {
            { path = '${3rd}/luv/library', words = { 'vim%.uv' } },
          },
        },
      },
      -- Status updates for LSP
      { 'j-hui/fidget.nvim', opts = {} },
    },
    config = function()
      vim.api.nvim_create_autocmd('LspAttach', {
        callback = function(args)
          local c = vim.lsp.get_client_by_id(args.data.client_id)
          if not c then return end

          if vim.bo.filetype == 'lua' then
            -- Format the current buffer on save
            vim.api.nvim_create_autocmd('BufWritePre', {
              buffer = args.buf,
              callback = function() vim.lsp.buf.format { bufnr = args.buf, id = c.id } end,
            })
          end
        end,
      })

      -- Change diagnostic symbols in the sign column (gutter)
      if vim.g.have_nerd_font then
        local signs = { Error = '', Warn = '', Hint = '', Info = '' }
        for type, icon in pairs(signs) do
          local hl = 'DiagnosticSign' .. type
          vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
        end
      end

      -- [[ SERVER SETUP ]] --
      local capabilities = require('blink.cmp').get_lsp_capabilities()
      require('mason').setup()

      local servers = {
        lua_ls = {},
        pyright = {},
        angularls = {
          filetypes = { 'typescript', 'html', 'typescriptreact', 'typescript.tsx', 'htmlangular' },
        },
        html = {
          filetypes = { 'html', 'htmlangular', 'templ' },
        },
        emmet_language_server = {},
        ts_ls = {},
        cssls = {},
      }

      local ensure_installed = vim.tbl_keys(servers or {})

      local formatters = {
        'stylua',
        'prettier',
        'black',
      }
      vim.list_extend(ensure_installed, formatters)

      require('mason-tool-installer').setup { ensure_installed = ensure_installed }

      require('mason-lspconfig').setup {
        handlers = {
          function(server_name)
            local server = servers[server_name] or {}
            server.capabilities = vim.tbl_deep_extend('force', {}, capabilities, server.capabilities or {})
            require('lspconfig')[server_name].setup(server)
          end,
        },
      }
    end,

    -- diagnostic config
    vim.diagnostic.config {
      severity_sort = true,
      float = { border = 'rounded', source = 'if_many' },
      underline = { severity = vim.diagnostic.severity.ERROR },
      signs = vim.g.have_nerd_font and {
        text = {
          [vim.diagnostic.severity.ERROR] = '󰅚 ',
          [vim.diagnostic.severity.WARN] = '󰀪 ',
          [vim.diagnostic.severity.INFO] = '󰋽 ',
          [vim.diagnostic.severity.HINT] = '󰌶 ',
        },
      } or {},
      virtual_text = {
        source = 'if_many',
        spacing = 2,
        format = function(diagnostic)
          local diagnostic_message = {
            [vim.diagnostic.severity.ERROR] = diagnostic.message,
            [vim.diagnostic.severity.WARN] = diagnostic.message,
            [vim.diagnostic.severity.INFO] = diagnostic.message,
            [vim.diagnostic.severity.HINT] = diagnostic.message,
          }
          return diagnostic_message[diagnostic.severity]
        end,
      },
    },
  },
}
