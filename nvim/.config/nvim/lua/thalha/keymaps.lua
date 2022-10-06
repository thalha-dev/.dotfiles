local opts = { noremap = true, silent = true }
local nor = { noremap = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

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
-- keymap("n", "<leader>ff", "<cmd>FzfLua files<cr>", opts)
keymap("n", "<leader>fb", "<cmd>Telescope buffers<cr>", opts)
-- keymap("n", "<leader>fb", "<cmd>FzfLua buffers<cr>", opts)
keymap("n", "<leader>ft", "<cmd>Telescope tags<cr>", opts)
keymap("n", "<leader>fm", "<cmd>Telescope marks<cr>", opts)
keymap("n", "<leader>fj", "<cmd>Telescope jumplist<cr>", opts)
keymap("n", "<leader>fr", "<cmd>Telescope registers<cr>", opts)
keymap("n", "<leader>fcc", "<cmd>Telescope commands<cr>", opts)
keymap("n", "<leader>fq", "<cmd>Telescope quickfix<cr>", opts)
-- keymap("n", "<leader>fq", "<cmd>FzfLua quickfix<cr>", opts)
keymap("n", "<leader>a", "<cmd>Telescope git_files<cr>", opts)
-- keymap("n", "<leader>a", "<cmd>FzfLua git_files<cr>", opts)
keymap("n", "<leader>fgc", "<cmd>Telescope git_commits<cr>", opts)
keymap("n", "<leader>fgb", "<cmd>Telescope git_branches<cr>", opts)
keymap("n", "<leader>fgs", "<cmd>Telescope git_status<cr>", opts)
keymap("n", "<leader>fvo", "<cmd>Telescope vim_options<cr>", opts)
keymap("n", "<leader>fvb", "<cmd>Telescope builtin<cr>", opts)
keymap("n", "<leader>fvk", "<cmd>Telescope keymaps<cr>", opts)
keymap("n", "<leader>fvc", "<cmd>Telescope colorscheme<cr>", opts)
keymap("n", "<leader>fvC", "<cmd>FzfLua colorschemes<cr>", opts)
keymap("n", "<leader>flg", "<cmd>Telescope live_grep<cr>", opts)
-- keymap("n", "<leader>fq", "<cmd>FzfLua live_grep_native<cr>", opts)
keymap("n", "<leader>fmp", "<cmd>Telescope man_pages<cr>", opts)
keymap("n", "<leader>fht", "<cmd>Telescope help_tags<cr>", opts)
keymap("n", "<leader>ftt", "<cmd>FzfLua tabs<cr>", opts)
keymap("n", "<leader>fss", "<cmd>FzfLua spell_suggest<cr>", opts)
keymap("n", "<leader>fsh", "<cmd>FzfLua search_history<cr>", opts)
keymap("n", "<leader>flr", "<cmd>FzfLua lsp_references<cr>", opts)
keymap("n", "<leader>fdd", "<cmd>FzfLua lsp_document_diagnostics<cr>", opts)
keymap("n", "<leader>fli", "<cmd>FzfLua lsp_implementations<cr>", opts)
keymap("n", "<leader>fld", "<cmd>FzfLua lsp_definitions<cr>", opts)
keymap("n", "<leader>fmm", "<cmd>FzfLua menus<cr>", opts)
keymap("n", "<leader>fca", "<cmd>FzfLua lsp_code_actions<cr>", opts)

-- Vifm
keymap("n", "<leader>vvc", ":Vifm<cr>", opts)
keymap("n", "<leader>vvh", ":SplitVifm<cr>", opts)
keymap("n", "<leader>vvs", ":VsplitVifm<cr>", opts)
keymap("n", "<leader>vvl", ":TabVifm<cr>", opts)

-- LF
keymap("n", "<leader>fa", ":Lf<CR>", opts)

-- Transparent

keymap("n", "<leader>vct", "<cmd>TransparentToggle<CR>", opts)

-- Easy Install
keymap("n", "<leader>vpi", "<cmd>PackerInstall<cr>", nor)
keymap("n", "<leader>vpc", "<cmd>PackerClean<cr>", nor)
keymap("n", "<leader>vps", "<cmd>PackerStatus<cr>", nor)
keymap("n", "<leader>vpu", "<cmd>PackerSync<cr>", nor)

-- tmux window

keymap("n", "<leader>ttv", ":!tmux split-window -h<CR><CR>", opts)
keymap("n", "<leader>tth", ":!tmux split-window -l 12<CR><CR>", opts)

-- Indent Line
keymap("n", "<leader>vii", "<cmd>IndentBlanklineToggle<CR>", opts)

-- Execute current file
keymap("n", "<leader>rrr", ":w<CR>:source %<CR>", opts)

-- Quickfix
keymap("n", "<leader>,j", "<cmd>cnext<CR>", opts)
keymap("n", "<leader>,k", "<cmd>cprev<CR>", opts)

-- LSP
keymap("n", "<leader>lli", "<cmd>LspInfo<CR>", opts)
keymap("n", "<leader>lls", "<cmd>LspStart<CR>", opts)
keymap("n", "<leader>llx", "<cmd>LspStop<CR>", opts)

-- Nvim Tree
keymap("n", "<leader>nf", "<cmd>NeoTreeReveal<CR>", opts)
keymap("n", "<leader>nn", "<cmd>NeoTreeShowToggle<CR>", opts)

-- GIT
keymap("n", "<leader>gv", "<cmd>DiffviewOpen<CR>", opts)
keymap("n", "<leader>gt", "<cmd>DiffviewToggleFiles<CR>", opts)
keymap("n", "<leader>gsb", "<cmd>Gitsigns toggle_current_line_blame<CR>", opts)
keymap("n", "<leader>gsB", "<cmd>Gitsigns blame_line<CR>", opts)
keymap("n", "<leader>gss", "<cmd>Gitsigns show<CR>", opts)
keymap("n", "<leader>gsv", "<cmd>Gitsigns diffthis<CR>", opts)
keymap("n", "<leader>gsh", "<cmd>Gitsigns toggle_linehl<CR>", opts)
keymap("n", "<leader>gsw", "<cmd>Gitsigns toggle_word_diff<CR>", opts)
keymap("n", "<leader>gst", "<cmd>Gitsigns toggle_signs<CR>", opts)

-- Session
keymap("n", "<leader>sD", ":!mkdir -p ~/.local/share/nvim/session/", {})
keymap("n", "<leader>sS", ":mksession! ~/.local/share/nvim/session/", {})
keymap("n", "<leader>sR", ":source ~/.local/share/nvim/session/", {})

-- Mason
keymap("n", "<leader>lmm", "<cmd>Mason<CR>", opts)

-- Markdown Preview Toggle
keymap("n", "<leader>mmt", "<cmd>MarkdownPreviewToggle<CR>", opts)

-- Prettier
keymap("n", "<leader>lfp", "<Plug>(prettier-format)", {})

-- switching pianlessly
keymap("n", ";", ":", {})

-- Ron some script or commands
keymap("n", "<leader>S", ":!", {})

-- Accelerated jk
keymap("n", "j", "<Plug>(accelerated_jk_gj)", {})
keymap("n", "k", "<Plug>(accelerated_jk_gk)", {})

-- -- Find and Replace
keymap("n", "<leader>vfr", ":%s/<C-r><C-w>/<C-r><C-w>/gI<Left><Left><Left>", nor)
keymap("n", "<leader>v;", "/<C-r><C-w>", nor)

-- colorscheme
keymap("n", "<leader>vcc", ":colorscheme ", {})

-- cursorline
keymap("n", "<leader>vcl", ":lua MY_CURSOR_TOGGLE()<CR>", {})

-- spellcheck
keymap("n", "<leader>vsc", ":lua MY_SPELL_TOGGLE()<CR>", {})

-- wraptext
keymap("n", "<leader>vww", ":lua MY_WRAP_TOGGLE()<CR>", {})

-- Source init.lua
keymap("n", "<leader><CR>", ":so ~/.config/nvim/init.lua<CR>", {})
-- Source init.lua
keymap("n", "\\cc", ":so ~/.config/nvim/lua/thalha/colorscheme.lua<CR>", {})

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
-- keymap("n", "<leader>vff", ":vertical resize<CR>:resize<CR>", opts)
keymap("n", "<leader>vff", "<cmd>TZFocus<CR>", opts)
keymap("n", "<leader>vfm", "<cmd>TZMinimalist<CR>", opts)
keymap("n", "<leader>vfn", "<cmd>TZNarrow<CR>", opts)
keymap("n", "<leader>vee", "<C-w>=", opts)
keymap("n", "<leader>vsv", "<C-w>t<C-w>H", opts)
keymap("n", "<leader>vsh", "<C-w>t<C-w>K", opts)

-- toggleterm
keymap("n", "<leader>thh", ":ToggleTerm direction=horizontal size=10<CR>", nor)
keymap("n", "<leader>tda", ":lua _NCDU_TOGGLE()<CR>", nor)
keymap("n", "<leader>ttt", ":lua _HTOP_TOGGLE()<CR>", nor)
keymap("n", "<leader>trn", ":lua _NODE_TOGGLE()<CR>", nor)
keymap("n", "<leader>trl", ":lua _LUA_TOGGLE()<CR>", nor)
keymap("n", "<leader>trj", ":lua _JSHELL_TOGGLE()<CR>", nor)

-- Switch Tabs
--[[ keymap("n", "<A-,>", ":tabprevious<CR>", opts) ]]
--[[ keymap("n", "<A-.>", ":tabnext<CR>", opts) ]]
--[[ keymap("n", "<A-<>", ":tabmove -<CR>", opts) ]]
--[[ keymap("n", "<A->>", ":tabmove +<CR>", opts) ]]

-- Move to previous/next
keymap("n", "<A-,>", "<Cmd>BufferPrevious<CR>", opts)
keymap("n", "<A-.>", "<Cmd>BufferNext<CR>", opts)
keymap("n", "<A-<>", "<Cmd>BufferMovePrevious<CR>", opts)
keymap("n", "<A->>", "<Cmd>BufferMoveNext<CR>", opts)
keymap("n", "<A-1>", "<Cmd>BufferGoto 1<CR>", opts)
keymap("n", "<A-2>", "<Cmd>BufferGoto 2<CR>", opts)
keymap("n", "<A-3>", "<Cmd>BufferGoto 3<CR>", opts)
keymap("n", "<A-4>", "<Cmd>BufferGoto 4<CR>", opts)
keymap("n", "<A-5>", "<Cmd>BufferGoto 5<CR>", opts)
keymap("n", "<A-6>", "<Cmd>BufferGoto 6<CR>", opts)
keymap("n", "<A-7>", "<Cmd>BufferGoto 7<CR>", opts)
keymap("n", "<A-8>", "<Cmd>BufferGoto 8<CR>", opts)
keymap("n", "<A-9>", "<Cmd>BufferGoto 9<CR>", opts)
keymap("n", "<A-0>", "<Cmd>BufferLast<CR>", opts)
keymap("n", "<A-p>", "<Cmd>BufferPin<CR>", opts)
keymap("n", "<A-c>", "<Cmd>BufferClose<CR>", opts)
keymap("n", ",f", "<Cmd>BufferPick<CR>", opts)

-- Vim Help
keymap("n", "<leader>vwh", ':h <C-R>=expand("<cword>")<CR><CR>', opts)

-- Navigate buffers

-- Move text up and down
keymap("n", "<A-j>", ":m .+1<CR>==", opts)
keymap("n", "<A-k>", ":m .-2<CR>==", opts)

-- color picker
keymap("n", "<leader>vcp", "<cmd>CccPick<cr>", opts)
keymap("n", "<leader>vcC", "<cmd>CccConvert<cr>", opts)

-- colorizer
keymap("n", "<leader>vcx", "<cmd>ColorizerToggle<cr>", opts)

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
keymap("c", "Bd", "bp | :sp | :bn | :bd", {})
keymap("c", "jk", "<C-u><del>", {})
