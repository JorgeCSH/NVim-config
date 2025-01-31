local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out,                            "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  spec = {
    -- add LazyVim and import its plugins
    { "LazyVim/LazyVim", import = "lazyvim.plugins" },
    -- import/override with your plugins
    { import = "plugins" },
  },
  defaults = {
    -- By default, only LazyVim plugins will be lazy-loaded. Your custom plugins will load during startup.
    -- If you know what you're doing, you can set this to `true` to have all your custom plugins lazy-loaded by default.
    lazy = false,
    -- It's recommended to leave version=false for now, since a lot the plugin that support versioning,
    -- have outdated releases, which may break your Neovim install.
    version = false, -- always use the latest git commit
    -- version = "*", -- try installing the latest stable version for plugins that support semver
  },
  install = { colorscheme = { "tokyonight", "habamax" } },
  checker = {
    enabled = true, -- check for plugin updates periodically
    notify = false, -- notify on update
  },                -- automatically check for plugin updates
  performance = {
    rtp = {
      -- disable some rtp plugins
      disabled_plugins = {
        "gzip",
        -- "matchit",
        -- "matchparen",
        -- "netrwPlugin",
        "tarPlugin",
        "tohtml",
        "tutor",
        "zipPlugin",
      },
    },
  },
})

-- ##########################################################################
-- Setup
-- # Undotree setup
--set the window layout to the left/width
vim.g.undotree_WindowLayout = 3
vim.g.undotree_SplitWidth = 30

-- # Neotree setup
-- None

-- Harpoon setup
-- None
-- # Themes setup, here you should include your own config.
-- 1. Onde dark
--require('onedark').load()
-- 2. Cyberdream
--vim.cmd("colorscheme cyberdream")
-- 4. Dracula
-- vim.cmd [[colorscheme dracula]]
-- 5. Cattppucin
-- vim.cmd("colorscheme catppuccin-macchiato")
-- 6. nightfox
require('nightfox').load()

-- # Status line, must be under the theme, if not, the colorscheme will overlap the bar.
-- Custom colors
local crayon_box = {
  mode_blue = '#3089e3',
  mode_green = '#38572a',
  mode_purple = '#6c3c85',
  mode_red = '#82383a',
}

-- Setup the colors of each mode, if not set, neovim will automatically set one.
mode_color = {
  n = crayon_box.mode_blue,   -- Normal mode
  i = crayon_box.mode_green,  -- Insert mode
  v = crayon_box.mode_purple, -- Visual mode
  R = crayon_box.mode_red,    -- Replace mode
}

-- Start statusline  (some custom icons)
require('lualine').setup {
  options = {
    theme = 'auto',
    component_separators = { left = '|', right = '|' },
    section_separators = { left = '', right = '' },
    always_divide_middle = true,
    always_show_tabline = true,
  },
  --[[order:
  -- -----------------------------------------------------------------------------------||
  -- | lualine_a lualine_b lualine_c                 |lualine_x| lualine_y lualine_z||
  -- -----------------------------------------------------------------------------------||
  -- ]]
  sections = {
    lualine_a = { 'mode' },
    lualine_b = { 'branch', 'diff', 'diagnostics' },
    lualine_c = { 'filename', 'filesize' },
    lualine_x = { 'encoding', 'fileformat', 'filetype' },
    lualine_y = { 'progress' },
    lualine_z = { 'location' }
  }
}
