syntax on                  " enable syntax highlighting.
filetype plugin indent on  " enable file type based indentation.
set autoindent
set number
set hidden
set noswapfile
set nowrap
set nohlsearch
set termguicolors     " enable true colors support
set incsearch " dynamically move the cursor to the next match.
set relativenumber
set expandtab
set scrolloff=8
set tabstop=4 softtabstop=4
set shiftwidth=4
set splitbelow splitright
set ignorecase
set smartcase
set wildmenu
set tags=tags;

"-----------------------folds
set foldmethod=indent
autocmd BufRead * normal zR

call plug#begin('~/.local/share/nvim/plugged')

"-------------------------------------------------Fuzzy Finder

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim' 

"-------------------------------theme

Plug 'ayu-theme/ayu-vim' 

Plug 'dracula/vim', { 'as': 'dracula' }

Plug 'rebelot/kanagawa.nvim'

Plug 'marko-cerovac/material.nvim'

Plug 'folke/tokyonight.nvim', { 'branch': 'main' }

"-----------------------------NerdTree
"
"Plug 'preservim/nerdtree'

"------------------------------Vifm
"
Plug 'vifm/vifm.vim'

"----------------------------undotree
"
Plug 'mbbill/undotree'

"--------------------------Git
"
Plug 'tpope/vim-fugitive'

"-------------------Scroll Smooth
"
Plug 'psliwka/vim-smoothie'
"
"Plug 'karb94/neoscroll.nvim'


"--------------------------Color Preview
"
"
Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }

"----------------------------Status Line
"
"Plug 'itchyny/lightline.vim'

" -----------------------------Telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

"-------------------------------------------------Syntax Help
"
"----------auto close html tag
"
Plug 'alvan/vim-closetag'

"------------------------brackets
"
Plug 'junegunn/rainbow_parentheses.vim'

"--------------------Modify Surroundings
"
"ysiw* ------> give surround
"select + S + * ------> another way to surround
"yss + * ------> full line surround
"cs + * + # ------> change surround * with #
"ds + * ------> delete surround * 
"
Plug 'tpope/vim-surround'

"---------------Auto Complete brackets
"
Plug 'jiangmiao/auto-pairs'

Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'

"-------------------------Awesome Snippets
"
Plug 'honza/vim-snippets'

" post install (yarn install | npm install) then load plugin only for editing supported files
"Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }

" ---------------------------------Comments
"
"  Select in visual mode and press leader+gc

Plug 'tpope/vim-commentary'



" ----------------------------------Tmux
"
Plug 'preservim/vimux'

"--------------------------------- LSP
"
Plug 'neovim/nvim-lspconfig'

"--------- auto-completion
"
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'

"------------------------------Coc-LSP
"
"for some easy setup
"
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" --------------------------------nvim-treesitter
"--Syntax highlighting
" Plug 'nvim-treesitter/nvim-treesitter'

call plug#end()

"----------------------------Plugin Configs
"

"---------------------Theme
let ayucolor="dark"
" colorscheme ayu
"colorscheme kanagawa
"colorscheme dracula
"--------material
"let g:material_style="darker"
"let g:material_style="oceanic"
"let g:material_style="palenight"
let g:material_style="deep ocean"
colorscheme material

"-------tokyonight
let g:tokyonight_style="night"
" let g:tokyonight_style="dark"
"colorscheme tokyonight


"-------------------------vim-hexokinase Plugin Config
" 
let g:hexokinase_optinpatterns = [
\     'full_hex',
\     'triple_hex',
\     'rgb',
\     'rgba',
\     'hsl',
\     'hsla',
\ ]
let g:Hexokinase_highlighters = ['backgroundfull']

  ""coc.preferences.formatOnSaveFiletypes": [
  "  "javascript",
  "  "typescript",
  "  "typescriptreact",
  "  "json",
  "  "javascriptreact",
  "  "typescript.tsx",
  "  "graphql",
  "  "html",
  "  "css"
  "],

