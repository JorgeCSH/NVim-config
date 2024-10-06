-- This file is for us to edit the color scheme
-- global function, there are better ways but...I'll be honest, I know little less the basics of lua
function ColorMyPencils(color)
	color = color or "catppuccin-macchiato"	-- amazing
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(1, "Normal", {bg = "none" })	-- -|--> Here for transparency (in my case I don't like it that much)
	vim.api.nvim_set_hl(1, "NormalFLoat", {bg = "none" })	-- -|
end
ColorMyPencils()
