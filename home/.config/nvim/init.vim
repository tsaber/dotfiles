
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall

endif

call plug#begin()

" silent! cave
" auto complete

Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'tpope/vim-surround'
Plug 'tpope/vim-classpath'
Plug 'tpope/vim-sensible'
Plug 'christoomey/vim-tmux-navigator'
Plug 'ap/vim-css-color'
Plug 'edkolev/tmuxline.vim'
Plug 'christoomey/vim-tmux-runner'
Plug 'dag/vim-fish'
Plug 'pangloss/vim-javascript'
Plug 'mbbill/undotree'
Plug 'airblade/vim-gitgutter'
Plug 'mhinz/vim-signify'
Plug 'tomtom/quickfixsigns_vim'
Plug 'vim-syntastic/syntastic'
Plug 'itchyny/lightline.vim'
call plug#end()

cmap w!! w !sudo tee >/dev/null % 
cmap Q! q!
syntax on
filetype plugin on 
set background=dark
set ruler
set termguicolors                    " Enable GUI colors for the terminal to get truecolor


set history=100
set hlsearch
inoremap <C-U> <C-G>u<C-U>
let g:tmuxline_powerline_separators = 0
set autoread
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


if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif

