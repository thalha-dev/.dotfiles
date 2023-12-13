-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap.set

local opts = { noremap = true, silent = true }
local nor = { noremap = true }
local empty = {}

keymap("n", "<Space>", "<Nop>", { noremap = true, silent = true })

vim.g.mapleader = " "

vim.g.maplocalleader = " "

------------------------------------------------------------------------------

empty.desc = "Exit command line mode with jk"
keymap("c", "jk", "<C-u><del>", empty)

opts.desc = "Exit insert mode with jk"
keymap("i", "jk", "<ESC>", opts)

------------------------------------------------------------------------------

empty.desc = "switching pianlessly"
keymap("n", ";", ":", empty)

------------------------------------------------------------------------------

empty.desc = "unnamed register to plus register"
keymap("n", "<leader>rup", require("user.util.myfunctions").MY_REG_COPY_UNNAMED_TO_PLUS, empty)

empty.desc = "plus register to unnamed register"
keymap("n", "<leader>rpu", require("user.util.myfunctions").MY_REG_COPY_PLUS_TO_UNNAMED, empty)

empty.desc = "zero register to plus register"
keymap("n", "<leader>rzp", require("user.util.myfunctions").MY_REG_COPY_ZERO_TO_PLUS, empty)

empty.desc = "one register to plus register"
keymap("n", "<leader>rop", require("user.util.myfunctions").MY_REG_COPY_ONE_TO_PLUS, empty)

empty.desc = "percent register to unnamed register"
keymap("n", "<leader>rfu", require("user.util.myfunctions").MY_REG_COPY_PERCENT_TO_UNNAMED, empty)

empty.desc = "percent register to plus register"
keymap("n", "<leader>rfp", require("user.util.myfunctions").MY_REG_COPY_PERCENT_TO_PLUS, empty)

------------------------------------------------------------------------------

empty.desc = "list registers"
keymap("n", "<leader>rL", ":registers<CR>", empty)

------------------------------------------------------------------------------

opts.desc = "copy whole file"
keymap("n", "<leader>yy", "ggyG", opts)

opts.desc = "copy whole file to system clipboard"
keymap("n", "<leader>yc", 'gg"+yG', opts)

opts.desc = "copy current line from start to end"
keymap("n", "<leader>yl", "^v$y", opts)

------------------------------------------------------------------------------

opts.desc = "next in quick fix list"
keymap("n", "<leader>j", "<cmd>cnext<CR>", opts)

opts.desc = "previous in quick fix list"
keymap("n", "<leader>k", "<cmd>cprev<CR>", opts)

------------------------------------------------------------------------------

nor.desc = "search and replace word under cursor"
keymap("n", "<leader>vfr", ":%s/<C-r><C-w>/<C-r><C-w>/gI<Left><Left><Left>", nor)

------------------------------------------------------------------------------

nor.desc = "search word under cursor"
keymap("n", "<leader>v;", "/<C-r><C-w>", nor)

------------------------------------------------------------------------------

empty.desc = "remove current file from bufferlist"
keymap("n", "<leader>DDD", ":bp | :sp | :bn | :bd<Cr>", empty)

------------------------------------------------------------------------------

opts.desc = "close telescope easily"
keymap("n", "<leader>8", "<C-w>j", opts)

------------------------------------------------------------------------------

empty.desc = "toggle cursor line highlight "
keymap("n", "<leader>vcl", require("user.util.myfunctions").MY_CURSOR_TOGGLE, empty)

------------------------------------------------------------------------------

empty.desc = "toggle spell check"
keymap("n", "<leader>vsc", require("user.util.myfunctions").MY_SPELL_TOGGLE, empty)

------------------------------------------------------------------------------

empty.desc = "toggle line wrap"
keymap("n", "<leader>vww", require("user.util.myfunctions").MY_WRAP_TOGGLE, empty)

------------------------------------------------------------------------------

empty.desc = "set indent size to 2"
keymap("n", "<leader>vi2", require("user.util.myfunctions").MY_INDENT_TWO, empty)

empty.desc = "set indent size to 4"
keymap("n", "<leader>vi4", require("user.util.myfunctions").MY_INDENT_FOUR, empty)

------------------------------------------------------------------------------

opts.desc = "Jump to capital letters"
keymap("n", "<leader><leader>k", "/[A-Z]<CR>", opts)

------------------------------------------------------------------------------

opts.desc = "Make file executable"
keymap("n", "<leader>X", ":!chmod +x %<CR>", opts)

------------------------------------------------------------------------------

opts.desc = "vim help for current word under cursor"
keymap("n", "<leader>vwh", ':h <C-R>=expand("<cword>")<CR><CR>', opts)

------------------------------------------------------------------------------

-- Better window navigation

keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

------------------------------------------------------------------------------

-- Make adjusing split sizes a bit more friendly

keymap("n", "<A-C-k>", ":resize +2<CR>", opts)
keymap("n", "<A-C-j>", ":resize -2<CR>", opts)
keymap("n", "<A-C-h>", ":vertical resize -2<CR>", opts)
keymap("n", "<A-C-l>", ":vertical resize +2<CR>", opts)

opts.desc = "make split equal size"
keymap("n", "<leader>vee", "<C-w>=", opts)

opts.desc = "rotate split vertical"
keymap("n", "<leader>vsv", "<C-w>t<C-w>H", opts)

opts.desc = "rotate split horizontal"
keymap("n", "<leader>vsh", "<C-w>t<C-w>K", opts)

------------------------------------------------------------------------------

empty.desc = "create session dir"
keymap("n", "<leader>sD", ":!mkdir -p ~/.local/share/nvim/session/", empty)

empty.desc = "expand command to make new session"
keymap("n", "<leader>sS", ":mksession! ~/.local/share/nvim/session/", empty)

empty.desc = "expand command to source the saved session"
keymap("n", "<leader>sR", ":source ~/.local/share/nvim/session/", empty)

------------------------------------------------------------------------------

empty.desc = "expand command to set colorscheme"
keymap("n", "<leader>vcc", ":colorscheme ", empty)

-- PLUGIN SPECIFIC

empty.desc = "Indent Line Toggle"
keymap("n", "<leader>vii", "<cmd>IndentBlanklineToggle<CR>", opts)

------------------------------------------------------------------------------

opts.desc = "open Mason"
keymap("n", "<leader>lmm", "<cmd>Mason<CR>", opts)

------------------------------------------------------------------------------

-- FUZZY FIND

opts.desc = "fuzzyfind git files"
keymap("n", "<leader>a", ":lua require('telescope.builtin').git_files({show_untracked = true})<cr>", opts)

opts.desc = "fuzzyfind buffers"
keymap("n", "<leader>fa", "<cmd>Telescope buffers<cr>", opts)

opts.desc = "fuzzyfind files"
keymap("n", "<leader>ff", "<cmd>Telescope find_files<cr>", opts)

opts.desc = "fuzzyfind jumplist"
keymap("n", "<leader>fj", "<cmd>Telescope jumplist<cr>", opts)

opts.desc = "fuzzyfind marks"
keymap("n", "<leader>fM", "<cmd>Telescope marks<cr>", opts)

opts.desc = "fuzzyfind projects"
keymap("n", "<leader>fp", "<cmd>Telescope projects<cr>", opts)

opts.desc = "fuzzyfind quick fix list"
keymap("n", "<leader>fq", "<cmd>Telescope quickfix<cr>", opts)

opts.desc = "fuzzyfind registers"
keymap("n", "<leader>fr", "<cmd>FzfLua registers<cr>", opts)

opts.desc = "fuzzyfind tabs"
keymap("n", "<leader>ft", "<cmd>FzfLua tabs<cr>", opts)

opts.desc = "fuzzyfind tags"
keymap("n", "<leader>fT", "<cmd>Telescope tags<cr>", opts)

opts.desc = "fuzzyfind lsp code action"
keymap("n", "<leader>fca", "<cmd>FzfLua lsp_code_actions<cr>", opts)

opts.desc = "fuzzyfind commands"
keymap("n", "<leader>fcc", "<cmd>Telescope commands<cr>", opts)

opts.desc = "fuzzyfind lsp document diagnostics"
keymap("n", "<leader>fdd", "<cmd>FzfLua lsp_document_diagnostics<cr>", opts)

opts.desc = "fuzzyfind git commits"
keymap("n", "<leader>fgc", "<cmd>Telescope git_commits<cr>", opts)

opts.desc = "fuzzyfind git branches"
keymap("n", "<leader>fgb", "<cmd>Telescope git_branches<cr>", opts)

