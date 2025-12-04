return {
  --   -- Lazy
  --   {
  --     'vague2k/vague.nvim',
  --     config = function()
  --       -- NOTE: you do not need to call setup if you don't want to.
  --       require('vague').setup {
  --         -- optional configuration here
  --       }
  --       vim.cmd.colorschem 'vague'
  --     end,
  --   },
  --
  --

  -- {
  --   'folke/tokyonight.nvim',
  --   lazy = false,
  --   priority = 1000,
  --   opts = {},
  --   config = function()
  --     -- Load the colorscheme here.
  --     -- Like many other themes, this one has different styles, and you could load
  --     -- any other, such as 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.
  --     require('tokyonight').setup {
  --       style = 'night',
  --       styles = {
  --         comments = { italic = false }, -- Disable italics in comments
  --       },
  --       on_colors = function(colors)
  --         colors.bg = '#191724'
  --       end,
  --       on_highlights = function(highlights, colors)
  --         highlights.String = { fg = '#ff757f' } -- Replace with your desired color
  --         highlights.Function = { fg = '#4fd6be' } -- Replace with your desired color
  --       end,
  --     }
  --
  --     vim.cmd.colorscheme 'tokyonight-night'
  --   end,
  -- },
  'folke/tokyonight.nvim',
  priority = 1000, -- Make sure to load this before all the other start plugins.
  config = function()
    local base = '#191724'
    local surface = '#1f1d2e'
    local overlay = '#26233a'
    local muted = '#6e6a86'
    local subtle = '#908caa'
    local text = '#e0def4'
    local love = '#eb6f92'
    local gold = '#f6c177'
    local rose = '#ebbcba'
    local pine = '#31748f'
    local foam = '#9ccfd8'
    local iris = '#c4a7e7'
    local highlight_low = '#21202e'
    local highlight_med = '#403d52'
    local highlight_high = '#524f67'

    ---@diagnostic disable-next-line: missing-fields
    require('tokyonight').setup {
      styles = {
        comments = { italic = false }, -- Disable italics in comments
      },
      on_colors = function(colors)
        -- colors.bg = base
        -- colors.popup = surface
        -- colors.popup = surface
        colors.green1 = '#31748f'
        colors.green = '#f6c177'
        colors.magenta = '#783E55'
        colors.blue = '#c4a7e7'
      end,
    }

    on_highlights =
      function(hl, colors)
        hl.Normal = { bg = colors.bg, fg = colors.fg }
        hl.StatusLine = { bg = colors.bg_dark, fg = colors.fg }
        hl.FloatBorder = { bg = colors.bg_float, fg = colors.fg_dark }
        hl.Constant = {
          fg = rose, -- change this to your desired color
          bold = false,
        }
        -- You can override any highlight group you want here!
      end,
      -- Load the colorscheme here.
      -- Like many other themes, this one has different styles, and you could load
      -- any other, such as 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.
      vim.cmd.colorscheme 'tokyonight-night'
    vim.api.nvim_set_hl(0, '@function', { fg = rose })
    vim.api.nvim_set_hl(0, '@function.builtin', { fg = love })
    vim.api.nvim_set_hl(0, '@function.builtin', { fg = love })
    vim.api.nvim_set_hl(0, '@keyword', { fg = pine })
    vim.api.nvim_set_hl(0, '@keyword.conditional.lua', { fg = pine })

    vim.api.nvim_set_hl(0, '@keyword.function', { fg = pine })
    vim.api.nvim_set_hl(0, '@type.definition', { fg = pine })
    vim.api.nvim_set_hl(0, '@lsp.type.parameter', { fg = iris })
    vim.api.nvim_set_hl(0, '@variable.parameter', { fg = iris })
    vim.api.nvim_set_hl(0, '@variable.parameter', { fg = iris })
    vim.api.nvim_set_hl(0, '@punctuation.bracket', { fg = '#31758F' })
    vim.api.nvim_set_hl(0, '@punctuation.bracket.python', { fg = '#783E55' })
    vim.api.nvim_set_hl(0, '@variable.member.lua', { fg = iris })

    vim.api.nvim_set_hl(0, '@constant.builtin', { fg = pine })
    vim.api.nvim_set_hl(0, '@type.builtin', { fg = pine })
    vim.api.nvim_set_hl(0, '@keyword.repeat.python', { fg = pine })
    vim.api.nvim_set_hl(0, '@keyword.conditional.python', { fg = pine })
    vim.api.nvim_set_hl(0, '@boolean.python', { fg = rose })
    vim.api.nvim_set_hl(0, '@keyword.conditional.arduino', { fg = pine })
    vim.api.nvim_set_hl(0, '@keyword.conditional.arduino', { fg = pine })
    vim.api.nvim_set_hl(0, 'TreesitterContext', { bg = surface }) -- example from Tokyo Night

    vim.api.nvim_set_hl(0, 'CursorLine', { bg = '#1f1d2e' }) -- darker than background

    vim.api.nvim_set_hl(0, '@constructor.python', { fg = iris }) -- darker than background

    vim.api.nvim_set_hl(0, 'Constant', { fg = rose, bold = false })
    vim.api.nvim_set_hl(0, 'Type', { fg = foam, bold = false })

    -- lsp specific
    -- cpp
    -- Color the member variable access (e.g., alu_src)
    vim.api.nvim_set_hl(0, '@keyword.conditional.cpp', { fg = love })
    vim.api.nvim_set_hl(0, '@keyword.repeat.cpp', { fg = love })
    vim.api.nvim_set_hl(0, '@type.builtin.cpp', { fg = love })

    vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
    vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
    vim.api.nvim_set_hl(0, 'FloatBorder', { bg = 'none' })
    vim.api.nvim_set_hl(0, 'Pmenu', { bg = 'none' })
    vim.api.nvim_set_hl(0, 'NormalNC', { bg = 'none' })

    -- vim.api.nvim_set_hl(0, ', { fg = pine })
  end,
}
