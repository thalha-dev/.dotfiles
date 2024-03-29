local status_ok, prettier = pcall(require, "prettier")
if not status_ok then
	return
end

prettier.setup({
	bin = "prettier", -- or `prettierd`
	filetypes = {
		"css",
		"graphql",
		"html",
		"javascript",
		"javascriptreact",
		"json",
		"less",
		"markdown",
		"scss",
		"typescript",
		"typescriptreact",
		"yaml",
	},
	--[[ arrow_parens = "always", ]]
	--[[ bracket_spacing = true, ]]
	--[[ bracket_same_line = false, ]]
	--[[ embedded_language_formatting = "auto", ]]
	--[[ end_of_line = "lf", ]]
	--[[ html_whitespace_sensitivity = "css", ]]
	--[[ -- jsx_bracket_same_line = false, ]]
	--[[ jsx_single_quote = false, ]]
	--[[ print_width = 80, ]]
	--[[ prose_wrap = "preserve", ]]
	--[[ quote_props = "as-needed", ]]
	--[[ semi = true, ]]
	--[[ single_attribute_per_line = false, ]]
	--[[ single_quote = false, ]]
	--[[ tab_width = 4, ]]
	--[[ trailing_comma = "es5", ]]
	--[[ use_tabs = false, ]]
	--[[ vue_indent_script_and_style = false, ]]
	--[[ ["null-ls"] = { ]]
	--[[ 	runtime_condition = function(params) ]]
	--[[ 		-- return false to skip running prettier ]]
	--[[ 		return true ]]
	--[[ 	end, ]]
	--[[ 	timeout = 5000, ]]
	--[[ }, ]]
	--[[ -- https://prettier.io/docs/en/cli.html#--config-precedence ]]
	--[[ config_precedence = "prefer-file", -- or "cli-override" or "file-override" ]]
})
