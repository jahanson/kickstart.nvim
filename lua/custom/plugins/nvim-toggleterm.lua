return {
  'akinsho/toggleterm.nvim',
  version = '*',
  opts = {},
  config = function(_, opts)
    require('toggleterm').setup(opts)
    local Terminal = require('toggleterm.terminal').Terminal
    local lazygit = Terminal:new {
      cmd = 'lazygit',
      hidden = true,
      direction = 'float',
      float_opts = {
        border = 'curved',
        width = 120,
        height = 30,
      },
    }
    function _LAZYGIT_TOGGLE()
      lazygit:toggle()
    end

    vim.api.nvim_set_keymap('n', '<leader>g', '<cmd>lua _LAZYGIT_TOGGLE()<CR>', { noremap = true, silent = true })
  end,
}
