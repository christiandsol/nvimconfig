return {
  {
    'nvim-telescope/telescope-file-browser.nvim',
    dependencies = {
      'nvim-telescope/telescope.nvim',
      'nvim-lua/plenary.nvim',
    },
    config = function()
      local telescope = require 'telescope'
      local fb_actions = require('telescope').extensions.file_browser.actions

      telescope.setup {
        extensions = {
          file_browser = {
            mappings = {
              ['n'] = {
                ['<C-c'] = fb_actions.create, -- custom create key
              },
              ['i'] = {
                ['<C-c>'] = fb_actions.create,
              },
            },
          },
        },
      }

      telescope.load_extension 'file_browser'
    end,
  },
}
