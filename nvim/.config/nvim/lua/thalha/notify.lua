local status_ok, telescope = pcall(require, "telescope")
if not status_ok then
  return
end

local status_ok, notify = pcall(require, "notify")
if not status_ok then
	return
end

local icons = require("thalha.icons")

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

telescope.load_extension("notify")

--[[ local notify_filter = vim.notify ]]
--[[ vim.notify = function(msg, ...) ]]
--[[ 	if msg:match("character_offset must be called") then ]]
--[[ 		return ]]
--[[ 	end ]]
--[[ 	if msg:match("method textDocument") then ]]
--[[ 		return ]]
--[[ 	end ]]
--[[]]
--[[ 	notify_filter(msg, ...) ]]
--[[ end ]]
