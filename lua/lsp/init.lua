print '✅ lsp/init.lua cargado correctamente'
vim.notify('✅ LSP init.lua cargado', vim.log.levels.INFO)

local lspconfig = require 'lspconfig'
local capabilities = require('cmp_nvim_lsp').default_capabilities()

local vue_language_server_path = vim.fn.stdpath 'data' .. '/mason/packages/vue-language-server/node_modules/@vue/language-server'

local vue_plugin = {
  name = '@vue/typescript-plugin',
  location = vue_language_server_path,
  languages = { 'vue' },
  configNamespace = 'typescript',
}

lspconfig.vtsls.setup('vtsls', {
  settings = {
    vtsls = {
      tsserver = {
        globalPlugins = {
          vue_plugin,
        },
      },
    },
  },
  filetypes = { 'typescript', 'javascript', 'javascriptreact', 'typescriptreact', 'vue' },
})

-- ✅ (Opcional) vue-language-server para otras funcionalidades
lspconfig.vue_ls.setup {
  capabilities = capabilities,
}
