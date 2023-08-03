local lsp = require("lsp-zero")

lsp.preset("recommended")

lsp.ensure_installed({
  'bashls',
  'csharp_ls',
  'docker_compose_language_service',
  'dockerls',
  'pylsp',
  'yamlls',
  'tsserver',
  'rust_analyzer',
  'lua_ls',
  'solargraph',
  --'salt_ls'
})

-- Fix Undefined global 'vim'
lsp.nvim_workspace()


local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.defaults.cmp_mappings({
  ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
  ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
  ['<C-y>'] = cmp.mapping.confirm({ select = true }),
})

--cmp_mappings['<Tab>'] = nil
--cmp_mappings['<S-Tab>'] = nil

lsp.setup_nvim_cmp({
  mapping = cmp_mappings
})

lsp.set_preferences({
    suggest_lsp_servers = false,
    sign_icons = {
        error = 'ε',
        warn = 'ω',
        hint = 'ψ',
        info = 'ι'
    }
})

lsp.on_attach(function(client, bufnr)
  local opts = {buffer = bufnr, remap = false}

  vim.bo.omnifunc = 'v:lua.vim.lsp.omnifunc'

  vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
  vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
  vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
  vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
  vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
  vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
  vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
  vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
  vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
  vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
end)

local lspconfig = require('lspconfig')
lspconfig.lua_ls.setup({})
lspconfig.solargraph.setup({})
lspconfig.docker_compose_language_service.setup{}
lspconfig.dockerls.setup{}
lspconfig.pylsp.setup{}
lspconfig.bashls.setup{}
lspconfig.yamlls.setup{}
--lspconfig.salt_ls.setup{}

lsp.setup()

vim.diagnostic.config({
    virtual_text = true
})
