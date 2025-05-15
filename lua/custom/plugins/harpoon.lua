return {
  {
    'theprimeagen/harpoon',
    config = function()
      -- Harpoon configuration (we will add keymaps here)
      require('harpoon').setup()
      -- Harpoon keymaps and guide setup
      vim.keymap.set('n', '<leader>1', function()
        require('harpoon.ui').nav_file(1)
      end, { desc = 'Go to Harpoon mark 1' })
      vim.keymap.set('n', '<leader>2', function()
        require('harpoon.ui').nav_file(2)
      end, { desc = 'Go to Harpoon mark 2' })
      vim.keymap.set('n', '<leader>3', function()
        require('harpoon.ui').nav_file(3)
      end, { desc = 'Go to Harpoon mark 3' })
      vim.keymap.set('n', '<leader>4', function()
        require('harpoon.ui').nav_file(4)
      end, { desc = 'Go to Harpoon mark 4' })
      vim.keymap.set('n', '<leader>5', function()
        require('harpoon.ui').nav_file(5)
      end, { desc = 'Go to Harpoon mark 5' })
      vim.keymap.set('n', '<leader>6', function()
        require('harpoon.ui').nav_file(6)
      end, { desc = 'Go to Harpoon mark 6' })
      vim.keymap.set('n', '<leader>7', function()
        require('harpoon.ui').nav_file(7)
      end, { desc = 'Go to Harpoon mark 7' })
      vim.keymap.set('n', '<leader>8', function()
        require('harpoon.ui').nav_file(8)
      end, { desc = 'Go to Harpoon mark 8' })
      vim.keymap.set('n', '<leader>9', function()
        require('harpoon.ui').nav_file(9)
      end, { desc = 'Go to Harpoon mark 9' })

      vim.keymap.set('n', '<leader>a', function()
        require('harpoon.mark').add_file()
      end, { desc = 'Add current file to Harpoon marks' })

      -- Set up ctrl+e to open Harpoon's guide UI
      vim.keymap.set('n', '<C-H>', function()
        require('harpoon.ui').toggle_quick_menu()
      end, { desc = 'Toggle Harpoon guide' })
    end,
  },
}
