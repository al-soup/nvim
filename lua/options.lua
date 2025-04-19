-- =====================
-- GENERAL CONFIGURATION
-- =====================

-- Activate line numbers
vim.opt.number = true

-- Set relative line number
-- vim.opt.relativenumber = true
-- Activate light status bar
vim.opt.laststatus = 2

-- Enables cursor line position tracking
vim.opt.cursorline = true

-- Disable additional infos under status bar
vim.opt.showmode = false

-- open new split panes to right and bottom, which feels more natural
vim.opt.splitbelow = true
vim.opt.splitright = true

-- Ignore case in searches by default
vim.opt.ignorecase = true

-- But make search case sensitive if an uppercase is entered
vim.opt.smartcase = true

-- set language disregrading system defaults
vim.cmd('language en_US.UTF-8')

-- On pressing tab, insert 2 spaces
vim.opt.expandtab = true

-- show existing tab with 2 spaces width
vim.opt.tabstop = 2
vim.opt.softtabstop = 2

-- when indenting with '>', use 2 spaces width
vim.opt.shiftwidth = 2

-- always change to the current file's directory
vim.opt.autochdir = true

-- Setting this font is only for GUI frontent Neovide
vim.opt.guifont = "Monaspace\\ Argon:h14"

-- use trueColors for iTerm
vim.opt.termguicolors = true

-- how long it takes to show git changes
vim.opt.updatetime = 100

-- Enable syntax highlighting
vim.cmd('syntax on')

-- Enable filetype detection for plugins and indentation
vim.cmd('filetype plugin indent on')

return {}
