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
" set wildmode=longest,list,full
set wildmenu
set tags=tags;

" :set listchars=tab:\|\ 
" :set list

"-----------------------folds
set foldmethod=indent
autocmd BufRead * normal zR

call plug#begin('~/.local/share/nvim/plugged')

"-------------------------------------------------Fuzzy Finder

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim' 

"-------------------------------theme

Plug 'flazz/vim-colorschemes'

Plug 'katawful/kat.nvim'

Plug 'catppuccin/nvim', {'as': 'catppuccin'}

" Plug 'vim-conf-live/vimconflive2021-colorscheme'

Plug 'ayu-theme/ayu-vim' 

" Plug 'dracula/vim', { 'as': 'dracula' }

Plug 'rebelot/kanagawa.nvim'

" Plug 'marko-cerovac/material.nvim'

Plug 'folke/tokyonight.nvim', { 'branch': 'main' }

Plug 'xiyaowong/nvim-transparent'


"-----------------------------rainbow paranthasis

Plug 'luochen1990/rainbow'

"-----------------------------NerdTree
"
Plug 'preservim/nerdtree'

"------------------------------Vifm
"
Plug 'vifm/vifm.vim'

"------------------------------NvimTree

" Plug 'kyazdani42/nvim-web-devicons' " for file icons
" Plug 'kyazdani42/nvim-tree.lua'

"------------------------------EasyMotion
"
" Plug 'easymotion/vim-easymotion'

"----------------------------undotree
"
Plug 'mbbill/undotree'

"--------------------------Git
"
Plug 'tpope/vim-fugitive'

"-------------------Scroll Smooth
"
Plug 'psliwka/vim-smoothie'

"-------------------Fastest jk
"
Plug 'rhysd/accelerated-jk'


"-------------------multi-cursor
"TODO

" Plug 'mg979/vim-visual-multi', {'branch': 'master'}


"-------------------jump flasher
"
" Plug 'danilamihailov/beacon.nvim'

"
"Plug 'karb94/neoscroll.nvim'

" Debugger Plugins
"
" Plug 'mfussenegger/nvim-dap'
" Plug 'Pocco81/DAPInstall.nvim'
" Plug 'szw/vim-maximizer'

"--------------------------Prettier

" Plug 'sbdchd/neoformat'

"--------------------------browserTextArea
"
" Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }
" Plug 'subnut/nvim-ghost.nvim', {'do': ':call nvim_ghost#installer#install()'}

"--------------------------board
"TODO
"
" Plug 'azabiong/vim-board'

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

"----------indent line
"
Plug 'Yggdroot/indentLine'

"------------------------brackets
"
" Plug 'junegunn/rainbow_parentheses.vim'

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

"------------------emmet
"
Plug 'mattn/emmet-vim'


" Plug 'yuezk/vim-js'
" Plug 'maxmellon/vim-jsx-pretty'

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
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}


call plug#end()

"----------------------------Plugin Configs
"
"set to 0 if you want to enable it later via :RainbowToggle
let g:rainbow_active = 1 

"---------------------Theme
let ayucolor="dark"
" let ayucolor="mirage"
"
"
"--------material
"let g:material_style="darker"
" let g:material_style="oceanic"
"let g:material_style="palenight"
let g:material_style="deep ocean"
"
"-------tokyonight
let g:tokyonight_style="night"
" let g:tokyonight_style="dark"

colorscheme catppuccin

"-------------------------indentLine Config
let g:indentLine_fileTypeExclude= ["help", "undotree", "diff","floaterm","fzf"]
let g:indentLine_bufTypeExclude = ["help","terminal","term:.*"]
let g:indentLine_bufNameExclude = ["vifm"]
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
" let g:indentLine_setConceal = 0
" let g:indentLine_concealcursor = 'inc'
" let g:indentLine_conceallevel = 2


"-------------------------vim-hexokinase Config
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

"------------------------emmet
"
let g:user_emmet_mode='inv'  
" let g:user_emmet_install_global = 0
" autocmd FileType html,css EmmetInstall
" let g:user_emmet_leader_key='<C-Z>'






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
nnoremap <leader>k /[A-Z]<CR>


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

