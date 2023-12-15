return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		local opts = { noremap = true, silent = true }
		opts.desc = "find file in neo tree"
		vim.keymap.set("n", "<leader>nf", "<cmd>Neotree filesystem reveal left<CR>", opts)

		opts.desc = "neo tree toggle"
		vim.keymap.set("n", "<leader>nn", "<cmd>Neotree toggle<CR>", opts)

		require("neo-tree").setup({
			window = {
				mappings = {
					["<2-LeftMouse>"] = "open",
					["<cr>"] = "open",
					["o"] = "open",
					["<esc>"] = "cancel", -- close preview or floating neo-tree window
					-- ["P"] = { "toggle_preview", config = { use_float = true, use_image_nvim = true } },
					-- Read `# Preview Mode` for more information
					["l"] = "focus_preview",
					-- ["S"] = "open_split",
					-- ["s"] = "open_vsplit",
					["S"] = "split_with_window_picker",
					["s"] = "vsplit_with_window_picker",
					["t"] = "open_tabnew",
					-- ["<cr>"] = "open_drop",
					-- ["t"] = "open_tab_drop",
					["w"] = "open_with_window_picker",
					["P"] = "paste_from_clipboard",
					-- ["C"] = "close_node",
					["C"] = "close_all_subnodes",
					["z"] = "close_all_nodes",
					["Z"] = "expand_all_nodes",
					["a"] = {
						"add",
						-- this command supports BASH style brace expansion ("x{a,b,c}" -> xa,xb,xc). see `:h neo-tree-file-actions` for details
						-- some commands may take optional config options, see `:h neo-tree-mappings` for details
						config = {
							show_path = "none", -- "none", "relative", "absolute"
						},
					},
					["A"] = "add_directory", -- also accepts the optional config.show_path option like "add". this also supports BASH style brace expansion.
					["d"] = "delete",
					["r"] = "rename",
					["y"] = "copy_to_clipboard",
					["x"] = "cut_to_clipboard",
					["p"] = "paste_from_clipboard",
					["c"] = "copy", -- takes text input for destination, also accepts the optional config.show_path option like "add":
					["m"] = "move", -- takes text input for destination, also accepts the optional config.show_path option like "add".
					["q"] = "close_window",
					["R"] = "refresh",
					["?"] = "show_help",
					["<"] = "prev_source",
					[">"] = "next_source",
					["i"] = "show_file_details",
					["oc"] = "noop",
					["od"] = "noop",
					["og"] = "noop",
					["om"] = "noop",
					["on"] = "noop",
					["os"] = "noop",
					["ot"] = "noop",
					["O"] = { "show_help", nowait = false, config = { title = "Order by", prefix_key = "O" } },
					["Oc"] = { "order_by_created", nowait = false },
					["Od"] = { "order_by_diagnostics", nowait = false },
					["Og"] = { "order_by_git_status", nowait = false },
					["Om"] = { "order_by_modified", nowait = false },
					["On"] = { "order_by_name", nowait = false },
					["Os"] = { "order_by_size", nowait = false },
					["Ot"] = { "order_by_type", nowait = false },
				},
			},
			filesystem = {
				filtered_items = {
					visible = false, -- when true, they will just be displayed differently than normal items
					hide_dotfiles = false,
					hide_gitignored = true,
					hide_hidden = true, -- only works on Windows for hidden files/directories
					hide_by_name = {
						"node_modules",
						".git",
					},
					hide_by_pattern = { -- uses glob style patterns
						--"*.meta",
						--"*/src/*/tsconfig.json",
					},
					always_show = { -- remains visible even if other settings would normally hide it
						--".gitignored",
					},
					never_show = { -- remains hidden even if visible is toggled to true, this overrides always_show
						--".DS_Store",
						--"thumbs.db"
					},
					never_show_by_pattern = { -- uses glob style patterns
						--".null-ls_*",
					},
				},
				hijack_netrw_behavior = "open_default", -- netrw disabled, opening a directory opens neo-tree
				-- in whatever position is specified in window.position
				-- "open_current",  -- netrw disabled, opening a directory opens within the
				-- window like netrw would, regardless of window.position
				-- "disabled",    -- netrw left alone, neo-tree does not handle opening dirs
				use_libuv_file_watcher = true, -- This will use the OS level file watchers to detect changes
			},
		})
	end,
}
