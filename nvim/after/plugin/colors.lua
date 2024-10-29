-- colors: file created to set up main theme.
-- #######################################################################################


-- This file is for us to edit the color scheme
-- global function, there are better ways but...I'll be honest, I know little less the basics of lua
function ColorMyPencils(color)
	-- We set color scheme
	color = color or "catppuccin-macchiato"
	vim.cmd.colorscheme(color)
	
	-- We set the transparency (0 or 1)
	vim.api.nvim_set_hl(0, "Normal", {bg = "none" })	
	vim.api.nvim_set_hl(0, "NormalFLoat", {bg = "none" })	
end
ColorMyPencils()
