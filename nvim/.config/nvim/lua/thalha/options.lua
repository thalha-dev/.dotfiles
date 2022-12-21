vim.opt.backup = false -- creates a backup file
vim.opt.fileencoding = "utf-8" -- the encoding written to a file
vim.opt.hlsearch = false -- highlight all matches on previous search pattern
vim.opt.ignorecase = true -- ignore case in search patterns
vim.opt.mouse = "a" -- allow the mouse to be used in neovim
vim.opt.pumheight = 20 -- pop up menu height
vim.opt.showtabline = 0 -- always show tabs
vim.opt.smartcase = true -- smart case
vim.opt.smartindent = true -- make indenting smarter again
vim.opt.splitbelow = true -- force all horizontal splits to go below current window
vim.opt.splitright = true -- force all vertical splits to go to the right of current window
vim.opt.termguicolors = true -- set term gui colors (most terminals support this)
vim.opt.showmatch = true -- Show matching brackets
vim.opt.expandtab = true -- convert tabs to spaces
vim.opt.shiftwidth = 4 -- the number of spaces inserted for each indentation
vim.opt.tabstop = 4 -- insert 2 spaces for a tab
vim.opt.number = true -- set numbered lines
vim.opt.relativenumber = true -- set relative numbered lines
vim.opt.numberwidth = 4 -- set number column width to 2 {default 4}
vim.opt.signcolumn = "yes" -- always show the sign column, otherwise it would shift the text each time
vim.opt.wrap = false -- display lines as one long line
vim.opt.scrolloff = 8 -- is one of my fav
vim.opt.sidescrolloff = 8
vim.opt.swapfile = false -- creates a swapfile

local vim_undo_dir = os.getenv("HOME") .. "/.vim/undodir"
vim.fn.mkdir(vim_undo_dir, "p")
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true -- enable persistent undo

vim.g.markdown_fenced_languages =
	{ "javascript", "typescript", "bash", "lua", "c", "cpp", "rust", "go", "lua", "java", "haskell" }

--------------------------------------------------------------------------------------------
-- vim.opt.cursorline = true, -- highlight the current line
-- vim.opt.ruler = false,
-- vim.opt.timeoutlen = 1000-- time to wait for a mapped sequence to complete (in milliseconds)
-- vim.opt.guifont = "monospace:h17",               -- the font used in graphical neovim applications
-- vim.opt.completeopt = { "menuone", "noselect" }, -- mostly just for cmp
-- vim.opt.conceallevel = 0-- so that `` is visible in markdown files
-- vim.opt.showmode = false,                        -- we don't need to see things like -- INSERT -- anymore
-- vim.opt.cmdheight = 1,                           -- more space in the neovim command line for displaying messages
-- vim.opt.updatetime = 100-- faster completion (4000ms default)
-- vim.opt.writebackup = false,                     -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
-- vim.opt.numberwidth = 4,                         -- set number column width to 2 {default 4}
-- vim.opt.laststatus = 3
-- vim.opt.showcmd = false,
-- vim.opt.clipboard = "unnamedplus" -- allows neovim to access the system clipboard
