-- Neotree: cursed file explorer
-- #######################################################################################

return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    window = {
      position = "left",
      width = 25,
    },
    filesystem = {
      filtered_items = {
        visible = true,
        show_hidden_count = true,
        hide_dotfiles = false,
        hide_gitignored = true,
        hide_by_name = {
          -- '.git',
          -- 'thumbs.db',
          ".DS_Store",
        },
        never_show = {},
        never_show_by_pattern = { -- uses glob style patterns
          ".null-ls_*",
        },
      },
    },
  },
}
