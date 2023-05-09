local status_ok, colorizer = pcall(require, "colorizer")
if not status_ok then
	return
end

-- colorizer.setup({ "*" }, {
-- 	RGB = true, -- #RGB hex codes
-- 	RRGGBB = true, -- #RRGGBB hex codes
-- 	names = false, -- "Name" codes like Blue oe blue
-- 	RRGGBBAA = true, -- #RRGGBBAA hex codes
-- 	rgb_fn = true, -- CSS rgb() and rgba() functions
-- 	hsl_fn = true, -- CSS hsl() and hsla() functions
-- 	css = true, -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
-- 	css_fn = true, -- Enable all CSS *functions*: rgb_fn, hsl_fn
-- 	-- Available modes: foreground, background, virtualtext
-- 	mode = "background", -- Set the display mode.)
-- })

colorizer.setup({
	filetypes = {
		"typescript",
		"typescriptreact",
		"javascript",
		"javascriptreact",
		"css",
		"html",
		"astro",
		"lua",
	},
	user_default_options = {
		rgb_fn = true,
		tailwind = "both",
	},
	buftypes = {
		-- '*', -- seems like this doesn't work with the float window, but works with the other `buftype`s.
		-- Not sure if the window has a `buftype` at all
	},
})
