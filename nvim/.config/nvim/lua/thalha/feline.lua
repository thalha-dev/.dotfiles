local feline_ok, feline = pcall(require, "feline")
if not feline_ok then
	return
end

local force_inactive = {
	filetypes = {
		"^neo-tree$",
		"^dbui$",
		"^packer$",
		"^startify$",
		"^fugitive$",
		"^fugitiveblame$",
		"^qf$",
	},
	buftypes = {
		"^terminal$",
	},
	bufnames = {},
}

local components = {
	active = { {}, {}, {} },
	inactive = { {}, {}, {} },
}

local colors = {
	fg = "#f8eef8",
	bg = "#1F1F23",
	black = "#1B1B1B",
	skyblue = "#fafefe",
	cyan = "#009090",
	green = "#50cc4a",
	oceanblue = "#323932",
	magenta = "#C26BDB",
	orange = "#FF9000",
	red = "#d11e3c",
	violet = "#9E93E8",
	white = "#FFFFFF",
	yellow = "#E1E120",
}

local vi_mode_colors = {
	NORMAL = "green",
	OP = "green",
	INSERT = "red",
	CONFIRM = "red",
	VISUAL = "skyblue",
	LINES = "skyblue",
	BLOCK = "skyblue",
	REPLACE = "violet",
	["V-REPLACE"] = "violet",
	ENTER = "cyan",
	MORE = "cyan",
	SELECT = "orange",
	COMMAND = "green",
	SHELL = "green",
	TERM = "green",
	NONE = "yellow",
}

feline.setup({
	force_inactive = force_inactive,
	theme = colors,
	vi_mode_colors = vi_mode_colors,
})
