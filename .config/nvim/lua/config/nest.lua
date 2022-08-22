local nest = require 'nest'

nest.applyKeymaps {
  --{{{ leader 
  {
    '<leader>',
    {
      { '?', ':WhichKey<CR>' },
      { 's', ':source %<CR>' },
      { 'ff', ':Telescope find_files<CR>' },
      { 'mp', '!mpc toggle<CR>' },
      { 'u', ':PackerSync<CR>' },
      { 'e', ':TroubleToggle<CR>' },
      { 'zn', ':TZNarrow<CR>' },
      { 'zf', ':TZFocus<CR>' },
      { 'zm', ':TZMinimalist<CR>' },
      { 'za', ':TZAtaraxis<CR>' },
    },
    options = {
      silent = false
    }
  },
  -- }}}

  --{{{ control
  { '<C-n>', '<CMD>:NvimTreeToggle<CR>', options = { silent = false } },
  -- }}} 

  --{{{ insert mode 
  {
    mode = 'i',
    { 'jk', '<ESC>' },
    { '<C-h>', '<C-o>h' },
    { '<C-l>', '<C-o>l' },
    { '<C-j>', '<C-o>j' },
    { '<C-k>', '<C-o>k' },
  },
  --}}}
  --{{{ visual mode
  {
    mode = 'v',
    { '<leader>zn', ":'<,'>TZNarrow<CR>" },
  },
  --}}}
  --{{{tab 
  { '<Tab>', ':BufferLineCycleNext<CR>'},
  { '<S-Tab>', ':BufferLineCyclePrev<CR>'},
  --}}}
}
