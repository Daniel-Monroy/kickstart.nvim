return {
  require('lspconfig').intelephense.setup {
    settings = {
      intelephense = {
        environment = {
          phpVersion = '8.3',
        },
        files = {
          maxSize = 5000000,
        },
      },
    },
  },
}
