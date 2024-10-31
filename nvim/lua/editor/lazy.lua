-- Package manager (Packer): please, do not touch anything, if you touch something, I will cry
-- ############################################################################################
--[[
Info:
- Here we use have our package manager, in this case we use packer. Warning, unmaintained, someday I will change it.
- Also must be sourced when you change something.
- In this case, to open the manager we type "PackerSync" to sync the packages we are adding.
- Packages unless they specify, must be inserted here.
]]--


local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)



-- We set the mapleader (space), will be referred as "<leader>" or <leader>
vim.g.mapleader = " "	

local plugins = {
	{
		'nvim-telescope/telescope.nvim', tag = '0.1.8',
	  	dependencies = { {'nvim-lua/plenary.nvim'} }
	},	
	'nvim-treesitter/nvim-treesitter', build = ':TSUpdate',
	'nvim-treesitter/playground',
	'ThePrimeagen/harpoon',
	'mbbill/undotree',
	'tpope/vim-fugitive',
	{'VonHeikemen/lsp-zero.nvim', branch = 'v4.x'},
	{'neovim/nvim-lspconfig'},
	{'hrsh7th/nvim-cmp'},
	{'hrsh7th/cmp-nvim-lsp'},
	
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = { 
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
			{
			's1n7ax/nvim-window-picker',
			version = '2.*',
			config = function()
	    			require 'window-picker' .setup ({
					filter_rules = {
						include_current_win = false,
		    				autoselect_one = true,
		    				bo = {
							filetype = { 'neo-tree', "neo-tree-popup", "notify" },
							buftype = { 'terminal', "quickfix" },
						},
					},
				})
			end,
		},
	},
	config = function ()
		vim.fn.sign_define("DiagnosticSignError", 
			{text = " ", texthl = "DiagnosticSignError"})
		vim.fn.sign_define("DiagnosticSignWarn",
			{text = " ", texthl = "DiagnosticSignWarn"})
		vim.fn.sign_define("DiagnosticSignInfo",
			{text = " ", texthl = "DiagnosticSignInfo"})
		vim.fn.sign_define("DiagnosticSignHint",
			{text = "󰌵", texthl = "DiagnosticSignHint"})

		require("neo-tree").setup ({
			close_if_last_window = false, 
			popup_border_style = "rounded",
			enable_git_status = true,
			enable_diagnostics = true,
			open_files_do_not_replace_types = { "terminal", "trouble", "qf" }, 
			sort_case_insensitive = false, -- d when sorting files and directories in the tree
			sort_function = nil , --  a custom function for sorting files and directories in the tree 
			default_component_configs = {
				container = {
					enable_character_fade = true
				},
	  			indent = {
	    				indent_size = 2,
	    				padding = 1, -- extra padding on left hand side
	    				-- indent guides
	    				with_markers = true,
	    				indent_marker = "│",
		    			last_indent_marker = "└",
		    			highlight = "NeoTreeIndentMarker",
		    			-- expander config, needed for nesting files
		    			with_expanders = nil, -- if nil and file nesting is enabled, will enable expanders
		    			expander_collapsed = "",
		    			expander_expanded = "",
		    			expander_highlight = "NeoTreeExpander",
				},
				icon = {
					folder_closed = "",
					folder_open = "",
	    				folder_empty = "󰜌",
	    				provider = function(icon, node, state) 
					if node.type == "file" or node.type == "terminal" then
						local success, web_devicons = pcall(require, "nvim-web-devicons")
						local name = node.type == "terminal" and "terminal" or node.name
						if success then
							local devicon, hl = web_devicons.get_icon(name)
		  					icon.text = devicon or icon.text
						 	icon.highlight = hl or icon.highlight
						end
					end
				end,
	    			-- The next two settings are only a fallback, if you  nvim-web-devicons and configure default icons there
	    			-- then these will never be d.
	    			default = "*",
	    			highlight = "NeoTreeFileIcon",
			},
			modified = {
				symbol = "[+]",
	    			highlight = "NeoTreeModified",
			},
			name = {
				trailing_slash = false,
	    			use_git_status_colors = true,
	    			highlight = "NeoTreeFileName",
			},
			git_status = {
				symbols = {
					-- Change type
				      	added     = "", 
				     	modified  = "", 
				      	deleted   = "✖",
				      	renamed   = "󰁕",
				      	untracked = "",
				      	ignored   = "",
				      	unstaged  = "󰄱",
				      	staged    = "",
				      	conflict  = "",
				}
			},
	  		-- If you don't want to  these columns, you can set `enabled = false` for each of them individually
			file_size = {
				enabled = true,
	    			required_width = 64, -- min width of window required to show this column
			},
			type = {
				enabled = true,
				required_width = 122, -- min width of window required to show this column
			},
			last_modified = {
				enabled = true,
				required_width = 88, -- min width of window required to show this column
			},
			created = {
				enabled = true,
				required_width = 110, -- min width of window required to show this column
			},
			symlink_target = {
				enabled = false,
			},
		},
		-- A list of functions, each representing a global custom command
		-- that will be available in all sources (if not overridden in `opts[source_name].commands`)
		-- see `:h neo-tree-custom-commands-global`
		commands = {},
		window = {
			position = "right",
	  		width = 40,
	  		mapping_options = {
				noremap = true,
	    			nowait = true,
			},
			mappings = {
				["<space>"] = { 
					"toggle_node", 
					nowait = false,  
				},
				["<2-LeftMo>"] = "open",
	    			["<cr>"] = "open",
				["<esc>"] = "cancel", 
				["P"] = { "toggle_preview", config = { _float = true, use_image_nvim = true } },
				["l"] = "focus_preview",
				["S"] = "open_split",
				["s"] = "open_vsplit",
				["t"] = "open_tabnew",
				["w"] = "open_with_window_picker",
				["C"] = "close_node",
				["z"] = "close_all_nodes",
				["a"] = { 
					"add",
					config = {
						show_path = "none"
					},
				},
				["A"] = "add_directory",
				["d"] = "delete",
				["r"] = "rename",
				["y"] = "copy_to_clipboard",
				["x"] = "cut_to_clipboard",
				["p"] = "paste_from_clipboard",
				["c"] = "copy",
	    			["m"] = "move",
			     	["q"] = "close_window",
			    	["R"] = "refresh",
			    	["?"] = "show_help",
			    	["<"] = "prev_source",
			    	[">"] = "next_source",
			    	["i"] = "show_file_details",
			},
		},
		nesting_rules = {},
		filesystem = {
			filtered_items = {
				visible = false,
				hide_dotfiles = true,
	    			hide_gitignored = true,
	    			hide_hidden = true, 
				hide_by_name = {
					--"node_modules"
					},
				hide_by_pattern = { -- uses glob style patterns
					--"*.meta",
					--"*/src/*/tsconfig.json",
					},
				always_show = { -- remains visible even if other settings would normally hide it
					      --".gitignored",
					},
				always_show_by_pattern = { -- uses glob style patterns
					      --".env*",
					},
				never_show = { -- remains hidden even if visible is toggled to true, this overrides always_show
					      --".DS_Store",
					      --"thumbs.db"
					},
				never_show_by_pattern = { -- uses glob style patterns
					      --".null-ls_*",
				      },			
			      },
			      follow_current_file = {
				      enabled = false, -- This will find and focus the file in the active buffer every time
	    			      --               -- the current file is changed while the tree is open.
	    			      leave_dirs_open = false, -- `false` closes auto expanded dirs, such as with `:Neotree reveal`
			      },
			      group_empty_dirs = false, -- when true, empty folders will be grouped together
	  		      hijack_netrw_behavior = "open_default", -- netrw disabled, opening a directory opens neo-tree
	  		      use_libuv_file_watcher = false, -- This will use the OS level file watchers to detect changes
					  -- instead of relying on nvim autocmd events.
	  		      window = {
				      mappings = {
					      ["<bs>"] = "navigate_up",
				      	      ["."] = "set_root",
					      ["H"] = "toggle_hidden",
					      ["/"] = "fuzzy_finder",
					      ["D"] = "fuzzy_finder_directory",
					      ["#"] = "fuzzy_sorter", -- fuzzy sorting using the fzy algorithm
					      ["f"] = "filter_on_submit",
					      ["<c-x>"] = "clear_filter",
					      ["[g"] = "prev_git_modified",
					      ["]g"] = "next_git_modified",
					      ["o"] = { "show_help", nowait=false, config = { title = "Order by", prefix_key = "o" }},
					      ["oc"] = { "order_by_created", nowait = false },
					      ["od"] = { "order_by_diagnostics", nowait = false },
					      ["og"] = { "order_by_git_status", nowait = false },
					      ["om"] = { "order_by_modified", nowait = false },
					      ["on"] = { "order_by_name", nowait = false },
					      ["os"] = { "order_by_size", nowait = false },
					      ["ot"] = { "order_by_type", nowait = false },
				      },
				      fuzzy_finder_mappings = { -- define keymaps for filter popup window in fuzzy_finder_mode
					      ["<down>"] = "move_cursor_down",
					      ["<C-n>"] = "move_cursor_down",
					      ["<up>"] = "move_cursor_up",
					      ["<C-p>"] = "move_cursor_up",
				      },
			      },
			      commands = {} 
		      },
		      buffers = {
			      follow_current_file = {
				      enabled = true, 
				      leave_dirs_open = false,
			      },
			      group_empty_dirs = true, -- when true, empty folders will be grouped together
			      show_unloaded = true,
			      window = {
				      mappings = {
					      ["bd"] = "buffer_delete",
					      ["<bs>"] = "navigate_up",
					      ["."] = "set_root",
					      ["o"] = { "show_help", nowait=false, config = { title = "Order by", prefix_key = "o" }},
					      ["oc"] = { "order_by_created", nowait = false },
					      ["od"] = { "order_by_diagnostics", nowait = false },
					      ["om"] = { "order_by_modified", nowait = false },
					      ["on"] = { "order_by_name", nowait = false },
					      ["os"] = { "order_by_size", nowait = false },
					      ["ot"] = { "order_by_type", nowait = false },
				      },
			      },
		      },
		      git_status = {
			      window = {
				      position = "float",
	    			      mappings = {
					      ["A"]  = "git_add_all",
					      ["gu"] = "git_unstage_file",
					      ["ga"] = "git_add_file",
					      ["gr"] = "git_revert_file",
					      ["gc"] = "git_commit",
					      ["gp"] = "git_push",
					      ["gg"] = "git_commit_and_push",
					      ["o"] = { "show_help", nowait=false, config = { title = "Order by", prefix_key = "o" }},
					      ["oc"] = { "order_by_created", nowait = false },
					      ["od"] = { "order_by_diagnostics", nowait = false },
					      ["om"] = { "order_by_modified", nowait = false },
					      ["on"] = { "order_by_name", nowait = false },
					      ["os"] = { "order_by_size", nowait = false },
					      ["ot"] = { "order_by_type", nowait = false },
				      		},
			      		},
		      		},
	      		})
	      		vim.cmd([[nnoremap \ :Neotree reveal<cr>]])
      		end,
	},




	{
		'nvim-tree/nvim-web-devicons',
	},
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000
	}
}

require("lazy").setup(plugins, opts)
