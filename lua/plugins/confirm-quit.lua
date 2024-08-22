return {
  'yutkat/confirm-quit.nvim',
  event = 'CmdlineEnter',
  opt = {
    overwrite_q_command = true,
  },
  config = function()
    require('confirm-quit').setup()
  end,
}
