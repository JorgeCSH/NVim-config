-- Telescope: fast fuzzy finder, fast version of neotree
-- #######################################################################################
-- Here we remap/create keybinds for telescope, remember to source using :so


-- We call the package as a local variable
local builtin = require('telescope.builtin')


-- When we type pf for "project files" we open the project files
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})

-- Allows to have a git file search using ctrl+p
vim.keymap.set('n', '<C-p>', builtin.git_files, {})

-- ps for project source, "search words", yes, we cal also use functions 
vim.keymap.set('n', '<leader>ps', function() 
	builtin.grep_string({ search = vim.fn.input("Grep > ") });

end)

