vim.opt_local.shiftwidth = 2
vim.opt_local.tabstop = 2

local opts = { noremap = true, silent = true }
local nor = { noremap = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

keymap("n", "<leader>lff", ":!ormolu " .. vim.fn.expand("%") .. " --mode inplace<cr><cr>", opts)