"--------------------------------Coc-Extension-List
"
command! -nargs=0 Prettier :CocCommand prettier.formatFile
let g:coc_global_extensions = [
    \ 'coc-prettier',
    \ 'coc-json',
    \ 'coc-snippets',
    \]

"---------------------------------------vim-sinppets config
"
" Use <C-l> for trigger snippet expand.
"
imap <C-l> <Plug>(coc-snippets-expand)


"===============================================FOLLOW THE LEADER :)
"=====================================================
let mapleader=" "
"=====================================================
"=====================================================


"------------------------------------------------------> General Remapping


nnoremap <leader><cr> :so ~/.config/nvim/init.vim<cr>
inoremap jk <esc>
vnoremap <leader>y "+y
nnoremap <leader>y gg"+yg
nnoremap <leader>x :!chmod +x %<CR>



"------------------------------------------------------Window Remap
"
"-----------------Splits
" nnoremap <leader>vvh :split<cr>
" nnoremap <leader>vvv :vsplit<cr>

"---------------------- Remap splits navigation to just CTRL + hjkl
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"------------------------------------------------- Make adjusing split sizes a bit more friendly
"noremap <silent> <C-Left> :vertical resize +5<CR>
noremap <silent> <A-C-l> :vertical resize +8<CR>
noremap <silent> <A-C-h> :vertical resize -4<CR>
noremap <silent> <A-C-j> :resize +8<CR>
noremap <silent> <A-C-k> :resize -4<CR>
" noremap <silent> <A-C-v> :vertical resize<CR>:resize<CR>
noremap <silent> <leader>vsf :vertical resize<CR>:resize<CR>
noremap <silent> <leader>vse <C-w>=

"------------------------------------------------Switch Tabs
"
nnoremap <silent> <A-h> :tabprevious<CR>
nnoremap <silent> <A-l> :tabnext<CR>

"--------------------------------Move Tabs
"
nnoremap <silent> <A-H> :tabmove -<CR>
nnoremap <silent> <A-L> :tabmove +<CR>

"------------------------------ Change 2 split windows from vert to horiz or horiz to vert
map <leader>th <C-w>t<C-w>H
map <leader>tk <C-w>t<C-w>K

"--------------------------------------VIM
"
"-----------------------Vim Plugin
noremap <leader>vpi :PlugInstall<CR>
noremap <leader>vpr :PlugReload<CR>
noremap <leader>vpup :PlugUpdate<CR>
noremap <leader>vpug :PlugUpgrade<CR>
noremap <leader>vpc :PlugClean<CR>
noremap <leader>vps :PlugStatus<CR>

"------------------------Find and Replace
nnoremap <leader>vfr :%s/

"-------------------------------Vifm
noremap <leader>vvt <cmd>TabVifm<cr>
noremap <leader>vvs <cmd>VsplitVifm<cr>
noremap <leader>vvh <cmd>SplitVifm<cr>
noremap <leader>vvc <cmd>Vifm<cr>

"---------------------------Colorsceme
"v------- vim
    "c-------- colorscheme
        "a-------- ayu
noremap <leader>vcc :colorscheme 
noremap <leader>vca <cmd>colorscheme ayu<cr>
noremap <leader>vcd <cmd>colorscheme dracula<cr>
noremap <leader>vck <cmd>colorscheme kanagawa<cr>

"--------------------------Sessions
"v --- vim
    "s --- session
        "s ---- save
        "r ------ restore
        "m ------- make
            "c ----- current
            "d ----- dir

noremap <leader>vssc <cmd>mksession!<cr>
noremap <leader>vssd :mksession! ~/.config/nvim/session/
noremap <leader>vsmd :!mkdir -p ~/.config/nvim/session/
noremap <leader>vsrc <cmd>source Session.vim<cr>
noremap <leader>vsrd :source ~/.config/nvim/session/


"-----------------------------Unload Netrw
let g:loaded_netrw       = 1
let g:loaded_netrwPlugin = 1


"----------------------------------cocPrettierformat
nnoremap <leader>lfp <cmd>CocCommand prettier.formatFile<cr>



