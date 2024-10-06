-- Here we remap/create keybinds for telescope, remember to source using :so
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {}) 		-- when we type pf for "project files" we open the project files
vim.keymap.set('n', '<C-p>', builtin.git_files, {})	 		-- Allows to have a git file search using ctrl+p
vim.keymap.set('n', '<leader>ps', function()  				-- ps for project source, "search words" 
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)

