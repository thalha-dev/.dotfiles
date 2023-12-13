return {
	{
		"JoosepAlviste/nvim-ts-context-commentstring",
		dependencies = {
			"nvim-treesitter/nvim-treesitter",
		},
		config = function()
			require("ts_context_commentstring").setup({})
		end,
	},

	{
		"numToStr/Comment.nvim",
		dependencies = {
			"nvim-treesitter/nvim-treesitter",
			"JoosepAlviste/nvim-ts-context-commentstring",
		},
		lazy = false,

		config = function()
			-- import comment plugin safely
			local comment = require("Comment")

			local ts_context_commentstring = require("ts_context_commentstring.integrations.comment_nvim")

			-- enable comment
			comment.setup({
				-- for commenting tsx and jsx files
				pre_hook = ts_context_commentstring.create_pre_hook(),
			})

			local api = require("Comment.api")
			vim.keymap.set("n", "<leader>/", api.toggle.linewise.current, { desc = { "comment current line" } })
		end,
	},
}