"----------------------------- Removes pipes | that act as seperators on splits
"set fillchars+=vert:.
"set fillchars=stl:,stlnc:=,vert:│,fold:·,diff:-

"-------------------------------Undo tree

noremap <f5> :UndotreeToggle<CR>

"----------------------------------------------------COMMANDS REMAP

command! Bd :bp | :sp | :bn | :bd  " Close buffer without closing window.


"-----------------------------------------Fuzzy Finder

nnoremap <leader>ff <cmd>Telescope find_files<CR> 
nnoremap <leader>fb <cmd>Telescope buffers<CR>
nnoremap <leader>ft <cmd>Telescope tags<CR>
nnoremap <leader>fm <cmd>Telescope marks<CR>
nnoremap <leader>fj <cmd>Telescope jumplist<CR>
nnoremap <leader>fr <cmd>Telescope registers<CR>
nnoremap <leader>fc <cmd>Telescope commands<CR>
nnoremap <leader>fq <cmd>Telescope quickfix<CR>
nnoremap <leader>fgf <cmd>Telescope git_files<CR>
nnoremap <leader>fgc <cmd>Telescope git_commits<CR>
nnoremap <leader>fgb <cmd>Telescope git_branches<CR>
nnoremap <leader>fgs <cmd>Telescope git_status<CR>
nnoremap <leader>fvo <cmd>Telescope vim_options<CR>
nnoremap <leader>fvb <cmd>Telescope builtin<CR>
nnoremap <leader>fvc <cmd>Telescope colorscheme<CR>
nnoremap <leader>flg <cmd>Telescope live_grep<CR>


"-----------------------------------------Vimux
"

nnoremap <leader>ttr <cmd>VimuxPromptCommand<CR>
nnoremap <leader>ttl <cmd>VimuxRunLastCommand<CR>
nnoremap <leader>tto <cmd>VimuxOpenRunner<CR>
nnoremap <leader>ttx <cmd>VimuxCloseRunner<CR>
nnoremap <leader>ttt <cmd>VimuxTogglePane<CR>
nnoremap <leader>ttc <cmd>VimuxClearTerminalScreen<CR>


"Split tmux window with leader
nnoremap <silent> <leader>ttv :!tmux split-window -h<CR><CR>
nnoremap <silent> <leader>tth :!tmux split-window -l 12<CR><CR>



"---------------------------------------LSP
"

nnoremap <leader>lli <cmd>LspInfo<CR>
nnoremap <leader>lls <cmd>LspStart<CR>
nnoremap <leader>llx <cmd>LspStop<CR>
nnoremap <leader>llr <cmd>LspRestart<CR>

"-----------------------Copilot
"
nnoremap <leader>lce <cmd>Copilot enable<CR>
nnoremap <leader>lcd <cmd>Copilot disable<CR>
nnoremap <leader>lcs <cmd>Copilot status<CR>

"-----------------------------------------Shell Scripts
"
"s*#
"
"-------s=>shell
"-------*=>subdivision
"-------#=>command alias

nnoremap <leader>S :!
nnoremap <leader>sdl <cmd>!live.sh<CR><CR>
nnoremap <leader>sdk <cmd>!klive.sh<CR><CR>


"colorscheme----------------------------------------------->quickfix

nnoremap <leader>qj <cmd>cnext<CR>
nnoremap <leader>qk <cmd>cprev<CR>

"------------------------------------Move with ALT
"OOOOooooOOOooo
"

nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
vnoremap <a-j> :m '>+1<cr>gv=gv
vnoremap <a-k> :m '<-2<cr>gv=gv


"--------------------------normal mode remap
nnoremap ; :

" nnoremap <Plug>(hello) :echo "Hello"<CR>

" nmap <leader>hhh <Plug>(hello)


"--------------------------command mode remap

command! Bd :bp | :sp | :bn | :bd  " Close buffer without closing window.


cnoremap jk <c-u><del>

cnoremap <A-x> :<c-u>w<cr>:Bd<cr>:q<cr>

"--------------------------------------
"
lua require("thalha")
