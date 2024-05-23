return {
  {
    'RRethy/vim-illuminate',
    event = 'VeryLazy',
    config = function()
      require('illuminate').configure {
        under_cursor = false,
      }
      vim.api.nvim_command [[ hi IlluminatedWordText gui=NONE guibg='#eb6f92' guifg='#e0def4']]
      vim.api.nvim_command [[ hi IlluminatedWordRead gui=NONE guibg='#eb6f92' guifg='#e0def4']]
      vim.api.nvim_command [[ hi IlluminatedWordWrite gui=NONE guibg='#eb6f92' guifg='#e0def4']]
    end,
  },
}
