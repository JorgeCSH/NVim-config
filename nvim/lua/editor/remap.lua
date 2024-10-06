-- for mapping
vim.g.mapleader = " "				-- "<leader>" for the next command
vim.keymap.set("n", "<leader>ex", vim.cmd.Ex)	-- "n" for new, "<leader>ex" = space+ex, vim.cmd.Ex = the equivalent command
-- Then you must save (:w), source (:so) and then it will update and the new command will be usable 

