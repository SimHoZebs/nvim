return {
  'nvim-telescope/telescope-file-browser.nvim',
  dependencies = { 'nvim-telescope/telescope.nvim', 'nvim-lua/plenary.nvim' },
  vim.api.nvim_set_keymap('n', '<space>sb', ':Telescope file_browser<CR>', { noremap = true, desc = '[S]earch file [B]rowser' }),
  config = function()
    require('telescope').setup {
      extensions = {
        file_browser = {
          mappings = {
            i = {
              ['<C-p>'] = require('telescope.actions.layout').toggle_preview,
            },
          },
        },
      },
    }
  end,
}
