
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall

endif

call plug#begin()
Plug 'scroloose/nerdcommenter'
Plug 'trusktr/seti.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'YMCD'
call plug#end()

cmap w!! w !sudo tee >/dev/null % 
cmap qq q!
syntax on
filetype plugin on 
set nocompatible
set clipboard=unnamedplus
set nu
set noswapfile
set background=dark
set termguicolors
colorscheme molokai
set backup 
set backupdir=/home/zavarch/.tmp
set ruler
set history=100
set hlsearch
map Q cc "gq
map <F4> :!wc -m %<CR>
inoremap <C-U> <C-G>u<C-U>
augroup vimrcEx
"set g:python3_host_prog

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





