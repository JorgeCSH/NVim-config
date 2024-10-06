
-- Activates line number
vim.opt.nu = true
vim.opt.relativenumber = false

-- Range of the tree
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undoir"
vim.opt.undofile = true

-- Highlights
vim.opt.hlsearch = false
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

