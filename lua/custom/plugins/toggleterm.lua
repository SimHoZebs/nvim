return {
  -- amongst your other plugins
  { 'akinsho/toggleterm.nvim', version = '*', config = true },
  vim.api.nvim_set_keymap('n', '<leader>th', ':ToggleTerm direction=horizontal <CR> <bar> i', { desc = 'term horizontal' }),
  vim.api.nvim_set_keymap('n', '<leader>tv', ':ToggleTerm direction=vertical <CR> <bar> i', { desc = 'term vertical' }),
  vim.api.nvim_set_keymap('n', '<leader>tf', ':ToggleTerm direction=float <CR> <bar> i', { desc = 'term float' }),
}
