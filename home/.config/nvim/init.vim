
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall

endif

call plug#begin()


" auto complete

Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'xolox/vim-misc'
Plug 'xolox/vim-notes'
Plug 'bling/vim-airline'
Plug 'godlygeak/tabular'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-surround'
Plug 'christoomey/vim-tmux-navigator'

" better statusline
call plug#end()

cmap w!! w !sudo tee >/dev/null % 
syntax on
filetype plugin on 
colo dracula
set background=dark
set ruler

set termguicolors                    " Enable GUI colors for the terminal to get truecolor
                             
set history=100
set hlsearch
inoremap <C-U> <C-G>u<C-U>
let g:airline_theme='behelit'


set showcmd
set ignorecase
set smarttab
set hlsearch
set number
set noswapfile
set cursorline
set timeoutlen=500
"set timeoutlen=0

" for cross-terminal clipboard support
set clipboard=unnamed
set clipboard^=unnamedplus







