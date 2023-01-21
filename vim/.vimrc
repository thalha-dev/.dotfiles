syntax enable
syntax on 
filetype plugin indent on  " enable file type based indentation.
set autoindent
set number
set hidden
set noswapfile
set nowrap
set nohlsearch
set termguicolors  
set incsearch " dynamically move the cursor to the next match.
set relativenumber
set background=dark
set expandtab
set encoding=UTF-8
set showmatch				" Show matching brackets
set mouse=a					" Enable the mouse
set scrolloff=8
set tabstop=4 softtabstop=4
set shiftwidth=4
set splitbelow splitright
set ignorecase
set smartcase
set wildmenu
set tags=tags;
set t_Co=256
set foldmethod=indent
autocmd BufRead * normal zR


call plug#begin('~/.vim/plugged')

"-------------------------------------------------Fuzzy Finder

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim' 

"-------------------------------theme

Plug 'ayu-theme/ayu-vim' " or other package manager


"-----------------------------codeium plugin

Plug 'Exafunction/codeium.vim'

"-----------------------------rainbow paranthasis

Plug 'luochen1990/rainbow'

"-----------------------------NerdTree
"
Plug 'preservim/nerdtree'

"------------------------------Vifm
"
Plug 'vifm/vifm.vim'

"----------------------------undotree
"
Plug 'mbbill/undotree'


"-------------------Scroll Smooth
"
Plug 'psliwka/vim-smoothie'

"-------------------Fastest jk
"
Plug 'rhysd/accelerated-jk'


"----------auto close html tag
"
Plug 'alvan/vim-closetag'

"----------indent line
"
Plug 'Yggdroot/indentLine'

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


" ---------------------------------Comments
"  Select in visual mode and press leader+gc

Plug 'tpope/vim-commentary'


"---------------------------DevIcons

Plug 'ryanoasis/vim-devicons'


call plug#end()

"----------------------------Plugin Configs
"
"set to 0 if you want to enable it later via :RainbowToggle
let g:rainbow_active = 1 

let ayucolor="dark"   " for dark version of theme

colorscheme ayu


"-------------------------indentLine Config
let g:indentLine_fileTypeExclude= ["help", "undotree", "diff","floaterm","fzf"]
let g:indentLine_bufTypeExclude = ["help","terminal","term:.*"]
let g:indentLine_bufNameExclude = ["vifm"]
let g:indentLine_char_list = ['|', '¦', '┆', '┊']

"------------------------emmet
"
let g:user_emmet_mode='inv'  


"===============================================FOLLOW THE LEADER :)
"=====================================================
let mapleader=" "
"=====================================================
"=====================================================


"------------------------------------------------------> General Remapping
"
nnoremap <leader><cr> :so ~/.vimrc<cr>
inoremap jk <esc>
vnoremap <leader>y "+y
nnoremap <leader>yc gg"+yG
nnoremap <leader>yy ggVGy
nnoremap <leader>dyy ggVGd
nnoremap <leader>X :!chmod +x %<CR>
" nnoremap <leader>k /[A-Z]<CR>

"------------------------Find and Replace
"
nnoremap <leader>vfr :%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>
nnoremap <leader>v; /\<<C-r><C-w>\><Left><Left>

vnoremap p "_dP


"------------------------------------------------------Window Remap
"
"-----------------Splits
" nnoremap <leader>vvh :split<cr>
" nnoremap <leader>vvv :vsplit<cr>

"---------------------- Remap splits navigation to just CTRL + hjkl
"
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nmap j <Plug>(accelerated_jk_gj)
nmap k <Plug>(accelerated_jk_gk)

"------------------------------------------------- Make adjusing split sizes a bit more friendly
"
noremap <silent> <A-C-l> :vertical resize +8<CR>
noremap <silent> <A-C-h> :vertical resize -4<CR>
noremap <silent> <A-C-j> :resize +8<CR>
noremap <silent> <A-C-k> :resize -4<CR>
noremap <silent> <leader>vff :vertical resize<CR>:resize<CR>
noremap <silent> <leader>vee <C-w>=

