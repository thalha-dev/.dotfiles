return {
	"xiyaowong/transparent.nvim",
	config = function()
		local opts = { noremap = true, silent = true }
		opts.desc = "toggle transparancy"
		vim.keymap.set("n", "<leader>vct", "<cmd>TransparentToggle<CR>", opts)
	end,
}
