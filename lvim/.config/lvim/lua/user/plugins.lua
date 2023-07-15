lvim.plugins = {
	"catppuccin/nvim",
	"Mofiqul/vscode.nvim",
	"marko-cerovac/material.nvim",
	"xiyaowong/nvim-transparent",
	"projekt0n/github-nvim-theme",
	"rainbowhxch/accelerated-jk.nvim",
	"ibhagwan/fzf-lua",
	"is0n/fm-nvim",
	"Pocco81/true-zen.nvim",
	"mbbill/undotree",
	"rest-nvim/rest.nvim",
	-- "Exafunction/codeium.vim",
	"MunifTanjim/prettier.nvim",
	{
		"uga-rosa/ccc.nvim",
		config = function()
			require("ccc").setup({})
		end,
	},
	{ "norcalli/nvim-colorizer.lua" },
	{
		"iamcco/markdown-preview.nvim",
		build = function()
			vim.fn["mkdp#util#install"]()
		end,
	},
	"rcarriga/nvim-notify",
	"nvim-treesitter/playground",
	"nvim-treesitter/nvim-treesitter-textobjects",
	"p00f/nvim-ts-rainbow",
	{
		"mattn/emmet-vim",
		ft = { "html", "css", "javascript" },
		config = function()
			vim.g.user_emet_settings = {
				["javascript.jsx"] = {
					extends = "jsx",
				},
			}
			vim.g.user_emet_mode = "in"
		end,
	},
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v2.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
		},
	},
	{
		"princejoogie/dir-telescope.nvim",
		config = function()
			require("dir-telescope").setup({
				hidden = true,
				respect_gitignore = true,
			})
		end,
	},
	-- GOLANG
	"olexsmir/gopher.nvim",
	"leoluz/nvim-dap-go",
	"mfussenegger/nvim-jdtls",
}
