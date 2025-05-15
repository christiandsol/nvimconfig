return {
  {
    'danymat/neogen',
    config = true,
    vim.keymap.set('n', '<leader>nf', function()
      require('neogen').generate { type = 'func' }
    end, { desc = 'Generate documentation for function' }),

    vim.keymap.set('n', '<leader>nc', function()
      require('neogen').generate { type = 'class' }
    end, { desc = 'Generate documentation for class' }),

    vim.keymap.set('n', '<leader>nt', function()
      require('neogen').generate { type = 'type' }
    end, { desc = 'Generate documentation for type' }),

    vim.keymap.set('n', '<leader>nF', function()
      require('neogen').generate { type = 'file' }
    end, { desc = 'Generate documentation for file' }),
    -- Uncomment next line if you want to follow only stable versions
    -- version = "*"
  },
}
