local ok, notify = pcall(require, "notify")
if not ok then
	return
end

local icons = require("user.icons")

local config = {
	background_colour = "#000000",
	icons = {
		ERROR = icons.diagnostics.Error,
		WARN = icons.diagnostics.Warning,
		INFO = icons.diagnostics.Information,
		DEBUG = icons.ui.Bug,
		TRACE = icons.ui.Pencil,
	},
	level = 2,
	minimum_width = 20,
	render = "default",
	stages = "fade_in_slide_out",
	timeout = 500,
	--[[ top_down = true, ]]
}
notify.setup(config)

vim.notify = notify
