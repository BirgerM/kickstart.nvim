-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  cmd = 'Neotree',
  keys = {
    { '\\', ':Neotree reveal<CR>', desc = 'NeoTree reveal', silent = true },
    { '<leader>e', ':Neotree focus<CR>', desc = 'Focus NeoTree', silent = true },
    { '<leader>oo', ':Neotree show<CR>', desc = 'Show NeoTree', silent = true },
    { '<leader>oO', ':Neotree close<CR>', desc = 'Close NeoTree', silent = true },
    { '<leader>og', ':Neotree float git_status<CR>', desc = 'Git Status Floating', silent = true },
  },
  opts = {
    filesystem = {
      window = {
        mappings = {
          ['\\'] = 'close_window',
        },
      },
    },
  },
}
