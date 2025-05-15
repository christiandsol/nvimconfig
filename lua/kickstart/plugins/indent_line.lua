return {
  { -- Add indentation guides even on blank lines
    'lukas-reineke/indent-blankline.nvim',
    -- Enable `lukas-reineke/indent-blankline.nvim`
    -- See `:help ibl`
    main = 'ibl',
    opts = {},
    config = function(_, opts)
      require('ibl').setup {
        indent = { char = '·' },
        whitespace = {
          remove_blankline_trail = false,
        },
        scope = { enabled = false },
      }
    end,
  },
}
