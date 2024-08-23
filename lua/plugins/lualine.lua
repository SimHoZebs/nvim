return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('lualine').setup {
      options = {
        theme = 'onedark',
      },
      tabline = {
        lualine_c = {
          {
            'buffers',
            buffers_color = {
              'buffers',
              active = { bg = '#8957E5', fg = '#d4d4d4' },
              inactive = { bg = '#1e1e1e', fg = '#d4d4d4' },
            },
          },
        },
      },
      sections = {
        lualine_c ={
          {
            'filename',
            file_status = true,
            path = 1
          },
        },
        lualine_y = {} }
    }
  end,
}
