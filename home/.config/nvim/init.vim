
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall

endif

call plug#begin()

Plug 'scrooloose/nerdcommenter'
Plug 'trusktr/seti.vim'
Plug 'honza/vim-snippets'
call plug#end()

cmap w!! w !sudo tee >/dev/null % 
cmap qq q!
syntax on
filetype plugin indent on 
set nocompatible
set clipboard=unnamedplus
set nu
set noswapfile
set background=dark
set termguicolors
colorscheme desert
set backup 
set backupdir=/home/zavarch/.tmp
set ruler
set history=100
set hlsearch
map Q gq
map <F4> :!wc -m %<CR>
inoremap <C-U> <C-G>u<C-U>
augroup vimrcEx




autocmd!
autocmd FileType text setlocal textwidth=78
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

  " When editing a file, always jump to the last known cursor position.  
  " Don't do it when the position is invalid or when inside an event handler
  autocmd BufReadPost *
    \ if line("'\"") >= 1 && line("'\"") <= line("$") |
    \   execute "normal! g`\"" |
    \ endif

if !exists(":DiffOrig")
  command DiffOrig vert new | set buftype=nofile | read ++edit # | 0d_ | diffthis
                 \ | wincmd p | diffthis
endif





