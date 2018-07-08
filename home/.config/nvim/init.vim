
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall

endif

call plug#begin()

" syntax highlighting
Plug 'peterhoeg/vim-qml'
Plug 'artoj/qmake-syntax-vim'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'tikhomirov/vim-glsl'

" auto complete
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer --racer-completer --omnisharp-completer --tern-completer' }
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
"Plug 'fatih/vim-go'
Plug 'nvie/vim-flake8'
Plug 'davidhalter/jedi-vim'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" navigation/search file
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'rking/ag.vim'
Plug 'dkprice/vim-easygrep'

" note
Plug 'xolox/vim-misc'
Plug 'xolox/vim-notes'

" editing
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-surround'

" better statusline
call plug#end()

cmap w!! w !sudo tee >/dev/null % 
cmap q!! wq!
syntax on
filetype plugin on 
set clipboard=unnamedplus
set nu
colo kolor
set noswapfile
set background=dark
set termguicolors
set backup 
set backupdir=/home/zava/.tmp
set ruler
let g:ycm_global_ycm_extra_conf='/usr/share/vim/vimfiles/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
set history=100
set hlsearch
map <F4> :!wc -m %<CR>
inoremap <C-U> <C-G>u<C-U>
augroup vimrcEx

autocmd!
autocmd FileType text setlocal textwidth=78
let $NVIM_TUI_ENABLE_TRUE_COLOR=1


if !exists(":DiffOrig")
  command DiffOrig vert new | set buftype=nofile | read ++edit # | 0d_ | diffthis
                 \ | wincmd p | diffthis
endif


let g:python3_host_prog='/usr/bin/python3'
let g:powerline_pycmd='py3'
