vim.g.mapleader = ' '
vim.keymap.set('n', '<leader>pv', function()
  require('oil').open()
end)

vim.keymap.set('n', '<leader>lb', 'i\\begin{itemize}<CR>\\end{itemize}<ESC>O\\item')

vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")
vim.keymap.set('n', 'J', 'mzJ`z')
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

vim.keymap.set('n', '<leader>G', 'ggVG<leader>y')

-- change working directory to buffer's directory
vim.keymap.set('n', '<leader>cw', function()
  local current_file = vim.fn.expand '%:p:h'
  vim.cmd('cd ' .. current_file)
end, { noremap = true, silent = true })
-- Obsiidan specific
vim.keymap.set('n', '<leader>ot', ':ObsidianTemplate Regular<cr>')
vim.keymap.set('n', '<leader>od', ':ObsidianToday<cr>')
vim.keymap.set('n', '<leader>oy', ':ObsidianYesterday<cr>')
vim.keymap.set('n', '<leader>or', ':ObsidianRename<cr>')
vim.keymap.set('n', '<leader>on', ':ObsidianNewFromTemplate ') -- takes path and template
vim.keymap.set('n', '<leader>ob', ':ObsidianBacklinks<cr>') -- takes path and template
vim.keymap.set('n', '<leader>of', ':ObsidianOpen<cr>:!open -a Obsidian<cr>') -- takes path and template

-- strip date from note title and replace dashes with spaces
-- must have cursor on title
-- vim.keymap.set('n', '<leader>of', ':s/\\(# \\)[^_]*_/\\1/ | s/-/ /g<cr>')
-- vim.keymap.set("n", "<leader>vwm", function()
--     require("vim-with-me").StartVimWithMe()
-- end)
-- vim.keymap.set("n", "<leader>svwm", function()
--     require("vim-with-me").StopVimWithMe()
-- end)
-- vim.keymap.set("n", "<leader>q", "\"0p")

--latex specific
-- vim.keymap.set("n", "<leader>li", "i\\begin{itemize}<CR>\\end{itemize}<ESC>O<TAB>\\item")
-- vim.keymap.set("n", "<leader>ls", "i\\section*{}<ESC>i")
-- vim.keymap.set("n", "<leader>lb", "i\\subsection*{}<ESC>i")
-- vim.keymap.set("n", "<leader>lt", "i\\begin{tcolorbox}<CR>\\centering<CR>\\end{tcolorbox}<ESC>O")
-- vim.keymap.set("i", "<C-l>", "\\item ")
-- vim.keymap.set("i", "<C-s>", "\\subitem ")
-- vim.keymap.set("i", "<C-d>", "<ESC>diWi")
-- vim.keymap.set("i", "<C-b>", "\\textbf{")
-- dd a\item  k
--
-- greatest remap ever
vim.keymap.set('x', '<leader>p', [["_dP]])
-- afdsfadfsadfs
-- next greatest remap ever : asbjornHaland
vim.keymap.set({ 'n', 'v' }, '<leader>y', [["+y]])
vim.keymap.set('n', '<leader>Y', [["+Y]])

vim.keymap.set({ 'n', 'v' }, '<leader>d', [["_d]])
-- This is going to get me cancelled
-- vim.keymap.set('n', 'Q', '<nop>')
-- vim.keymap.set('n', '<C-f>', '<cmd>silent !tmux neww tmux-sessionizer<CR>')
vim.keymap.set('n', '<C-m>', '<cmd>Copilot disable<CR>')
vim.keymap.set('n', '<C-c>', '<cmd>Copilot enable<CR>')
vim.keymap.set('n', '<leader>f', vim.lsp.buf.format)

vim.keymap.set('n', '<C-k>', '<cmd>cnext<CR>zz')
vim.keymap.set('n', '<C-j>', '<cmd>cprev<CR>zz')
vim.keymap.set('n', '<leader>k', '<cmd>lnext<CR>zz')
vim.keymap.set('n', '<leader>j', '<cmd>lprev<CR>zz')
--
-- vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
-- vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
--
-- vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.dotfiles/nvim/.config/nvim/lua/theprimeagen/packer.lua<CR>");
-- vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>");
--
--
-- neotree
vim.api.nvim_set_keymap('n', '<leader>k', ':Neotree toggle<CR>', { noremap = true, silent = true })

-- Window management mappings using the existing leader key
-- -- Window management mappings using the existing leader key
vim.keymap.set('n', '<leader>wh', '<C-w>h', { noremap = true })
vim.keymap.set('n', '<leader>wj', '<C-w>j', { noremap = true })
vim.keymap.set('n', '<leader>wk', '<C-w>k', { noremap = true })
vim.keymap.set('n', '<leader>wl', '<C-w>l', { noremap = true })
vim.keymap.set('n', '<leader>ww', '<C-w>w', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>ws', '<C-w>s', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>wx', '<C-w>x', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>wv', '<C-w>v', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>ww', '<C-w>w', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>wt', '<C-w>t', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>wq', '<C-w>q', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>wp', '<C-w>p', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>w+', '<C-w>+', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>w-', '<C-w>-', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>wo', '<C-w>o', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>w<', '<C-w><', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>w>', '<C-w>>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>w_', '<C-w>_', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>w|', '<C-w>|', { noremap = true })

-- compile mode
-- vim.keymap.set('n', '<leader>cp', '<cmd>Compile<CR>')
