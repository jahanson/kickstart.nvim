return {
  -- Floating terminal window
  'voldikss/vim-floaterm',
  -- Load when commands are used or keys are pressed
  cmd = { 'FloatermNew', 'FloatermToggle', 'FloatermPrev', 'FloatermNext' },
  keys = {
    -- Define keymaps here to automatically load the plugin on use
    -- Adjust keys as needed
    { '<leader>ft', '<cmd>FloatermToggle<cr>', desc = '[F]loaterm [T]oggle' },
    { '<leader>fn', '<cmd>FloatermNew<cr>', desc = '[F]loaterm [N]ew' },
    { '<leader>fN', '<cmd>FloatermNew --wintype=split --height=0.4<cr>', desc = '[F]loaterm [N]ew Split' },
    -- Navigation between multiple floaterm windows
    { '<leader>fj', '<cmd>FloatermNext<cr>', mode = 'n', desc = '[F]loaterm Next (j)' },
    { '<leader>fk', '<cmd>FloatermPrev<cr>', mode = 'n', desc = '[F]loaterm Prev (k)' },
    -- Example Terminal mode mapping (requires escaping <C-\><C-n>)
    -- Map <F1> in terminal mode to toggle floaterm *after* exiting terminal mode
    { '<F1>', [[<C-\><C-n><cmd>FloatermToggle<CR>]], mode = 't', desc = 'Toggle Floaterm (Term Mode)' },
  },
} -- Use `init` to set global variables *before* the plugin loads