opts.desc = "fuzzyfind git status"
keymap("n", "<leader>fgs", "<cmd>Telescope git_status<cr>", opts)

opts.desc = "fuzzyfind help tags"
keymap("n", "<leader>fht", "<cmd>Telescope help_tags<cr>", opts)

opts.desc = "fuzzyfind live grep"
keymap("n", "<leader>flg", "<cmd>Telescope live_grep<cr>", opts)

opts.desc = "fuzzyfind lsp references"
keymap("n", "<leader>flr", "<cmd>FzfLua lsp_references<cr>", opts)

opts.desc = "fuzzyfind lsp implementations"
keymap("n", "<leader>fli", "<cmd>FzfLua lsp_implementations<cr>", opts)

opts.desc = "fuzzyfind lsp definitions"
keymap("n", "<leader>fld", "<cmd>FzfLua lsp_definitions<cr>", opts)

opts.desc = "fuzzyfind man pages"
keymap("n", "<leader>fmp", "<cmd>Telescope man_pages<cr>", opts)

opts.desc = "fuzzyfind spell suggest"
keymap("n", "<leader>fss", "<cmd>FzfLua spell_suggest<cr>", opts)

opts.desc = "fuzzyfind search history"
keymap("n", "<leader>fsh", "<cmd>FzfLua search_history<cr>", opts)

opts.desc = "fuzzyfind vim options"
keymap("n", "<leader>fvo", "<cmd>Telescope vim_options<cr>", opts)

opts.desc = "fuzzyfind vim keymaps"
keymap("n", "<leader>fvk", "<cmd>Telescope keymaps<cr>", opts)

opts.desc = "fuzzyfind colorscheme"
keymap("n", "<leader>fvc", "<cmd>Telescope colorscheme<cr>", opts)

opts.desc = "fuzzyfind colorscheme 2"
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
------------------------------------------------------------------------------

-- OLD

-- tmux window

-- keymap("n", "<leader>ttv", ":!tmux split-window -h<CR><CR>", opts)
-- keymap("n", "<leader>tth", ":!tmux split-window -l 12<CR><CR>", opts)
------------------------------------------------------------------------------
-- liveServer

-- keymap("n", "<leader>lss", ":LiveServer start<CR>", opts)
-- keymap("n", "<leader>lsx", ":LiveServer stop<CR>", opts)
------------------------------------------------------------------------------

-- keymap("n", "<leader>vff", "<cmd>TZFocus<CR>", opts)
-- keymap("n", "<leader>vfm", "<cmd>TZMinimalist<CR>", opts)
-- keymap("n", "<leader>vfn", "<cmd>TZNarrow<CR>", opts)
-- ------------------------------------------------------------------------------

-- Switch Tabs

-- keymap("n", "<A-h>", ":tabprevious<CR>", opts)
-- keymap("n", "<A-l>", ":tabnext<CR>", opts)
-- keymap("n", "<A-H", ":tabmove -<CR>", opts)
-- keymap("n", "<A-L", ":tabmove +<CR>", opts)
------------------------------------------------------------------------------
--
-- opts.desc ="open vifm"
-- keymap("n", "<leader><leader>f", "<cmd>Vifm<CR>", opts)

-- opts.desc ="open lf"
-- keymap("n", "<leader><leader>F", "<cmd>Lf<CR>", opts)

------------------------------------------------------------------------------

-- GIT

-- keymap("n", "<leader>gv", "<cmd>DiffviewOpen<CR>", opts)
-- keymap("n", "<leader>gt", "<cmd>DiffviewToggleFiles<CR>", opts)
-- keymap("n", "<leader>gsb", "<cmd>Gitsigns toggle_current_line_blame<CR>", opts)
-- keymap("n", "<leader>gsB", "<cmd>Gitsigns blame_line<CR>", opts)
-- keymap("n", "<leader>gss", "<cmd>Gitsigns show<CR>", opts)
-- keymap("n", "<leader>gsv", "<cmd>Gitsigns diffthis<CR>", opts)
-- keymap("n", "<leader>gsh", "<cmd>Gitsigns toggle_linehl<CR>", opts)
-- keymap("n", "<leader>gsw", "<cmd>Gitsigns toggle_word_diff<CR>", opts)
-- keymap("n", "<leader>gst", "<cmd>Gitsigns toggle_signs<CR>", opts)
