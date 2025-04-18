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

return {}
