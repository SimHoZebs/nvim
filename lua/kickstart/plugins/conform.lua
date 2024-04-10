return {
  { -- Autoformat
    'stevearc/conform.nvim',
    event = { 'BufWritePre' },
    opts = {
      notify_on_error = true,
      format_on_save = {
        timeout_ms = 50000,
        async = true,
        lsp_fallback = true,
      },
      formatters_by_ft = {
        lua = { 'stylua' },
        javascript = { { 'biome' } },
        typescript = { { 'biome' } },
        typescriptreact = { { 'biome', 'prettierd' } },
        javascriptreact = { { 'biome', 'prettierd' } },
        json = { 'biome', 'prettierd' },
        astro = { 'astro-language-server' },
      },
    },
  },
}
-- vim: ts=2 sts=2 sw=2 et
