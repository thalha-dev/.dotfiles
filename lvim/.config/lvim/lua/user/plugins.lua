lvim.plugins = {
	"catppuccin/nvim",
	"xiyaowong/nvim-transparent",
	"themercorp/themer.lua",
	"rebelot/kanagawa.nvim",
	"rainbowhxch/accelerated-jk.nvim",
	"ibhagwan/fzf-lua",
	"is0n/fm-nvim",
	"Pocco81/true-zen.nvim",
	"mbbill/undotree",
	"manzeloth/live-server",
	"rest-nvim/rest.nvim",
	"Exafunction/codeium.vim",
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
		run = function()
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
		requires = {
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
}