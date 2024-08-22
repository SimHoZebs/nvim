return {
  { -- Autoformat
    'stevearc/conform.nvim',
    event = { 'BufWritePre' },
    opts = {
      notify_on_error = true,
      format_on_save = {
        timeout_ms = 500,
        lsp_fallback = true,
      },
      formatters_by_ft = {
        lua = { 'stylua' },
        html = { 'biome', 'prettierd' },
        htmldjango = { 'djlint' },
        javascript = { 'biome', 'prettierd' },
        typescript = { 'biome', 'prettierd' },
        python = { 'black' },
        typescriptreact = { 'biome', 'prettierd' },
        javascriptreact = { 'biome', 'prettierd' },
        json = { 'biome', 'prettierd' },
        astro = { 'prettierd' },
      },
      formatters = {
        stylua = {
          args = { '--config-path', vim.fn.stdpath('config') .. '/.stylua.toml' },
        },
      }
    },
  },
}
-- vim: ts=2 sts=2 sw=2 et
