return {
  -- GitHub Copilot backend (sin ghost text ni panel)
  {
    'zbirenbaum/copilot.lua',
    event = 'InsertEnter',
    config = function()
      require('copilot').setup {
        suggestion = { enabled = false }, -- ✅ no ghost text
        panel = { enabled = false }, -- ✅ no panel
      }
    end,
  },

  -- Integración con blink.cmp
  {
    'giuxtaposition/blink-cmp-copilot',
    dependencies = { 'zbirenbaum/copilot.lua' },
  },
}
