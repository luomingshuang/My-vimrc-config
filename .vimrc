set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
" set rtp+=~/.vim/bundle/Vundle.vim
" call vundle#begin()
"
" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')
"
" " let Vundle manage Vundle, required
" Plugin 'gmarik/Vundle.vim'
"
" " add all your plugins here (note older versions of Vundle
" " used Bundle instead of Plugin)
"
" Plugin 'tmhedberg/SimpylFold'
" Plugin 'vim-scripts/indentpython.vim'
" " ...
"
" " All of your Plugins must be added before the following line
" call vundle#end()            " required
" filetype plugin indent on    " required


" https://github.com/junegunn/vim-plug
call plug#begin('~/.vim/plugged')
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Vim (Windows): '~/vimfiles/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'
Plug 'tmhedberg/SimpylFold'
Plug 'vim-scripts/indentpython.vim'
Plug 'Valloric/YouCompleteMe'
Plug 'sansyrox/vim-python-virtualenv'
Plug 'vim-syntastic/syntastic'
Plug 'nvie/vim-flake8'
" color theme
Plug 'sonph/onehalf', { 'rtp': 'vim' }
" Plug 'NLKNguyen/papercolor-theme'
Plug 'preservim/nerdtree'
Plug 'preservim/tagbar'
" Make sure you use single quotes
" Initialize plugin system
" Add maktaba and codefmt to the runtimepath.
" " (The latter must be installed before it can be used.)
Plug 'google/vim-maktaba'
Plug 'google/vim-codefmt'
" " Also add Glaive, which is used to configure codefmt's maktaba flags. See
" " `:help :Glaive` for usage.
Plug 'google/vim-glaive'
call plug#end()
call glaive#Install()

set splitbelow
set splitright

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
" Make sure you use single quotes
" Initialize plugin system
call plug#end()

set splitbelow
set splitright

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable folding
set foldmethod=indent
set foldlevel=99
" Enable folding with the spacebar
nnoremap <space> za
let g:SimpylFold_docstring_preview=1

set encoding=utf-8
" 解决插入模式下delete/backspce键失效问题
set backspace=2

let g:ycm_autoclose_preview_window_after_completion=1
map <space>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

let python_highlight_all=1
syntax on
" color theme
set t_Co=256
set cursorline
colorscheme onehalfdark
let g:airline_theme='onehalfdark'
" set background=dark
" colorscheme PaperColor

set hlsearch
" noh
nnoremap <SPACE> <Nop>
let mapleader=" "
" nnoremap <leader>n :NERDTreeFocus<CR>
" nnoremap <C-n> :NERDTree<CR>
" nnoremap <C-t> :NERDTreeToggle<CR>
" nnoremap <C-f> :NERDTreeFind<CR>
nmap <F3> :NERDTree<CR>
nmap <F4> :TagbarToggle<CR>
let g:tagbar_autofocus = 1

let g:syntastic_python_checkers = ['flake8']
" Remove Trailing Whitespace
autocmd BufWritePre * :%s/\s\+$//e
