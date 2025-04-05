return {
  'rcarriga/nvim-notify',

  opts = {
    timeout = 3000, -- Auto-dismiss notifications after 3 seconds
    max_height = function()
      return math.floor(vim.o.lines * 0.75)
    end,
    max_width = function()
      return math.floor(vim.o.columns * 0.75)
    end,
    -- You can customize stages, icons, etc. See :help notify-options
  },
  config = function(_, opts)
    -- Set nvim-notify as the handler for vim.notify function
    vim.notify = require 'notify'
    require('notify').setup(opts)
  end,
}
