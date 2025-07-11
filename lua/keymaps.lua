-- ===========
-- KEYBINDINGS
-- ===========

-- make sure space bar does not have any other mapping
vim.keymap.set('n', '<SPACE>', '<Nop>')
-- set leader key
vim.g.mapleader = " "

-- saving files
vim.keymap.set('n', '<Leader>s', ':w<CR>')

-- Yank from cursor to the end of line.
vim.keymap.set('n', 'Y', 'y$')

-- Paste from system clipboard
vim.keymap.set('n', '<leader>v', '"+p')

-- Yank from system clipboard
vim.keymap.set('v', '<leader>c', '"+y')

-- Yank line to system clipboard in normal mode
vim.keymap.set('n', '<leader>c', '"+yy')

-- Move the current line down with J.
-- `==` reindents the moved line to match its new context
vim.keymap.set('n', 'J', ':m .+1<CR>==')

-- Move the current line up with K
vim.keymap.set('n', 'K', ':m .-2<CR>==')

-- Move multiple selected lines down with J
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")

-- Move multiple selected lines up with K
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

-- Cycle through buffers
vim.keymap.set('n', '<Leader><Leader>', ":bnext<CR>")


-- ===================
-- PLUGINS KEYBINDINGS
-- ===================

-- FZF 
vim.keymap.set('n', '<C-p>', ':Files<cr>')
vim.keymap.set('n', '<C-t>', ':GFiles<cr>')
-- Search currently open buffers
vim.keymap.set('n', '<Leader>o', ':Buffers<cr>')

-- COC 
vim.keymap.set('n', 'gd', '<Plug>(coc-definition)', { silent = true })
vim.keymap.set('n', 'gD', '<Plug>(coc-implementation)', { silent = true })
vim.keymap.set('n', 'gr', '<Plug>(coc-references)', { silent = true })

-- Ranger
vim.keymap.set('n', '<Leader>r', ':Ranger<cr>')

-- Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fv', builtin.grep_string, { desc = 'Telescope word under cursor' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fc', builtin.commands, { desc = 'Telescope commands' })
vim.keymap.set('n', '<leader>fo', builtin.oldfiles, { desc = 'Telescope oldfiles' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })


return {}
