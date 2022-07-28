local opts = { noremap = true, silent = true }
local nor = { noremap = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--- This is how to create funtcions
-- local function vifm_current_dir()
-- 	local st = "marks"
-- 	local command = string.format(":Telescope %s", st)
-- 	vim.cmd(command)
-- end

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --

-- Fuzzy Find
keymap("n", "<leader>ff", "<cmd>Telescope find_files<cr>", opts)
keymap("n", "<leader>fb", "<cmd>Telescope buffers<cr>", opts)
keymap("n", "<leader>ft", "<cmd>Telescope tags<cr>", opts)
keymap("n", "<leader>fm", "<cmd>Telescope marks<cr>", opts)
keymap("n", "<leader>fj", "<cmd>Telescope jumplist<cr>", opts)
keymap("n", "<leader>fr", "<cmd>Telescope registers<cr>", opts)
keymap("n", "<leader>fcc", "<cmd>Telescope commands<cr>", opts)
keymap("n", "<leader>fq", "<cmd>Telescope quickfix<cr>", opts)
keymap("n", "<leader>fgg", "<cmd>Telescope git_files<cr>", opts)
keymap("n", "<leader>fgc", "<cmd>Telescope git_commits<cr>", opts)
keymap("n", "<leader>fgb", "<cmd>Telescope git_branches<cr>", opts)
keymap("n", "<leader>fgs", "<cmd>Telescope git_status<cr>", opts)
keymap("n", "<leader>fvo", "<cmd>Telescope vim_options<cr>", opts)
keymap("n", "<leader>fvb", "<cmd>Telescope builtin<cr>", opts)
keymap("n", "<leader>fvk", "<cmd>Telescope keymaps<cr>", opts)
keymap("n", "<leader>fvc", "<cmd>Telescope colorscheme<cr>", opts)
keymap("n", "<leader>flg", "<cmd>Telescope live_grep<cr>", opts)
keymap("n", "<leader>fmp", "<cmd>Telescope man_pages<cr>", opts)
keymap("n", "<leader>fht", "<cmd>Telescope help_tags<cr>", opts)

-- Vifm
keymap("n", "<leader>vvc", ":Vifm<cr>", opts)
keymap("n", "<leader>vvh", ":SplitVifm<cr>", opts)
keymap("n", "<leader>vvs", ":VsplitVifm<cr>", opts)
keymap("n", "<leader>vvl", ":TabVifm<cr>", opts)
-- keymap("n", "<leader>vf", "<cmd>Fzf<cr>", opts)

-- Transparent

keymap("n", "<leader>vct", "<cmd>TransparentToggle<CR>", opts)

-- Easy Install
keymap("n", "<leader>vpi", "<cmd>PackerInstall<cr>", nor)
keymap("n", "<leader>vpc", "<cmd>PackerClean<cr>", nor)
keymap("n", "<leader>vps", "<cmd>PackerStatus<cr>", nor)
keymap("n", "<leader>vpu", "<cmd>PackerUpdate<cr>", nor)

-- tmux window

keymap("n", "<leader>ttv", ":!tmux split-window -h<CR><CR>", opts)
keymap("n", "<leader>tth", ":!tmux split-window -l 12<CR><CR>", opts)

-- Indent Line
keymap("n", "<leader>vii", "<cmd>IndentBlanklineToggle<CR>", opts)

-- Execute current file
keymap("n", "<leader>rrr", ":w<CR>:source %<CR>", opts)

-- Quickfix
keymap("n", "<leader>aj", "<cmd>cnext<CR>", opts)
keymap("n", "<leader>ak", "<cmd>cprev<CR>", opts)

-- LSP
keymap("n", "<leader>lli", "<cmd>LspInfo<CR>", opts)
keymap("n", "<leader>lls", "<cmd>LspStart<CR>", opts)
keymap("n", "<leader>llx", "<cmd>LspStop<CR>", opts)

-- Nvim Tree
keymap("n", "<leader>nf", "<cmd>NeoTreeReveal<CR>", opts)
keymap("n", "<leader>nn", "<cmd>NeoTreeShowToggle<CR>", opts)

-- switching pianlessly
keymap("n", ";", ":", {})

-- Ron some script or commands
keymap("n", "<leader>S", ":!", {})
-- Accelerated jk
-- keymap("n", "j" , "<Plug>(accelerated_jk_gj)", opts)
-- keymap("n", "k" , "<Plug>(accelerated_jk_gk)", opts)
keymap("n", "j", "<Plug>(accelerated_jk_gj)", {})
keymap("n", "k", "<Plug>(accelerated_jk_gk)", {})

-- -- Find and Replace
keymap("n", "<leader>vfr", ":%s/<C-r><C-w>/<C-r><C-w>/gI<Left><Left><Left>", nor)
keymap("n", "<leader>v;", "/<C-r><C-w>", nor)

-- colorscheme
keymap("n", "<leader>vcc", ":colorscheme ", {})

-- Source init.lua
keymap("n", "<leader><CR>", ":so ~/.config/nvim/init.lua<CR>", opts)

-- Jump to capital letters
keymap("n", "<leader>k", "/[A-Z]<CR>", opts)

-- Registers
keymap("n", "<leader>yc", 'gg"+yG', opts)
keymap("n", "<leader>yy", "ggVGy", opts)
keymap("n", "<leader>dyy", "ggVGd", opts)

-- Make file executable
keymap("n", "<leader>x", ":!chmod +x %<CR>", opts)

-- Test with plenary
keymap("n", ",t", "<Plug>PlenaryTestFile", opts)

-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Make adjusing split sizes a bit more friendly
keymap("n", "<A-C-k>", ":resize +2<CR>", opts)
keymap("n", "<A-C-j>", ":resize -2<CR>", opts)
keymap("n", "<A-C-h>", ":vertical resize -2<CR>", opts)
keymap("n", "<A-C-l>", ":vertical resize +2<CR>", opts)
keymap("n", "<leader>vff", ":vertical resize<CR>:resize<CR>", opts)
keymap("n", "<leader>vee", "<C-w>=", opts)
keymap("n", "<leader>vsv", "<C-w>t<C-w>H", opts)
keymap("n", "<leader>vsh", "<C-w>t<C-w>K", opts)

-- toggleterm
keymap("n", "<leader>tda", ":lua _NCDU_TOGGLE()<CR>", nor)
keymap("n", "<leader>tcu", ":lua _HTOP_TOGGLE()<CR>", nor)
keymap("n", "<leader>trn", ":lua _NODE_TOGGLE()<CR>", nor)
keymap("n", "<leader>trp", ":lua _PYTHON_TOGGLE()<CR>", nor)
keymap("n", "<leader>trj", ":lua _JSHELL_TOGGLE()<CR>", nor)
keymap("n", "<leader>thh", ":ToggleTerm direction=horizontal size=10<CR>", nor)

-- Switch Tabs
keymap("n", "<A-h>", ":tabprevious<CR>", opts)
keymap("n", "<A-l>", ":tabnext<CR>", opts)

--  Move Tabs
keymap("n", "<A-H>", ":tabmove -<CR>", opts)
keymap("n", "<A-L>", ":tabmove +<CR>", opts)

-- Change 2 split windows from vert to horiz or horiz to vert
keymap("n", "<leader>th", "<C-w>t<C-w>H", opts)
keymap("n", "<leader>tk", "<C-w>t<C-w>K", opts)

-- Vim Help
keymap("n", "<leader>vwh", ':h <C-R>=expand("<cword>")<CR><CR>', opts)

-- Navigate buffers
-- keymap("n", "<S-l>", ":bnext<CR>", opts)
-- keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Move text up and down
keymap("n", "<A-j>", ":m .+1<CR>==", opts)
keymap("n", "<A-k>", ":m .-2<CR>==", opts)

-- color picker
keymap("n", "<leader>vcp", "<cmd>PickColor<cr>", opts)

-- Insert --
-- Press jk fast to exit insert mode
keymap("i", "jk", "<ESC>", opts)

-- color picker
keymap("i", "<C-s>", "<cmd>PickColorInsert<cr>", opts)
-- Visual --

-- copy to system clipboard
keymap("v", "<leader>y", '"+y', opts)

-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m '>+1<CR>gv==gv", opts)
keymap("v", "<A-k>", ":m '<+2<CR>gv==gv", opts)
-- keymap("v", "<A-j>", ":m .+1<CR>==", opts)
-- keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Terminal --
-- Better terminal navigation
keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)

-- Command
keymap("c", "Bd", ":bp | :sp | :bn | :bd", term_opts)
keymap("c", "jk", "<C-u><del>", {})
