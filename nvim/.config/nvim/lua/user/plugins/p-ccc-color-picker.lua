return {
	"uga-rosa/ccc.nvim",
	config = function()
		local opts = { noremap = true, silent = true }
		opts.desc = "pick color"
		vim.keymap.set("n", "<leader>vcp", "<cmd>CccPick<cr>", opts)

		opts.desc = "convert color"
		vim.keymap.set("n", "<leader>vcC", "<cmd>CccConvert<cr>", opts)
	end,
}
