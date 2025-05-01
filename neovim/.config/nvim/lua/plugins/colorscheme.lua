return {
  {
    'rose-pine/neovim',
    name = 'rose-pine',
    config = function()
      ---@diagnostic disable-next-line: missing-fields
      require('rose-pine').setup {
        disable_background = true,
        disable_float_background = true,
        styles = {
          italic = false,
        },
      }
      vim.cmd 'colorscheme rose-pine'
    end,
  },
}
