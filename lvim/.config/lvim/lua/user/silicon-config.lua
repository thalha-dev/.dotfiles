local status_ok, silicon = pcall(require, "silicon")
if not status_ok then
	return
end
silicon.setup({
	theme = "auto",
	output = {
		file = "", -- full path of the file to save to.
		clipboard = true,
		path = "/home/thalha/Pictures/code-shot", -- where to save images e.g. /home/user/Pictures
		format = "silicon_[year][month][day]_[hour][minute][second].png",
	},
	font = "Hack=20",
	background = "#eff",
	shadow = {
		blur_radius = 0.0,
		offset_x = 0,
		offset_y = 0,
		color = "#555",
	},
	pad_horiz = 100,
	pad_vert = 80,
	line_number = false,
	line_pad = 2,
	line_offset = 1,
	tab_width = 4,
	gobble = false, -- trim extra identation.
	highlight_selection = false, -- capture the whole file and highlight selected lines
	round_corner = true,
	window_controls = true,
	window_title = nil, -- a function returning window title as a string
	watermark = {
		text = nil, -- add this to enable watermark on the bottom-right.
		color = "#222",
		style = "bold", -- possible values: 'bold' | 'italic' | 'bolditalic' | anything else defaults to 'regular'.
	},
})
