local options = {
	backup = false, -- creates a backup file
	clipboard = "unnamedplus", -- allows neovim to access the system clipboard
	fileencoding = "utf-8", -- the encoding written to a file
	hlsearch = false, -- highlight all matches on previous search pattern
	ignorecase = true, -- ignore case in search patterns
	mouse = "a", -- allow the mouse to be used in neovim
	pumheight = 20, -- pop up menu height
	showtabline = 0, -- always show tabs
	smartcase = true, -- smart case
	smartindent = true, -- make indenting smarter again
	splitbelow = true, -- force all horizontal splits to go below current window
	splitright = true, -- force all vertical splits to go to the right of current window
	termguicolors = true, -- set term gui colors (most terminals support this)
	showmatch = true, -- Show matching brackets
	undofile = true, -- enable persistent undo
	expandtab = true, -- convert tabs to spaces
	shiftwidth = 4, -- the number of spaces inserted for each indentation
	tabstop = 4, -- insert 2 spaces for a tab
	number = true, -- set numbered lines
	relativenumber = true, -- set relative numbered lines
	numberwidth = 4, -- set number column width to 2 {default 4}
	signcolumn = "yes", -- always show the sign column, otherwise it would shift the text each time
	wrap = false, -- display lines as one long line
	scrolloff = 8, -- is one of my fav
	sidescrolloff = 8,
	swapfile = false, -- creates a swapfile
    -- cursorline = true, -- highlight the current line
	-- ruler = false,
	-- timeoutlen = 1000,                       -- time to wait for a mapped sequence to complete (in milliseconds)
	-- guifont = "monospace:h17",               -- the font used in graphical neovim applications
	-- completeopt = { "menuone", "noselect" }, -- mostly just for cmp
	-- conceallevel = 0,                        -- so that `` is visible in markdown files
	-- showmode = false,                        -- we don't need to see things like -- INSERT -- anymore
	-- cmdheight = 1,                           -- more space in the neovim command line for displaying messages
	-- updatetime = 100,                       -- faster completion (4000ms default)
	-- writebackup = false,                     -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
	-- numberwidth = 4,                         -- set number column width to 2 {default 4}
	-- laststatus = 3,
	-- showcmd = false,
}

--[[ vim.opt.shortmess:append("c") ]]

for k, v in pairs(options) do
	vim.opt[k] = v
end

vim.g.markdown_fenced_languages =
	{ "javascript", "typescript", "bash", "lua", "c", "cpp", "rust", "go", "lua", "java", "haskell" }
