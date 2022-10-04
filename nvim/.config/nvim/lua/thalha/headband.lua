local status_ok, headband = pcall(require, "nvim-headband")
if not status_ok then
	return
end
local symbols = require("nvim-headband.symbols")
-- All default symbols are exported to the user and can be accessed via require('nvim-headband.symbols')

local strict_combine = require("nvim-headband.filters").strict_combine
local bt_filter = require("nvim-headband.filters").bt_filter
local ft_filter = require("nvim-headband.filters").ft_filter

local config = {
	enable = true, -- whether to enable the winbar
	enable_if_single_window = true, -- should the winbar be visible even if there's only one window open?
	window_filter = strict_combine( -- filters out certain windows
		bt_filter({
			"NvimTree",
			"nerdtree",
			"neo-tree",
			"packer",
			"alpha",
			"dashboard",
			"startify",
			"nofile",
		}),
		ft_filter({
			"gitcommit",
			"NeogitCommitMessage",
			"NeogitStatus",
			"toggleterm",
		})
	),
	separator_text = "::", -- the text between the location section and file section, appears only when they both have the same position and both are enabled and accessible
	unsaved_buffer_text = "%f", -- text to use for not-readable buffers (e.g. unsaved files, scratch buffers), in the future it will be a whole section like file_section for the sake of configurativity
	wrap = { " ", " " }, -- see #wrap above
	file_section = { -- the configuration for the file section
		enable = true, -- whether to enable the file section
		text = "filename", -- how the file section should be displayed, can be 'full'|'full_lower'|'filename'|'shortened| 'shortened_lower'
		wrap = nil, -- see #wrap above
		enable_devicons = true, -- whether to enable the devicons
		position = "left", -- the position of the file section, can be `left`|`right`
		reversed = false, -- whether the file section should be reversed
	},
	location_section = { -- the configuration for the location section
		enable = true, -- whether to enable the location section
		depth_limit = 0, -- how many items are allowed max
		depth_limit_indicator = symbols.ellipsis, -- the symbol to use to indicate overflow
		wrap = nil, -- see #wrap above
		empty_symbol = symbols.empty_set, -- symbol to use when the location is available but there's nothing to show (e.g. global namespace)
		separator = symbols.nice_arrow, -- the separator between the semantic elements
		icons = "default", -- can be 'none' to disable, 'default' to register default or a table to register custom ones, see https://github.com/SmiteshP/nvim-navic#-customise
		position = "left", -- the position of the location section, can be `left`|`right`
		reversed = false, -- whether the location section should be reversed
	},
	styling = { -- configuration for styles
		highlights = {
			devicons = true, -- whether to highlight devicons
			default_location_separator = true, -- whether to setup a default location separator highlight
			location_icons = "link", -- can be 'none' to disable, 'default' to vscode-y hl groups or 'link' to link to respective CmpItem* groups
		},
		bold_filename = true, -- whether to make the filename bold
	},
}

headband.setup(config)
