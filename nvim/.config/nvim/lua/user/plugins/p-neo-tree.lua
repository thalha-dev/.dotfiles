return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		local opts = { noremap = true, silent = true }
		opts.desc = "find file in neo tree"
		vim.keymap.set("n", "<leader>nf", "<cmd>Neotree filesystem reveal left<CR>", opts)

		opts.desc = "neo tree toggle"
		vim.keymap.set("n", "<leader>nn", "<cmd>Neotree toggle<CR>", opts)
	end,
}
