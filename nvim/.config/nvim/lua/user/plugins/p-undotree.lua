return {
	"mbbill/undotree",
	config = function()
		local opts = { noremap = true, silent = true }
		opts.desc = "toggle undotree"
		vim.keymap.set("n", "<leader>uu", ":UndotreeToggle<CR>", opts)
	end,
}
