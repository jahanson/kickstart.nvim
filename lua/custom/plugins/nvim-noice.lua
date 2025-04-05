return {
  'folke/noice.nvim',
  event = 'VeryLazy',
  opts = {
    lsp = {
      -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
      override = {
        ['vim.lsp.util.convert_input_to_markdown_lines'] = true,
        ['vim.lsp.util.stylize_markdown'] = true,
        ['cmp.entry.get_documentation'] = true, -- requires hrsh7th/nvim-cmp
      },
    },
  },
  dependencies = {
    -- Required: UI library
    'MunifTanjim/nui.nvim',
    -- Recommended: Notifications
    'rcarriga/nvim-notify', -- Make sure this is loaded *before* noice if you want notify view
  },
}
