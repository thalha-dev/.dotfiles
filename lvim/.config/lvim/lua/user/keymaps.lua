lvim.leader = "space"
local opts = { noremap = true, silent = true }
local nor = { noremap = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap
-- local keymap = vim.keymap.set
keymap("", "<Space>", "<Nop>", opts)

vim.g.mapleader = " "

vim.g.maplocalleader = " "

keymap("c", "jk", "<C-u><del>", {})

-- Press jk fast to exit insert mode

keymap("i", "jk", "<ESC>", opts)

-- switching pianlessly

keymap("n", ";", ":", {})

------------------------------------------------------------------------------

-- REGISTERS

keymap("n", "<leader>rup", ":lua MY_REG_COPY_UNNAMED_TO_PLUS()<CR>", {})
keymap("n", "<leader>rpu", ":lua MY_REG_COPY_PLUS_TO_UNNAMED()<CR>", {})
keymap("n", "<leader>rzp", ":lua MY_REG_COPY_ZERO_TO_PLUS()<CR>", {})
keymap("n", "<leader>rop", ":lua MY_REG_COPY_ONE_TO_PLUS()<CR>", {})
keymap("n", "<leader>rfu", ":lua MY_REG_COPY_PERSENT_TO_UNNAMED()<CR>", {})
keymap("n", "<leader>rfp", ":lua MY_REG_COPY_PERSENT_TO_PLUS()<CR>", {})
keymap("n", "<leader>rL", ":registers<CR>", {})
keymap("n", "<leader>yy", "ggyG", opts)
keymap("n", "<leader>yc", 'gg"+yG', opts)
keymap("n", "<leader>yl", "^v$y", opts)

------------------------------------------------------------------------------

-- tmux window

keymap("n", "<leader>ttv", ":!tmux split-window -h<CR><CR>", opts)
keymap("n", "<leader>tth", ":!tmux split-window -l 12<CR><CR>", opts)

------------------------------------------------------------------------------

-- Quickfix

keymap("n", "<leader>j", "<cmd>cnext<CR>", opts)
keymap("n", "<leader>k", "<cmd>cprev<CR>", opts)

------------------------------------------------------------------------------

-- liveServer

keymap("n", "<leader>lss", ":LiveServer start<CR>", opts)
keymap("n", "<leader>lsx", ":LiveServer stop<CR>", opts)

------------------------------------------------------------------------------

-- Accelerated jk

keymap("n", "j", "<Plug>(accelerated_jk_gj)", {})
keymap("n", "k", "<Plug>(accelerated_jk_gk)", {})

------------------------------------------------------------------------------

-- -- Find and Replace

keymap("n", "<leader>vfr", ":%s/<C-r><C-w>/<C-r><C-w>/gI<Left><Left><Left>", nor)
keymap("n", "<leader>v;", "/<C-r><C-w>", nor)

-- markdown preview in browser

keymap("n", "<leader>mmt", "<cmd>MarkdownPreviewToggle<CR>", opts)

-- remove current file from bufferlist

keymap("n", "<leader>DDD", ":bp | :sp | :bn | :bd<Cr>", {})

-- Mason

keymap("n", "<leader>lmm", "<cmd>Mason<CR>", opts)

-- Lf

keymap("n", "<leader><leader>f", "<cmd>Vifm<CR>", opts)
keymap("n", "<leader><leader>F", "<cmd>Lf<CR>", opts)

-- Prettier

keymap("n", "<leader>lp", ":Prettier<CR>", {})

-- close telescope easily

keymap("n", "<leader>8", "<C-w>j", opts)

-- Transparent

keymap("n", "<leader>vct", "<cmd>TransparentToggle<CR>", opts)

-- cursorline

keymap("n", "<leader>vcl", ":lua MY_CURSOR_TOGGLE()<CR>", {})

-- spellcheck

keymap("n", "<leader>vsc", ":lua MY_SPELL_TOGGLE()<CR>", {})

-- wraptext

keymap("n", "<leader>vww", ":lua MY_WRAP_TOGGLE()<CR>", {})

-- set indent size to 2

keymap("n", "<leader>vi2", ":lua MY_INDENT_TWO()<CR>", {})

-- set indent size to 4
--
keymap("n", "<leader>vi4", ":lua MY_INDENT_FOUR()<CR>", {})

-- Indent Line

keymap("n", "<leader>vii", "<cmd>IndentBlanklineToggle<CR>", opts)

-- Jump to capital letters

keymap("n", "<leader><leader>k", "/[A-Z]<CR>", opts)

-- Make file executable

keymap("n", "<leader>X", ":!chmod +x %<CR>", opts)

-- undotree

keymap("n", "<leader>uu", ":UndotreeToggle<CR>", opts)

-- Vim Help

keymap("n", "<leader>vwh", ':h <C-R>=expand("<cword>")<CR><CR>', opts)

-- colorizer toggle

keymap("n", "<leader>vcx", "<cmd>ColorizerToggle<cr>", opts)

------------------------------------------------------------------------------

-- -- color picker

keymap("n", "<leader>vcp", "<cmd>CccPick<cr>", opts)
keymap("n", "<leader>vcC", "<cmd>CccConvert<cr>", opts)
-- keymap("i", "<C-s>", "<cmd>CccConvert<cr>", opts)

------------------------------------------------------------------------------

-- Make adjusing split sizes a bit more friendly

keymap("n", "<A-C-k>", ":resize +2<CR>", opts)
keymap("n", "<A-C-j>", ":resize -2<CR>", opts)
keymap("n", "<A-C-h>", ":vertical resize -2<CR>", opts)
keymap("n", "<A-C-l>", ":vertical resize +2<CR>", opts)
keymap("n", "<leader>vff", "<cmd>TZFocus<CR>", opts)
keymap("n", "<leader>vfm", "<cmd>TZMinimalist<CR>", opts)
keymap("n", "<leader>vfn", "<cmd>TZNarrow<CR>", opts)
keymap("n", "<leader>vee", "<C-w>=", opts)
keymap("n", "<leader>vsv", "<C-w>t<C-w>H", opts)
keymap("n", "<leader>vsh", "<C-w>t<C-w>K", opts)

------------------------------------------------------------------------------

-- Session

keymap("n", "<leader>sD", ":!mkdir -p ~/.local/share/nvim/session/", {})
keymap("n", "<leader>sS", ":mksession! ~/.local/share/nvim/session/", {})
keymap("n", "<leader>sR", ":source ~/.local/share/nvim/session/", {})

-- Packer

keymap("n", "<leader>vpu", "<cmd>PackerSync<cr>", nor)

-- lvim.keys.normal_mode["<leader-f>"] = false
lvim.builtin.which_key.mappings["f"] = {}
keymap("n", "<leader>a", ":lua require('telescope.builtin').git_files({show_untracked = true})<cr>", opts)
keymap("n", "<leader>fa", "<cmd>Telescope buffers<cr>", opts)
keymap("n", "<leader>ff", "<cmd>Telescope find_files<cr>", opts)
keymap("n", "<leader>fj", "<cmd>Telescope jumplist<cr>", opts)
keymap("n", "<leader>fM", "<cmd>Telescope marks<cr>", opts)
keymap("n", "<leader>fp", "<cmd>Telescope projects<cr>", opts)
keymap("n", "<leader>fq", "<cmd>Telescope quickfix<cr>", opts)
keymap("n", "<leader>fr", "<cmd>FzfLua registers<cr>", opts)
keymap("n", "<leader>ft", "<cmd>FzfLua tabs<cr>", opts)
keymap("n", "<leader>fT", "<cmd>Telescope tags<cr>", opts)
keymap("n", "<leader>fca", "<cmd>FzfLua lsp_code_actions<cr>", opts)
keymap("n", "<leader>fcc", "<cmd>Telescope commands<cr>", opts)
keymap("n", "<leader>fdg", "<cmd>GrepInDirectory<CR>", opts)
keymap("n", "<leader>fdd", "<cmd>FzfLua lsp_document_diagnostics<cr>", opts)
keymap("n", "<leader>fgc", "<cmd>Telescope git_commits<cr>", opts)
keymap("n", "<leader>fgb", "<cmd>Telescope git_branches<cr>", opts)
keymap("n", "<leader>fgs", "<cmd>Telescope git_status<cr>", opts)
keymap("n", "<leader>fht", "<cmd>Telescope help_tags<cr>", opts)
keymap("n", "<leader>flg", "<cmd>Telescope live_grep<cr>", opts)
keymap("n", "<leader>flr", "<cmd>FzfLua lsp_references<cr>", opts)
keymap("n", "<leader>fli", "<cmd>FzfLua lsp_implementations<cr>", opts)
keymap("n", "<leader>fld", "<cmd>FzfLua lsp_definitions<cr>", opts)
keymap("n", "<leader>fmm", "<cmd>FzfLua menus<cr>", opts)
keymap("n", "<leader>fmp", "<cmd>Telescope man_pages<cr>", opts)
keymap("n", "<leader>fss", "<cmd>FzfLua spell_suggest<cr>", opts)
keymap("n", "<leader>fsh", "<cmd>FzfLua search_history<cr>", opts)
keymap("n", "<leader>fvo", "<cmd>Telescope vim_options<cr>", opts)
keymap("n", "<leader>fvb", "<cmd>Telescope builtin<cr>", opts)
keymap("n", "<leader>fvk", "<cmd>Telescope keymaps<cr>", opts)
keymap("n", "<leader>fvc", "<cmd>Telescope colorscheme<cr>", opts)
keymap("n", "<leader>fvC", "<cmd>FzfLua colorschemes<cr>", opts)

-- keymap("n", ",f", "<cmd>FzfLua buffers<cr>", opts)
-- keymap("n", "<leader>a", "<cmd>FzfLua git_files<cr>", opts)
-- keymap("n", "<leader>fq", "<cmd>FzfLua quickfix<cr>", opts)
-- keymap("n", "<leader>ff", "<cmd>FzfLua files<cr>", opts)
-- keymap("n", "<leader>fq", "<cmd>FzfLua live_grep_native<cr>", opts)
-- keymap("n", "<leader>ff", "<cmd>FileInDirectory<CR>", opts)
-- keymap("n", "<leader>fR", "<cmd>Telescope neoclip<cr>", opts)
-- keymap("n", "<leader>fnn", "<cmd>Telescope notify<cr>", opts)

------------------------------------------------------------------------------

-- Nvim Tree

keymap("n", "<leader>nf", "<cmd>NeoTreeReveal<CR>", opts)
keymap("n", "<leader>nn", "<cmd>NeoTreeShowToggle<CR>", opts)

-- colorscheme

keymap("n", "<leader>vcc", ":colorscheme ", {})

-- CODEIUM

vim.keymap.set("i", "<A-l>", function()
	return vim.fn["codeium#Accept"]()
end, { expr = true })
vim.keymap.set("i", "<A-n>", function()
	return vim.fn["codeium#CycleCompletions"](1)
end, { expr = true })
vim.keymap.set("i", "<A-p>", function()
	return vim.fn["codeium#CycleCompletions"](-1)
end, { expr = true })
vim.keymap.set("i", "<A-x>", function()
	return vim.fn["codeium#Clear"]()
end, { expr = true })

-- COPILOT

-- vim.g.copilot_assume_mapped = true
-- keymap("i", "<A-l>", 'copilot#Accept("<CR>")', { silent = true, expr = true })
-- keymap("i", "<A-p>", "copilot#Previous()", { silent = true, expr = true })
-- keymap("i", "<A-n>", "copilot#Next()", { silent = true, expr = true })
