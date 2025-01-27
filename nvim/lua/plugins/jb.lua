-- Extra theme 3: jetbrains style
-- #######################################################################################

return {
  "nickkadutskyi/jb.nvim",
  lazy = false,
  priority = 1000,
  opts = {},
  config = function()
    -- require("jb").setup({transparent = true})
    vim.cmd("colorscheme jb")
  end,
}

--[[
Extra:
This was the theme that screw the
--]]
