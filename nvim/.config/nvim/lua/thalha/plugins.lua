local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system({
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	})
	print("Installing packer close and reopen Neovim...")
	vim.cmd([[packadd packer.nvim]])
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

-- Have packer use a popup window
packer.init({
	display = {
		open_fn = function()
			return require("packer.util").float({ border = "rounded" })
		end,
	},
})

return packer.startup(function(use)
	use({ "wbthomason/packer.nvim" }) -- Have packer manage itself
	use({ "lewis6991/impatient.nvim" })
	use({ "nvim-lua/plenary.nvim" }) -- Useful lua functions used by lots of plugins
	use({ "nvim-lua/popup.nvim" })

	-- terminal
	use({ "akinsho/toggleterm.nvim" })

	-- colorschemes
	use({ "catppuccin/nvim", as = "catppuccin" })
	use({ "lunarvim/darkplus.nvim" })
	use({ "xiyaowong/nvim-transparent" })
	-- use({ "RRethy/nvim-base16" })
	use({ "themercorp/themer.lua" })
	use({ "cranberry-clockworks/coal.nvim" })

	-- LSP
	use({ "neovim/nvim-lspconfig" }) -- enable LSP
	use({ "williamboman/mason.nvim" })
	use({ "williamboman/mason-lspconfig.nvim" })
	use({ "jose-elias-alvarez/null-ls.nvim" }) -- for formatters and linters
	use({ "mfussenegger/nvim-jdtls" })
	use({ "MunifTanjim/prettier.nvim" })

	-- cmp plugins
	use({ "hrsh7th/cmp-nvim-lsp" })
	use({ "hrsh7th/cmp-buffer" }) -- buffer completions
	use({ "hrsh7th/cmp-path" }) -- path completions
	use({ "hrsh7th/cmp-cmdline" }) -- snippet completions
	use({ "hrsh7th/cmp-calc" })
	use({ "mtoohey31/cmp-fish", ft = "fish" })
	use({ "hrsh7th/nvim-cmp" }) -- The completion plugin
	use({ "L3MON4D3/LuaSnip" }) --snippet engine
	use({ "saadparwaiz1/cmp_luasnip" }) -- snippet completions
	use({ "rafamadriz/friendly-snippets" }) -- a bunch of snippets to use
	use({ "hrsh7th/cmp-nvim-lua" })

	-- Debugging
	use("mfussenegger/nvim-dap")
	use("rcarriga/nvim-dap-ui")
	use("theHamsta/nvim-dap-virtual-text")
	use("nvim-telescope/telescope-dap.nvim")
	use("leoluz/nvim-dap-go")
	use("jbyuki/one-small-step-for-vimkind")

	-- code help
	use({ "windwp/nvim-autopairs" }) -- Autopairs, integrates with both cmp and treesitter
	use({ "numToStr/Comment.nvim" })
	use({ "JoosepAlviste/nvim-ts-context-commentstring" })
	use({ "kyazdani42/nvim-web-devicons" })
	use({ "lukas-reineke/indent-blankline.nvim" })
	use({ "preservim/tagbar" })

	-- smooth navigation within buffer
	use({ "rainbowhxch/accelerated-jk.nvim" })
	use({ "psliwka/vim-smoothie" })

	-- Telescope
	use({ "nvim-telescope/telescope.nvim", tag = "0.1.0" })

	use({
		"ibhagwan/fzf-lua",
		requires = { "kyazdani42/nvim-web-devicons" },
	})

	-- Treesitter
	use({
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate",
	})
	use({ "p00f/nvim-ts-rainbow" })

	-- Git
	use({ "lewis6991/gitsigns.nvim" })
	use({ "sindrets/diffview.nvim", requires = "nvim-lua/plenary.nvim" })

	-- file manager
	use({
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v2.x",
		requires = {
			"nvim-lua/plenary.nvim",
			"kyazdani42/nvim-web-devicons", -- not strictly required, but recommended
			"MunifTanjim/nui.nvim",
		},
	})
	use({ "vifm/vifm.vim" })
	use({ "is0n/fm-nvim" })

	-- color help
	use({ "norcalli/nvim-colorizer.lua" })
	use({ "ziontee113/color-picker.nvim" })
	-- requires winbar
	-- use({ "uga-rosa/ccc.nvim" })

	use({ "Pocco81/true-zen.nvim" })
	use({ "stevearc/dressing.nvim" })
	use({ "feline-nvim/feline.nvim" })
	use({
		"romgrk/barbar.nvim",
		requires = { "kyazdani42/nvim-web-devicons" },
	})
	use({ "ellisonleao/glow.nvim" })
	-- install without yarn or npm
	use({
		"iamcco/markdown-preview.nvim",
		run = function()
			vim.fn["mkdp#util#install"]()
		end,
	})

	-- browser support
	use({
		"glacambre/firenvim",
		run = function()
			vim.fn["firenvim#install"](0)
		end,
	})

	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if PACKER_BOOTSTRAP then
		require("packer").sync()
	end
end)
