-- Set: to set up everything we have installed
-- #######################################################################################


-- Activates line number
vim.opt.nu = true
vim.opt.relativenumber = true

-- Range of the tree
vim.opt.swapfile = true
vim.opt.backup = true
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undoir"
vim.opt.undofile = true

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