"------------------------------------------------Switch Tabs
"
nnoremap <silent> <leader>k :tabprevious<CR>

"--------------------------------Move Tabs
"
nnoremap <silent> <A-H> :tabmove -<CR>
nnoremap <silent> <A-L> :tabmove +<CR>

"------------------------------ Change 2 split windows from vert to horiz or horiz to vert
"
nnoremap <leader>th <C-w>t<C-w>H
nnoremap <leader>tk <C-w>t<C-w>K


"-----------------------Vim Help
"
nnoremap <leader>vwh :h <C-R>=expand("<cword>")<CR><CR>


"-----------------------Vim Plugin
"
noremap <leader>vpi :PlugInstall<CR>
noremap <leader>vpu :PlugUpdate<CR>
noremap <leader>vpg :PlugUpgrade<CR>
noremap <leader>vpc :PlugClean<CR>
noremap <leader>vps :PlugStatus<CR>


"-------------------------------Vifm
"
noremap <leader>vvl <cmd>TabVifm<cr>
noremap <leader>vvs <cmd>VsplitVifm<cr>
noremap <leader>vvh <cmd>SplitVifm<cr>
noremap <leader>vvc <cmd>Vifm<cr>

"---------------------------Colorsceme
"v------- vim
    "c-------- colorscheme
noremap <leader>vcc :colorscheme 



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

" noremap <leader>ssS <cmd>mksession!<cr>
" noremap <leader>scR <cmd>source Session.vim<cr>
noremap <leader>sS :mksession! ~/.local/share/session/
noremap <leader>sD :!mkdir -p ~/.local/share/session/
noremap <leader>sR :source ~/.local/share/nvim/session/


"-------------------------------Undo tree
"
noremap <leader>vuu :UndotreeToggle<CR>

"----------------------------------------------------COMMANDS REMAP
"
command! Bd :bp | :sp | :bn | :bd  " Close buffer without closing window.


"-----------------------------------------Fuzzy Finder
"
nnoremap <leader>ff <cmd>Files<CR> 
nnoremap <leader>fa :Files 
nnoremap <leader>fb <cmd>Buffers<CR>
nnoremap <leader>ft <cmd>Tags<CR>
nnoremap <leader>fm <cmd>Marks<CR>
nnoremap <leader>fcc <cmd>Commands<CR>
nnoremap <leader>fch <cmd>History:<CR>
nnoremap <leader>fgg <cmd>GFiles<CR>
nnoremap <leader>fgc <cmd>Commits<CR>
nnoremap <leader>fgs <cmd>GFiles?<CR>
nnoremap <leader>fvk <cmd>Maps<CR>
nnoremap <leader>fvc <cmd>Colors<CR>
nnoremap <leader>flg <cmd>Rg<CR>
nnoremap <leader>fsh <cmd>History/<CR>


"-----------------------------------------NerdTree
"
nnoremap <leader>nn :NERDTreeToggle<CR>
nnoremap <leader>nf :NERDTreeFind<CR>
nnoremap <leader>ng :NERDTreeVCS<CR>


"Split tmux window with leader
"
nnoremap <silent> <leader>ttv :!tmux split-window -h<CR><CR>
nnoremap <silent> <leader>tth :!tmux split-window -l 12<CR><CR>


"-----------------------------------------Shell Scripts
"
"s*#
"
"-------s=>shell
"-------*=>subdivision
"-------#=>command alias

nnoremap <leader>S :!


"----------------------------------------------->quickfix
"
nnoremap <leader>qj <cmd>cnext<CR>
nnoremap <leader>qk <cmd>cprev<CR>

"------------------------------------Move with ALT
"
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
vnoremap <a-j> :m '>+1<cr>gv=gv
vnoremap <a-k> :m '<-2<cr>gv=gv

"--------------------------normal mode remap
"
nnoremap ; :


"--------------------------command mode remap
"
command! DD :bp | :sp | :bn | :bd  " Close buffer without closing window.


"-------------------------jk to escape command mode
"
cnoremap jk <c-u><del>

"-------------------------save and close the buffer from memory
"
cnoremap <A-x> :<c-u>w<cr>:DD<cr>:q<cr>
