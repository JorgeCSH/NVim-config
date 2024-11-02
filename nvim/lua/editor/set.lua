-- Set: to set up everything we have installed
-- #######################################################################################

-- Activates line number
vim.opt.nu = true
vim.opt.relativenumber = true

-- Range of the tree/backup
-- Edit: not only the tree, also the backup files (also in the same directori nvim)
vim.opt.swapfile = false

vim.opt.backup = false

vim.opt.undofile = false

-- Highlights
vim.opt.hlsearch = true
vim.opt.incsearch = true

-- COLOOOOOORS
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

-- Update time
vim.opt.updatetime = 50

-- color for the columns
vim.opt.colorcolumn = "160"

-- leaderkey
vim.g.mapleader = " "

-- For Icons
vim.opt.guifont = "FiraCode Nerd Font:h12"

-- Devicons
vim.g.webdevicons_enable = true
