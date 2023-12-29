
local lsp = require('lsp-zero')
local lspconfig = require('lspconfig')


require('mason').setup({})
require('mason-lspconfig').setup({
    ensure_installed = {
        'tsserver',
        'pyright',
        'ltex'
    },
    handlers = {
        lsp.default_setup,
        lua_ls = function()
            local lua_opts = lsp.nvim_lua_ls()
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
        {name = 'path'},
        {name = 'nvim_lsp'},
        {name = 'nvim_lua'},
    },
    mapping = cmp.mapping.preset.insert({
        ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
        ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
        ['<C-y>'] = cmp.mapping.confirm({ select = true }),
        ['<C-Space>'] = cmp.mapping.complete(),
    }),
})


lsp.set_sign_icons({
    error = 'E',
    warn = 'W',
    hint = 'H',
    info = 'I'
})

vim.diagnostic.config({
    virtual_text = {
        severity_limit = 'Error'
    },
    signs = {
        severity_limit = 'all'
    },
    underline = {
        severity_limit = 'Error'
    },
    update_in_insert = true
})


lsp.on_attach(function(client, bufnr)
    lsp.default_keymaps({buffer = bufnr})
    local opts = {buffer = bufnr}

    vim.keymap.set('n', '<leader>dd', '<cmd>Telescope diagnostics bufnr=0<cr>', opts)
    vim.keymap.set('n', 'gd', '<cmd>Telescope lsp_definitions<cr>', opts)
    vim.keymap.set('n', 'gi', '<cmd>Telescope lsp_implementations<cr>', opts)
    vim.keymap.set('n', 'gr', '<cmd>Telescope lsp_references<cr>', opts)
end)

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

