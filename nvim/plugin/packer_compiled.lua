-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/jorge/.cache/nvim/packer_hererocks/2.1.1725453128/share/lua/5.1/?.lua;/home/jorge/.cache/nvim/packer_hererocks/2.1.1725453128/share/lua/5.1/?/init.lua;/home/jorge/.cache/nvim/packer_hererocks/2.1.1725453128/lib/luarocks/rocks-5.1/?.lua;/home/jorge/.cache/nvim/packer_hererocks/2.1.1725453128/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/jorge/.cache/nvim/packer_hererocks/2.1.1725453128/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["alpha-nvim"] = {
    config = { "\27LJ\2\na\0\0\5\0\5\0\n6\0\0\0'\2\1\0B\0\2\0029\0\2\0006\2\0\0'\4\3\0B\2\2\0029\2\4\2B\0\2\1K\0\1\0\vconfig\27alpha.themes.dashboard\nsetup\nalpha\frequire\0" },
    loaded = true,
    path = "/home/jorge/.local/share/nvim/site/pack/packer/start/alpha-nvim",
    url = "https://github.com/goolord/alpha-nvim"
  },
  catppuccin = {
    config = { "\27LJ\2\nD\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0%colorscheme catppuccin-macchiato\bcmd\bvim\0" },
    loaded = true,
    path = "/home/jorge/.local/share/nvim/site/pack/packer/start/catppuccin",
    url = "https://github.com/catppuccin/nvim"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/jorge/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  harpoon = {
    loaded = true,
    path = "/home/jorge/.local/share/nvim/site/pack/packer/start/harpoon",
    url = "https://github.com/ThePrimeagen/harpoon"
  },
  ["lsp-zero.nvim"] = {
    loaded = true,
    path = "/home/jorge/.local/share/nvim/site/pack/packer/start/lsp-zero.nvim",
    url = "https://github.com/VonHeikemen/lsp-zero.nvim"
  },
  ["mini.icons"] = {
    loaded = true,
    path = "/home/jorge/.local/share/nvim/site/pack/packer/start/mini.icons",
    url = "https://github.com/echasnovski/mini.icons"
  },
  ["neo-tree.nvim"] = {
    config = { "\27LJ\2\nœ\1\0\3\t\0\n\0\0309\3\0\1\6\3\1\0X\3\3Ä9\3\0\1\a\3\2\0X\3\23Ä6\3\3\0006\5\4\0'\6\5\0B\3\3\0039\5\0\1\a\5\2\0X\5\2Ä'\5\2\0X\6\1Ä9\5\6\1\15\0\3\0X\6\vÄ9\6\a\4\18\b\5\0B\6\2\3\f\b\6\0X\b\1Ä9\b\b\0=\b\b\0\f\b\a\0X\b\1Ä9\b\t\0=\b\t\0K\0\1\0\14highlight\ttext\rget_icon\tname\22nvim-web-devicons\frequire\npcall\rterminal\tfile\ttypeﬂ%\1\0\b\0y\0Ø\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0005\3\4\0B\0\3\0016\0\0\0009\0\1\0009\0\2\0'\2\5\0005\3\6\0B\0\3\0016\0\0\0009\0\1\0009\0\2\0'\2\a\0005\3\b\0B\0\3\0016\0\0\0009\0\1\0009\0\2\0'\2\t\0005\3\n\0B\0\3\0016\0\v\0'\2\f\0B\0\2\0029\0\r\0005\2\14\0005\3\15\0=\3\16\0025\3\18\0005\4\17\0=\4\19\0035\4\20\0=\4\21\0035\4\22\0003\5\23\0=\5\24\4=\4\25\0035\4\26\0=\4\27\0035\4\28\0=\4\29\0035\4\31\0005\5\30\0=\5 \4=\4!\0035\4\"\0=\4#\0035\4$\0=\4%\0035\4&\0=\4'\0035\4(\0=\4)\0035\4*\0=\4+\3=\3,\0024\3\0\0=\3-\0025\3.\0005\4/\0=\0040\0035\0042\0005\0051\0=\0053\0045\0054\0005\0065\0=\0066\5=\0057\0045\0058\0005\0069\0=\0066\5=\5:\4=\4;\3=\3<\0024\3\0\0=\3=\0025\3E\0005\4>\0004\5\0\0=\5?\0044\5\0\0=\5@\0044\5\0\0=\5A\0044\5\0\0=\5B\0044\5\0\0=\5C\0044\5\0\0=\5D\4=\4F\0035\4G\0=\4H\0035\4[\0005\5I\0005\6J\0005\aK\0=\a6\6=\6L\0055\6M\0=\6N\0055\6O\0=\6P\0055\6Q\0=\6R\0055\6S\0=\6T\0055\6U\0=\6V\0055\6W\0=\6X\0055\6Y\0=\6Z\5=\5;\0045\5\\\0=\5]\4=\4<\0034\4\0\0=\4-\3=\3^\0025\3`\0005\4_\0=\4H\0035\4j\0005\5a\0005\6b\0005\ac\0=\a6\6=\6L\0055\6d\0=\6N\0055\6e\0=\6P\0055\6f\0=\6T\0055\6g\0=\6V\0055\6h\0=\6X\0055\6i\0=\6Z\5=\5;\4=\4<\3=\3k\0025\3v\0005\4l\0005\5m\0005\6n\0005\ao\0=\a6\6=\6L\0055\6p\0=\6N\0055\6q\0=\6P\0055\6r\0=\6T\0055\6s\0=\6V\0055\6t\0=\6X\0055\6u\0=\6Z\5=\5;\4=\4<\3=\3!\2B\0\2\0016\0\0\0009\0w\0'\2x\0B\0\2\1K\0\1\0#nnoremap \\ :Neotree reveal<cr>\bcmd\1\0\1\vwindow\0\1\2\1\0\18order_by_type\vnowait\1\1\2\1\0\18order_by_size\vnowait\1\1\2\1\0\18order_by_name\vnowait\1\1\2\1\0\22order_by_modified\vnowait\1\1\2\1\0\25order_by_diagnostics\vnowait\1\1\2\1\0\21order_by_created\vnowait\1\1\0\2\15prefix_key\6o\ntitle\rOrder by\1\2\2\0\14show_help\vconfig\0\vnowait\1\1\0\14\agu\21git_unstage_file\agc\15git_commit\aom\0\6o\0\aon\0\6A\16git_add_all\aod\0\agg\24git_commit_and_push\aoc\0\agp\rgit_push\aos\0\aot\0\agr\20git_revert_file\aga\17git_add_file\1\0\2\rposition\nfloat\rmappings\0\fbuffers\1\0\1\rmappings\0\1\2\1\0\18order_by_type\vnowait\1\1\2\1\0\18order_by_size\vnowait\1\1\2\1\0\18order_by_name\vnowait\1\1\2\1\0\22order_by_modified\vnowait\1\1\2\1\0\25order_by_diagnostics\vnowait\1\1\2\1\0\21order_by_created\vnowait\1\1\0\2\15prefix_key\6o\ntitle\rOrder by\1\2\2\0\14show_help\vconfig\0\vnowait\1\1\0\n\t<bs>\16navigate_up\aod\0\aom\0\abd\18buffer_delete\6.\rset_root\aot\0\aon\0\aoc\0\aos\0\6o\0\1\0\4\24follow_current_file\0\18show_unloaded\2\21group_empty_dirs\2\vwindow\0\1\0\2\20leave_dirs_open\1\fenabled\2\15filesystem\26fuzzy_finder_mappings\1\0\4\t<up>\19move_cursor_up\n<C-n>\21move_cursor_down\n<C-p>\19move_cursor_up\v<down>\21move_cursor_down\1\0\2\rmappings\0\26fuzzy_finder_mappings\0\aot\1\2\1\0\18order_by_type\vnowait\1\aos\1\2\1\0\18order_by_size\vnowait\1\aon\1\2\1\0\18order_by_name\vnowait\1\aom\1\2\1\0\22order_by_modified\vnowait\1\aog\1\2\1\0\24order_by_git_status\vnowait\1\aod\1\2\1\0\25order_by_diagnostics\vnowait\1\aoc\1\2\1\0\21order_by_created\vnowait\1\6o\1\0\2\15prefix_key\6o\ntitle\rOrder by\1\2\2\0\14show_help\vconfig\0\vnowait\1\1\0\18\a[g\22prev_git_modified\6#\17fuzzy_sorter\aom\0\6.\rset_root\aog\0\aod\0\aon\0\aoc\0\6D\27fuzzy_finder_directory\a]g\22next_git_modified\6o\0\6H\18toggle_hidden\n<c-x>\17clear_filter\t<bs>\16navigate_up\6f\21filter_on_submit\6/\17fuzzy_finder\aos\0\aot\0\24follow_current_file\1\0\2\20leave_dirs_open\1\fenabled\1\19filtered_items\1\0\a\24follow_current_file\0\27use_libuv_file_watcher\1\rcommands\0\19filtered_items\0\26hijack_netrw_behavior\17open_default\21group_empty_dirs\1\vwindow\0\26never_show_by_pattern\15never_show\27always_show_by_pattern\16always_show\20hide_by_pattern\17hide_by_name\1\0\n\20hide_gitignored\2\18hide_dotfiles\2\fvisible\1\26never_show_by_pattern\0\15never_show\0\27always_show_by_pattern\0\16always_show\0\20hide_by_pattern\0\17hide_by_name\0\16hide_hidden\2\18nesting_rules\vwindow\rmappings\6a\1\0\1\14show_path\tnone\1\2\1\0\badd\vconfig\0\6P\vconfig\1\0\2\19use_image_nvim\2\14use_float\2\1\2\1\0\19toggle_preview\vconfig\0\f<space>\1\0\27\6y\22copy_to_clipboard\6r\vrename\6t\16open_tabnew\6d\vdelete\6S\15open_split\6P\0\6l\18focus_preview\6A\18add_directory\6R\frefresh\6a\0\6c\tcopy\6z\20close_all_nodes\6?\14show_help\6x\21cut_to_clipboard\6s\16open_vsplit\6C\15close_node\6w\28open_with_window_picker\6<\16prev_source\6i\22show_file_details\6>\16next_source\n<esc>\vcancel\t<cr>\topen\18<2-LeftMouse>\topen\f<space>\0\6q\17close_window\6m\tmove\6p\25paste_from_clipboard\1\2\1\0\16toggle_node\vnowait\1\20mapping_options\1\0\2\vnowait\2\fnoremap\2\1\0\4\nwidth\3(\20mapping_options\0\rposition\tleft\rmappings\0\rcommands\30default_component_configs\19symlink_target\1\0\1\fenabled\1\fcreated\1\0\2\19required_width\3n\fenabled\2\18last_modified\1\0\2\19required_width\3X\fenabled\2\ttype\1\0\2\19required_width\3z\fenabled\2\14file_size\1\0\2\19required_width\3@\fenabled\2\15git_status\fsymbols\1\0\1\fsymbols\0\1\0\t\14untracked\bÔÑ®\frenamed\tÛ∞Åï\fdeleted\b‚úñ\nadded\5\rconflict\bÓúß\vstaged\bÔÅÜ\runstaged\tÛ∞Ñ±\rmodified\5\fignored\bÔë¥\tname\1\0\3\14highlight\20NeoTreeFileName\26use_git_status_colors\2\19trailing_slash\1\rmodified\1\0\2\14highlight\20NeoTreeModified\vsymbol\b[+]\ticon\rprovider\0\1\0\6\fdefault\6*\17folder_empty\tÛ∞úå\14highlight\20NeoTreeFileIcon\16folder_open\bÓóæ\18folder_closed\bÓóø\rprovider\0\vindent\1\0\t\23expander_highlight\20NeoTreeExpander\14highlight\24NeoTreeIndentMarker\22expander_expanded\bÔëº\23expander_collapsed\bÔë†\23last_indent_marker\b‚îî\18indent_marker\b‚îÇ\17with_markers\2\fpadding\3\1\16indent_size\3\2\14container\1\0\v\14file_size\0\19symlink_target\0\fcreated\0\18last_modified\0\vindent\0\ttype\0\15git_status\0\tname\0\rmodified\0\ticon\0\14container\0\1\0\1\26enable_character_fade\2$open_files_do_not_replace_types\1\4\0\0\rterminal\ftrouble\aqf\1\0\r\rcommands\0\18nesting_rules\0\26sort_case_insensitive\1\30default_component_configs\0\15filesystem\0$open_files_do_not_replace_types\0\23enable_diagnostics\2\22enable_git_status\2\fbuffers\0\23popup_border_style\frounded\25close_if_last_window\1\15git_status\0\vwindow\0\nsetup\rneo-tree\frequire\1\0\2\ttext\tÛ∞åµ\vtexthl\23DiagnosticSignHint\23DiagnosticSignHint\1\0\2\ttext\tÔÅö \vtexthl\23DiagnosticSignInfo\23DiagnosticSignInfo\1\0\2\ttext\tÔÅ± \vtexthl\23DiagnosticSignWarn\23DiagnosticSignWarn\1\0\2\ttext\tÔÅó \vtexthl\24DiagnosticSignError\24DiagnosticSignError\16sign_define\afn\bvim\0" },
    loaded = true,
    path = "/home/jorge/.local/share/nvim/site/pack/packer/start/neo-tree.nvim",
    url = "https://github.com/nvim-neo-tree/neo-tree.nvim"
  },
  ["nui.nvim"] = {
    loaded = true,
    path = "/home/jorge/.local/share/nvim/site/pack/packer/start/nui.nvim",
    url = "https://github.com/MunifTanjim/nui.nvim"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/home/jorge/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/jorge/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/jorge/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/jorge/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/nvim-tree/nvim-web-devicons"
  },
  ["nvim-window-picker"] = {
    config = { "\27LJ\2\nå\2\0\0\6\0\f\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\n\0005\3\3\0005\4\5\0005\5\4\0=\5\6\0045\5\a\0=\5\b\4=\4\t\3=\3\v\2B\0\2\1K\0\1\0\17filter_rules\1\0\1\17filter_rules\0\abo\fbuftype\1\3\0\0\rterminal\rquickfix\rfiletype\1\0\2\fbuftype\0\rfiletype\0\1\4\0\0\rneo-tree\19neo-tree-popup\vnotify\1\0\3\abo\0\19autoselect_one\2\24include_current_win\1\nsetup\18window-picker\frequire\0" },
    loaded = true,
    path = "/home/jorge/.local/share/nvim/site/pack/packer/start/nvim-window-picker",
    url = "https://github.com/s1n7ax/nvim-window-picker"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/jorge/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  playground = {
    loaded = true,
    path = "/home/jorge/.local/share/nvim/site/pack/packer/start/playground",
    url = "https://github.com/nvim-treesitter/playground"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/jorge/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/jorge/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  undotree = {
    loaded = true,
    path = "/home/jorge/.local/share/nvim/site/pack/packer/start/undotree",
    url = "https://github.com/mbbill/undotree"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/home/jorge/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: neo-tree.nvim
time([[Config for neo-tree.nvim]], true)
try_loadstring("\27LJ\2\nœ\1\0\3\t\0\n\0\0309\3\0\1\6\3\1\0X\3\3Ä9\3\0\1\a\3\2\0X\3\23Ä6\3\3\0006\5\4\0'\6\5\0B\3\3\0039\5\0\1\a\5\2\0X\5\2Ä'\5\2\0X\6\1Ä9\5\6\1\15\0\3\0X\6\vÄ9\6\a\4\18\b\5\0B\6\2\3\f\b\6\0X\b\1Ä9\b\b\0=\b\b\0\f\b\a\0X\b\1Ä9\b\t\0=\b\t\0K\0\1\0\14highlight\ttext\rget_icon\tname\22nvim-web-devicons\frequire\npcall\rterminal\tfile\ttypeﬂ%\1\0\b\0y\0Ø\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0005\3\4\0B\0\3\0016\0\0\0009\0\1\0009\0\2\0'\2\5\0005\3\6\0B\0\3\0016\0\0\0009\0\1\0009\0\2\0'\2\a\0005\3\b\0B\0\3\0016\0\0\0009\0\1\0009\0\2\0'\2\t\0005\3\n\0B\0\3\0016\0\v\0'\2\f\0B\0\2\0029\0\r\0005\2\14\0005\3\15\0=\3\16\0025\3\18\0005\4\17\0=\4\19\0035\4\20\0=\4\21\0035\4\22\0003\5\23\0=\5\24\4=\4\25\0035\4\26\0=\4\27\0035\4\28\0=\4\29\0035\4\31\0005\5\30\0=\5 \4=\4!\0035\4\"\0=\4#\0035\4$\0=\4%\0035\4&\0=\4'\0035\4(\0=\4)\0035\4*\0=\4+\3=\3,\0024\3\0\0=\3-\0025\3.\0005\4/\0=\0040\0035\0042\0005\0051\0=\0053\0045\0054\0005\0065\0=\0066\5=\0057\0045\0058\0005\0069\0=\0066\5=\5:\4=\4;\3=\3<\0024\3\0\0=\3=\0025\3E\0005\4>\0004\5\0\0=\5?\0044\5\0\0=\5@\0044\5\0\0=\5A\0044\5\0\0=\5B\0044\5\0\0=\5C\0044\5\0\0=\5D\4=\4F\0035\4G\0=\4H\0035\4[\0005\5I\0005\6J\0005\aK\0=\a6\6=\6L\0055\6M\0=\6N\0055\6O\0=\6P\0055\6Q\0=\6R\0055\6S\0=\6T\0055\6U\0=\6V\0055\6W\0=\6X\0055\6Y\0=\6Z\5=\5;\0045\5\\\0=\5]\4=\4<\0034\4\0\0=\4-\3=\3^\0025\3`\0005\4_\0=\4H\0035\4j\0005\5a\0005\6b\0005\ac\0=\a6\6=\6L\0055\6d\0=\6N\0055\6e\0=\6P\0055\6f\0=\6T\0055\6g\0=\6V\0055\6h\0=\6X\0055\6i\0=\6Z\5=\5;\4=\4<\3=\3k\0025\3v\0005\4l\0005\5m\0005\6n\0005\ao\0=\a6\6=\6L\0055\6p\0=\6N\0055\6q\0=\6P\0055\6r\0=\6T\0055\6s\0=\6V\0055\6t\0=\6X\0055\6u\0=\6Z\5=\5;\4=\4<\3=\3!\2B\0\2\0016\0\0\0009\0w\0'\2x\0B\0\2\1K\0\1\0#nnoremap \\ :Neotree reveal<cr>\bcmd\1\0\1\vwindow\0\1\2\1\0\18order_by_type\vnowait\1\1\2\1\0\18order_by_size\vnowait\1\1\2\1\0\18order_by_name\vnowait\1\1\2\1\0\22order_by_modified\vnowait\1\1\2\1\0\25order_by_diagnostics\vnowait\1\1\2\1\0\21order_by_created\vnowait\1\1\0\2\15prefix_key\6o\ntitle\rOrder by\1\2\2\0\14show_help\vconfig\0\vnowait\1\1\0\14\agu\21git_unstage_file\agc\15git_commit\aom\0\6o\0\aon\0\6A\16git_add_all\aod\0\agg\24git_commit_and_push\aoc\0\agp\rgit_push\aos\0\aot\0\agr\20git_revert_file\aga\17git_add_file\1\0\2\rposition\nfloat\rmappings\0\fbuffers\1\0\1\rmappings\0\1\2\1\0\18order_by_type\vnowait\1\1\2\1\0\18order_by_size\vnowait\1\1\2\1\0\18order_by_name\vnowait\1\1\2\1\0\22order_by_modified\vnowait\1\1\2\1\0\25order_by_diagnostics\vnowait\1\1\2\1\0\21order_by_created\vnowait\1\1\0\2\15prefix_key\6o\ntitle\rOrder by\1\2\2\0\14show_help\vconfig\0\vnowait\1\1\0\n\t<bs>\16navigate_up\aod\0\aom\0\abd\18buffer_delete\6.\rset_root\aot\0\aon\0\aoc\0\aos\0\6o\0\1\0\4\24follow_current_file\0\18show_unloaded\2\21group_empty_dirs\2\vwindow\0\1\0\2\20leave_dirs_open\1\fenabled\2\15filesystem\26fuzzy_finder_mappings\1\0\4\t<up>\19move_cursor_up\n<C-n>\21move_cursor_down\n<C-p>\19move_cursor_up\v<down>\21move_cursor_down\1\0\2\rmappings\0\26fuzzy_finder_mappings\0\aot\1\2\1\0\18order_by_type\vnowait\1\aos\1\2\1\0\18order_by_size\vnowait\1\aon\1\2\1\0\18order_by_name\vnowait\1\aom\1\2\1\0\22order_by_modified\vnowait\1\aog\1\2\1\0\24order_by_git_status\vnowait\1\aod\1\2\1\0\25order_by_diagnostics\vnowait\1\aoc\1\2\1\0\21order_by_created\vnowait\1\6o\1\0\2\15prefix_key\6o\ntitle\rOrder by\1\2\2\0\14show_help\vconfig\0\vnowait\1\1\0\18\a[g\22prev_git_modified\6#\17fuzzy_sorter\aom\0\6.\rset_root\aog\0\aod\0\aon\0\aoc\0\6D\27fuzzy_finder_directory\a]g\22next_git_modified\6o\0\6H\18toggle_hidden\n<c-x>\17clear_filter\t<bs>\16navigate_up\6f\21filter_on_submit\6/\17fuzzy_finder\aos\0\aot\0\24follow_current_file\1\0\2\20leave_dirs_open\1\fenabled\1\19filtered_items\1\0\a\24follow_current_file\0\27use_libuv_file_watcher\1\rcommands\0\19filtered_items\0\26hijack_netrw_behavior\17open_default\21group_empty_dirs\1\vwindow\0\26never_show_by_pattern\15never_show\27always_show_by_pattern\16always_show\20hide_by_pattern\17hide_by_name\1\0\n\20hide_gitignored\2\18hide_dotfiles\2\fvisible\1\26never_show_by_pattern\0\15never_show\0\27always_show_by_pattern\0\16always_show\0\20hide_by_pattern\0\17hide_by_name\0\16hide_hidden\2\18nesting_rules\vwindow\rmappings\6a\1\0\1\14show_path\tnone\1\2\1\0\badd\vconfig\0\6P\vconfig\1\0\2\19use_image_nvim\2\14use_float\2\1\2\1\0\19toggle_preview\vconfig\0\f<space>\1\0\27\6y\22copy_to_clipboard\6r\vrename\6t\16open_tabnew\6d\vdelete\6S\15open_split\6P\0\6l\18focus_preview\6A\18add_directory\6R\frefresh\6a\0\6c\tcopy\6z\20close_all_nodes\6?\14show_help\6x\21cut_to_clipboard\6s\16open_vsplit\6C\15close_node\6w\28open_with_window_picker\6<\16prev_source\6i\22show_file_details\6>\16next_source\n<esc>\vcancel\t<cr>\topen\18<2-LeftMouse>\topen\f<space>\0\6q\17close_window\6m\tmove\6p\25paste_from_clipboard\1\2\1\0\16toggle_node\vnowait\1\20mapping_options\1\0\2\vnowait\2\fnoremap\2\1\0\4\nwidth\3(\20mapping_options\0\rposition\tleft\rmappings\0\rcommands\30default_component_configs\19symlink_target\1\0\1\fenabled\1\fcreated\1\0\2\19required_width\3n\fenabled\2\18last_modified\1\0\2\19required_width\3X\fenabled\2\ttype\1\0\2\19required_width\3z\fenabled\2\14file_size\1\0\2\19required_width\3@\fenabled\2\15git_status\fsymbols\1\0\1\fsymbols\0\1\0\t\14untracked\bÔÑ®\frenamed\tÛ∞Åï\fdeleted\b‚úñ\nadded\5\rconflict\bÓúß\vstaged\bÔÅÜ\runstaged\tÛ∞Ñ±\rmodified\5\fignored\bÔë¥\tname\1\0\3\14highlight\20NeoTreeFileName\26use_git_status_colors\2\19trailing_slash\1\rmodified\1\0\2\14highlight\20NeoTreeModified\vsymbol\b[+]\ticon\rprovider\0\1\0\6\fdefault\6*\17folder_empty\tÛ∞úå\14highlight\20NeoTreeFileIcon\16folder_open\bÓóæ\18folder_closed\bÓóø\rprovider\0\vindent\1\0\t\23expander_highlight\20NeoTreeExpander\14highlight\24NeoTreeIndentMarker\22expander_expanded\bÔëº\23expander_collapsed\bÔë†\23last_indent_marker\b‚îî\18indent_marker\b‚îÇ\17with_markers\2\fpadding\3\1\16indent_size\3\2\14container\1\0\v\14file_size\0\19symlink_target\0\fcreated\0\18last_modified\0\vindent\0\ttype\0\15git_status\0\tname\0\rmodified\0\ticon\0\14container\0\1\0\1\26enable_character_fade\2$open_files_do_not_replace_types\1\4\0\0\rterminal\ftrouble\aqf\1\0\r\rcommands\0\18nesting_rules\0\26sort_case_insensitive\1\30default_component_configs\0\15filesystem\0$open_files_do_not_replace_types\0\23enable_diagnostics\2\22enable_git_status\2\fbuffers\0\23popup_border_style\frounded\25close_if_last_window\1\15git_status\0\vwindow\0\nsetup\rneo-tree\frequire\1\0\2\ttext\tÛ∞åµ\vtexthl\23DiagnosticSignHint\23DiagnosticSignHint\1\0\2\ttext\tÔÅö \vtexthl\23DiagnosticSignInfo\23DiagnosticSignInfo\1\0\2\ttext\tÔÅ± \vtexthl\23DiagnosticSignWarn\23DiagnosticSignWarn\1\0\2\ttext\tÔÅó \vtexthl\24DiagnosticSignError\24DiagnosticSignError\16sign_define\afn\bvim\0", "config", "neo-tree.nvim")
time([[Config for neo-tree.nvim]], false)
-- Config for: alpha-nvim
time([[Config for alpha-nvim]], true)
try_loadstring("\27LJ\2\na\0\0\5\0\5\0\n6\0\0\0'\2\1\0B\0\2\0029\0\2\0006\2\0\0'\4\3\0B\2\2\0029\2\4\2B\0\2\1K\0\1\0\vconfig\27alpha.themes.dashboard\nsetup\nalpha\frequire\0", "config", "alpha-nvim")
time([[Config for alpha-nvim]], false)
-- Config for: nvim-window-picker
time([[Config for nvim-window-picker]], true)
try_loadstring("\27LJ\2\nå\2\0\0\6\0\f\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\n\0005\3\3\0005\4\5\0005\5\4\0=\5\6\0045\5\a\0=\5\b\4=\4\t\3=\3\v\2B\0\2\1K\0\1\0\17filter_rules\1\0\1\17filter_rules\0\abo\fbuftype\1\3\0\0\rterminal\rquickfix\rfiletype\1\0\2\fbuftype\0\rfiletype\0\1\4\0\0\rneo-tree\19neo-tree-popup\vnotify\1\0\3\abo\0\19autoselect_one\2\24include_current_win\1\nsetup\18window-picker\frequire\0", "config", "nvim-window-picker")
time([[Config for nvim-window-picker]], false)
-- Config for: catppuccin
time([[Config for catppuccin]], true)
try_loadstring("\27LJ\2\nD\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0%colorscheme catppuccin-macchiato\bcmd\bvim\0", "config", "catppuccin")
time([[Config for catppuccin]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
