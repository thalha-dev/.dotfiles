local status_ok, silicon = pcall(require, "silicon")
if not status_ok then
	return
end
silicon.setup({
	theme = "auto",
	output = "/home/thalha/Pictures/code-shot/SILICON_${year}-${month}-${date}_${time}.png", -- auto generate file name based on time (absolute or relative to cwd)
	bgColor = vim.g.terminal_color_5,
	bgImage = "", -- path to image, must be png
	roundCorner = true,
	windowControls = true,
	lineNumber = true,
	font = "monospace",
	lineOffset = 1, -- from where to start line number
	linePad = 2, -- padding between lines
	padHoriz = 80, -- Horizontal padding
	padVert = 100, -- vertical padding
	shadowBlurRadius = 10,
	shadowColor = "#555555",
	shadowOffsetX = 8,
	shadowOffsetY = 8,
	gobble = false, -- enable lsautogobble like feature
})
