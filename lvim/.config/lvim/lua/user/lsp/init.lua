lvim.lsp.diagnostics.virtual_text = false

local formatters = require("lvim.lsp.null-ls.formatters")
formatters.setup({
	{ command = "prettier" },
	{ command = "black", filetypes = { "python" } },
	{ command = "stylua", filetypes = { "lua" } },
	{ command = "shfmt", filetypes = { "sh", "zsh" } },
})

local linters = require("lvim.lsp.null-ls.linters")
linters.setup({
	{ command = "flake8", filetypes = { "python" } },
})

lvim.builtin.which_key.mappings["l"]["f"] = {
	function()
		require("lvim.lsp.utils").format({ timeout_ms = 3000 })
	end,
	"Format",
}
