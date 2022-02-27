
syntax on                  " Enable syntax highlighting.
filetype plugin indent on  " Enable file type based indentation.

set nowrap
set noswapfile
set nohlsearch
set incsearch
set hidden
set autoindent             " Respect indentation when starting a new line.
set expandtab              " Expand tabs to spaces. 
set tabstop=4              " Number of spaces tab is counted for.
set softtabstop=4
set shiftwidth=4           " Number of spaces to use for autoindent.
set scrolloff=8
set foldmethod=indent
autocmd bufread * normal zR
set number
set relativenumber
set expandtab
set backspace=2            " Fix backspace behavior on most terminals.
set splitbelow splitright
set wildmenu
set tags=tags;
"---------------------------------------Set up persistent undo across all files.
set undodir="$HOME/.vim/undodir"
set undofile
"----------------------------- Removes pipes | that act as seperators on splits
set fillchars+=vert:.

"---------------------------ctags
"autocmd BufWritePost *.py silent! !ctags -R &


"""""""""""""""""""""""""""""""""""""""""""
" Leader Key
"""""""""""""""""""""""""""""""""""""""""""

let mapleader=" "

"-------------------------------------pugins in pack dir
packloadall
silent! helptags ALL   " -------------load help files for all files

"autocmd VimEnter * NERDTree  " Enable NERDTree on Vim startup.

" --------------------------------------plugin-manager

call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'preservim/nerdtree'
Plug 'ayu-theme/ayu-vim'
Plug 'mbbill/undotree'
Plug 'tpope/vim-fugitive'



call plug#end()


set termguicolors     " enable true colors support
let ayucolor="mirage" " for mirage version of theme
"let ayucolor="dark"   " for dark version of theme

colorscheme ayu         " Change a colorscheme.

"---------------------------> Window Remapping

nnoremap <leader>pv :Vex<CR>

"--------------------------------------> General Remapping


nnoremap <leader><CR> :so ~/.vimrc<CR>
inoremap jk <Esc>
vnoremap <leader>y "+y
nnoremap <leader>Y gg"+yG
nnoremap <leader>x :!chmod +x %<CR>




"------------------------------------------------------Window Remap
"
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

"-------------------------------Undo tree

noremap <f5> :UndotreeToggle<CR>


"------------------------------fzf

nnoremap <C-p> :GFiles<CR>
nnoremap <leader>pf :Files<CR> 

"----------------------------------------------->QuickFix

nnoremap <C-j> :cnext<CR>
nnoremap <C-k> :cprev<CR>



"--------------------------normal mode remap
nnoremap ; :

"----------------------------------------------------COMMANDS REMAP

command! Bd :bp | :sp | :bn | :bd  " Close buffer without closing window.

"--------------------------command mode remap
cnoremap jk <c-u><del>

