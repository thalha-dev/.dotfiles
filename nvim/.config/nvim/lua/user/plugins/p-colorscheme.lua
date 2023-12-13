return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
	},
	{
		"LunarVim/lunar.nvim",
		priority = 1000,
		lazy = false,
		config = function()
			-- load the colorscheme here
			vim.cmd([[colorscheme lunar]])
		end,
	},
}
