return {
	settings = {

		Lua = {
			diagnostics = {
				globals = { "vim", "awesome", "screen", "client", "root" },
			},
			workspace = {
				library = {
					[vim.fn.expand("$VIMRUNTIME/lua")] = true,
					[vim.fn.stdpath("config") .. "/lua"] = true,
				},
			},
		},
	},
}
