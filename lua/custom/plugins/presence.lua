return {
  {
    'jiriks74/presence.nvim',
    event = 'UIEnter',
    config = function()
      require('presence').setup {
        show_time = false,
      }
    end,
  },
}