nmap j <Plug>(accelerated_jk_gj)
nmap k <Plug>(accelerated_jk_gk)

"------------------------------------------------- Make adjusing split sizes a bit more friendly
"noremap <silent> <C-Left> :vertical resize +5<CR>
noremap <silent> <A-C-l> :vertical resize +8<CR>
noremap <silent> <A-C-h> :vertical resize -4<CR>
noremap <silent> <A-C-j> :resize +8<CR>
noremap <silent> <A-C-k> :resize -4<CR>
" noremap <silent> <A-C-v> :vertical resize<CR>:resize<CR>
noremap <silent> <leader>vff :vertical resize<CR>:resize<CR>
noremap <silent> <leader>vee <C-w>=

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
"

"-----------------------Vim Help
"
nnoremap <leader>vwh :h <C-R>=expand("<cword>")<CR><CR>


"-----------------------Vim Plugin
noremap <leader>vpi :PlugInstall<CR>
noremap <leader>vpr :PlugReload<CR>
noremap <leader>vpu :PlugUpdate<CR>
noremap <leader>vpg :PlugUpgrade<CR>
noremap <leader>vpc :PlugClean<CR>
noremap <leader>vps :PlugStatus<CR>

"------------------------Find and Replace
" nnoremap <leader>vfr :%s/

nnoremap <leader>vfr :%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>
nnoremap <leader>v; /\<<C-r><C-w>\><Left><Left>

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
noremap <leader>vcj <cmd>colorscheme kat.nvim<cr>
noremap <leader>vcp <cmd>colorscheme catppuccin<cr>
noremap <leader>vck <cmd>colorscheme kanagawa<cr>

"------------Transparent
"
noremap <leader>vct <cmd>TransparentToggle<cr>


"------------Spell Checker
"
noremap <leader>vsc <cmd>setlocal spell<cr>
noremap <leader>vsx <cmd>set nospell<cr>






"---------------------------indentLineToggle
"
noremap <leader>vii <cmd>IndentLinesToggle<cr>





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
" let g:loaded_netrw       = 1
" let g:loaded_netrwPlugin = 1


"----------------------------------cocPrettierformat
nnoremap <leader>lfp <cmd>CocCommand prettier.formatFile<cr>



"----------------------------- Removes pipes | that act as seperators on splits
"set fillchars+=vert:.
"set fillchars=stl:,stlnc:=,vert:│,fold:·,diff:-

"-------------------------------Undo tree

" noremap <f5> :UndotreeToggle<CR>
noremap <leader>vuu :UndotreeToggle<CR>

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
nnoremap <leader>fvk <cmd>Telescope keymaps<CR>
nnoremap <leader>fvc <cmd>Telescope colorscheme<CR>
nnoremap <leader>flg <cmd>Telescope live_grep<CR>


"-----------------------------------------NerdTree
"
nnoremap <leader>nn :NERDTreeToggle<CR>
nnoremap <leader>nf :NERDTreeFind<CR>
nnoremap <leader>ng :NERDTreeVCS<CR>


"-----------------------------------------EasyMotion
"
" map <leader><leader>f <Plug>(easymotion-overwin-f)
" map <leader><leader>w <Plug>(easymotion-overwin-w)
  


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
"
nnoremap ; :

" nnoremap <Plug>(hello) :echo "Hello"<CR>

" nmap <leader>hhh <Plug>(hello)


"--------------------------command mode remap

command! DD :bp | :sp | :bn | :bd  " Close buffer without closing window.


cnoremap jk <c-u><del>

cnoremap <A-x> :<c-u>w<cr>:DD<cr>:q<cr>

"--------------------------------------

" autocmd BufEnter,BufWinEnter,TabEnter * :LspStop
" autocmd BufEnter,BufWinEnter,TabEnter * :Copilot disable


" augroup LSP_OFF
"     autocmd!
"     autocmd BufEnter * :LspStop
"     autocmd BufEnter * :Copilot disable
" augroup END



lua require("thalha")
