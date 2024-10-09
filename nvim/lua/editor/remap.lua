-- for mapping
vim.g.mapleader = " "				-- "<leader>" for the next command

vim.keymap.set("n", "<leader>ex", vim.cmd.Ex)	-- "n" for new, "<leader>ex" = space+ex, vim.cmd.Ex = the equivalent command

-- Then you must save (:w), source (:so) and then it will update and the new command will be usable 

-- General commands:
-- If this is a script, make it executable, and execute it in a split pane on the right
-- Had to include quotes around "%" because there are some apple dirs that contain spaces, like iCloud
vim.keymap.set("n", "<leader>f.", function()
  local file = vim.fn.expand("%") -- Get the current file name
  local first_line = vim.fn.getline(1) -- Get the first line of the file
  if string.match(first_line, "^#!/") then -- If first line contains shebang
    local escaped_file = vim.fn.shellescape(file) -- Properly escape the file name for shell commands
    vim.cmd("!chmod +x " .. escaped_file) -- Make the file executable
    vim.cmd("vsplit") -- Split the window vertically
    vim.cmd("terminal " .. escaped_file) -- Open terminal and execute the file
    vim.cmd("startinsert") -- Enter insert mode, recommended by echasnovski on Reddit
  else
    vim.cmd("echo 'Not a script. Shebang line not found.'")
  end
end, { desc = "Execute current file in terminal (if it's a script)" })


