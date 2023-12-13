return {
	"nvim-treesitter/nvim-treesitter-textobjects",
	lazy = true,
	dependencies = {
		"nvim-treesitter/nvim-treesitter",
	},
	config = function()
		require("nvim-treesitter.configs").setup({})
	end,
}
