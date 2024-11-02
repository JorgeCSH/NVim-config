-- Undotree: changes history positiones as a tree
-- #######################################################################################

-- Remap to open undo tree, we must press <leader> (space)+u.
vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeShow)

-- Focus undo tree, in this case <leader> (space)+o.
vim.keymap.set("n", "<leader>o", vim.cmd.UndotreeHide)

--set the window layout to the left
vim.g.undotree_Window_Layout = 3
vim.g.undotree_splitWidth = 25 --
