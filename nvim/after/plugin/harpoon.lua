-- Harpoon package, move between selected files.
-- #######################################################################################


-- We define variables importing the harpoon files.
local mark = require("harpoon.mark")
local ui = require("harpoon.ui")


-- We add a file using <leader> (space) + a
vim.keymap.set("n", "<leader>a", mark.add_file)

-- We open the harpoon menu using ctrl + e
vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)

-- Here we set up fast toggles between the files number 1 to 4
-- file 1 = ctrl + 1
-- file 2 = ctrl + 2
-- file 3 = ctrl + 3
-- file 4 = ctrl + 4
-- You can create your own binds following the same recipe
vim.keymap.set("n", "<C-1>", function() ui.nav_file(1) end)
vim.keymap.set("n", "<C-2>", function() ui.nav_file(2) end)
vim.keymap.set("n", "<C-3>", function() ui.nav_file(3) end)
vim.keymap.set("n", "<C-4>", function() ui.nav_file(4) end)
