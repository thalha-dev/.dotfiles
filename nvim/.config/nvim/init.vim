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

"--------------------------Color Preview
"
Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }

"----------------------------Status Line
"
Plug 'itchyny/lightline.vim'

" -----------------------------Telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

"-------------------------------------------------Syntax Help
"
"----------auto close html tag
"
Plug 'alvan/vim-closetag'

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
"Plug 'preservim/vimux'

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
"
Plug 'nvim-treesitter/nvim-treesitter'

call plug#end()

"----------------------------Plugin Configs
"

"---------------------Theme
let ayucolor="dark"
colorscheme ayu

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


"+++++++++++++++++++++++++++++++++++++++++++++FOLLOW THE LEADER :)

let mapleader=" "



"--------------------------------------------> Window Remapping

"nnoremap <leader>pv :Vex<CR>

"------------------------------------------------------> General Remapping


nnoremap <leader><cr> :so ~/.config/nvim/init.vim<cr>
inoremap jk <esc>
vnoremap <leader>y "+y
nnoremap <leader>y gg"+yg
nnoremap <leader>x :!chmod +x %<CR>


"------------------------------------------------------Window Remap

"---------------------- Remap splits navigation to just CTRL + hjkl
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"------------------------------------------------- Make adjusing split sizes a bit more friendly
noremap <silent> <C-Left> :vertical resize +5<CR>
noremap <silent> <C-Right> :vertical resize -2<CR>
noremap <silent> <C-Up> :resize +5<CR>
noremap <silent> <C-Down> :resize -2<CR>

"------------------------------ Change 2 split windows from vert to horiz or horiz to vert
map <Leader>th <C-w>t<C-w>H
map <Leader>tk <C-w>t<C-w>K

"-------------------------------Vifm
noremap <Leader>nn <cmd>TabVifm<cr>
noremap <Leader>nv <cmd>VsplitVifm<cr>
noremap <Leader>nh <cmd>SplitVifm<cr>
noremap <Leader>na <cmd>Vifm<cr>

"-----------------------------Unload Netrw
let g:loaded_netrw       = 1
let g:loaded_netrwPlugin = 1


"----------------------------------cocPrettierformat
nnoremap <leader>fp <cmd>CocCommand prettier.forceFormatDocument<cr>



"----------------------------- Removes pipes | that act as seperators on splits
"set fillchars+=vert:.

"-------------------------------Undo tree

noremap <f5> :UndotreeToggle<CR>

"----------------------------------------------------COMMANDS REMAP

command! Bd :bp | :sp | :bn | :bd  " Close buffer without closing window.


"-----------------------------------------Fuzzy Finder

nnoremap <leader>pf <cmd>Telescope find_files<CR> 
nnoremap <leader>pb <cmd>Telescope buffers<CR>
nnoremap <leader>pt <cmd>Telescope tags<CR>
nnoremap <leader>pm <cmd>Telescope marks<CR>
nnoremap <leader>pr <cmd>Telescope registers<CR>
nnoremap <leader>pc <cmd>Telescope commands<CR>
nnoremap <leader>pq <cmd>Telescope quickfix<CR>
nnoremap <leader>pgf <cmd>Telescope git_files<CR>
nnoremap <leader>pgc <cmd>Telescope git_commits<CR>
nnoremap <leader>pgb <cmd>Telescope git_branches<CR>
nnoremap <leader>pgs <cmd>Telescope git_status<CR>
nnoremap <leader>pvo <cmd>Telescope vim_options<CR>
nnoremap <leader>pvb <cmd>Telescope builtin<CR>
nnoremap <leader>pvc <cmd>Telescope colorscheme<CR>
nnoremap <leader>plg <cmd>Telescope live_grep<CR>


"-----------------------------------------Shell Scripts
"
"s**
"
"-------s=>shell
"-------*=>subdivision
"-------#=>command alias

nnoremap <leader>sdl <cmd>!live.sh<CR>
nnoremap <leader>sdk <cmd>!klive.sh<CR>


"colorscheme----------------------------------------------->quickfix

nnoremap <leader>jj <cmd>cnext<CR>
nnoremap <leader>jk <cmd>cprev<CR>

"------------------------------------Move with ALT
"OOOOooooOOOooo
"

nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
vnoremap <a-j> :m '>+1<cr>gv=gv
vnoremap <a-k> :m '<-2<cr>gv=gv

" nnoremap <A-C-j> yyp
" nnoremap <A-C-k> yyP
"



"--------------------------normal mode remap
nnoremap ; :



"--------------------------command mode remap

command! Bd :bp | :sp | :bn | :bd  " Close buffer without closing window.


cnoremap jk <c-u><del>

"--------------------------------------
"
lua require("thalha")
