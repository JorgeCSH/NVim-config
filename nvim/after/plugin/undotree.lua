-- Undotree: changes history positiones as a tree
-- #######################################################################################


-- Remap to open undo tree, we must press <leader> (space)+u.
vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeShow)

-- Focus undo tree, in this case <leader> (space)+o.
vim.keymap.set("n", "<leader>o", vim.cmd.UndotreeHide)

