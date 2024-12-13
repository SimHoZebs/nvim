return {
  {
    'wellle/context.vim',
    event = "VeryLazy",
    config = function ()
      -- run :ContextEnable after loading
      vim.cmd('ContextEnable')
    end


  }
}
