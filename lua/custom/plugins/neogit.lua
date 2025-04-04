-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'NeogitOrg/neogit',
    dependencies = {
      'nvim-lua/plenary.nvim', -- required
      'sindrets/diffview.nvim', -- optional - Diff integration

      -- Only one of these is needed.
      'nvim-telescope/telescope.nvim', -- optional
    },
    config = function()
      local neogit = require 'neogit'

      local function map(mode, l, r, opts)
        opts = opts or {}
        vim.keymap.set(mode, l, r, opts)
      end

      map('n', '<leader>gb', ':Neogit branch<CR>', { desc = 'git [b]ranch' })
      map('n', '<leader>gp', ':Neogit push<CR>', { desc = 'git [p]ush' })
      map('n', '<leader>gf', ':Neogit fetch<CR>', { desc = 'git [f]etch' })
      map('n', '<leader>gc', ':Neogit commit<CR>', { desc = 'git [c]ommit' })
    end,
  },
}
