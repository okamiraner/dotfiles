local lsp_zero = require('lsp-zero')
local lspconfig = require('lspconfig')


require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = {
    'tsserver',
    'pyright',
    'ltex'
  },
  handlers = {
    lsp_zero.default_setup,
    lua_ls = function()
      local lua_opts = lsp_zero.nvim_lua_ls()
      lspconfig.lua_ls.setup(lua_opts)
    end,
  }
})


local cmp = require('cmp')
local cmp_select = {
  behavior = cmp.SelectBehavior.Select
}


cmp.setup({
  sources = {
    {
      name = 'path'
    },
    {
      name = 'nvim_lsp'
    },
    {
      name = 'nvim_lua'
    },
  },
  mapping = cmp.mapping.preset.insert({
    ['<CR>'] = cmp.mapping.confirm({select = true}),
    ['<leader><tab>'] = cmp.mapping.complete(),
  })
})


vim.diagnostic.config({
  virtual_text = false,
  update_in_insert = true
})


lsp_zero.on_attach(function(client, bufnr)
  lsp_zero.default_keymaps({
    buffer = bufnr
  })

  local opts = {buffer = bufnr}

  vim.keymap.set('n', '<leader>rn', function() vim.lsp.buf.rename() end, opts)
  vim.keymap.set('n', '<leader>dd', '<cmd>Telescope diagnostics bufnr=0<cr>', opts)
  vim.keymap.set('n', '<leader>d', 'vim.lsp.diagnostic.show_line_diagnostics()', opts)
  vim.keymap.set('n', 'gd', '<cmd>Telescope lsp_definitions<cr>', opts)
  vim.keymap.set('n', 'gi', '<cmd>Telescope lsp_implementations<cr>', opts)
  vim.keymap.set('n', 'gr', '<cmd>Telescope lsp_references<cr>', opts)
end)


lsp_zero.set_sign_icons({
  error = '♢',
  warn = '♢',
  hint = '♢',
  info = '♢',
})


lspconfig.ltex.setup({
  filetypes = {
    'markdown',
    'md',
    'text',
    'tex',
    'latex',
    'adoc',
    'asciidoc'
  },
  flags = {
    debounce_text_changes = 300
  },
  settings = {
    ltex = {
      language = 'en-US'
    }
  }
})

