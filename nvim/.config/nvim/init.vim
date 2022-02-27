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
Plug 'preservim/nerdtree'

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

"-------------------------------Syntax Help
"
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround'

Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'

" ---------------------------------Comments

Plug 'tpope/vim-commentary'


"--------------------------------- LSP
"
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'


call plug#end()


let ayucolor="dark"
colorscheme ayu

"-------------------------vim-hexokinase Plugin Congig
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


let mapleader=" "



"--------------------------------------------> Window Remapping

nnoremap <leader>pv :Vex<CR>

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

"-------------------------------Nerdtree
noremap <Leader>n :NERDTreeToggle<cr>


"----------------------------- Removes pipes | that act as seperators on splits
"set fillchars+=vert:.

"-------------------------------Undo tree

noremap <f5> :UndotreeToggle<CR>

"----------------------------------------------------COMMANDS REMAP

command! Bd :bp | :sp | :bn | :bd  " Close buffer without closing window.


"-----------------------------------------Fuzzy Finder

nnoremap <C-p> :GFiles<CR>
nnoremap <leader>pf :Files<CR> 

"----------------------------------------------->QuickFix

nnoremap <C-j> :cnext<CR>
nnoremap <C-k> :cprev<CR>

"--------------------------normal mode remap
nnoremap ; :

"--------------------------command mode remap

command! Bd :bp | :sp | :bn | :bd  " Close buffer without closing window.


cnoremap jk <c-u><del>

"--------------------------------------
"
lua require("thalha")
