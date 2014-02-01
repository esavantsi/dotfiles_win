source $VIMRUNTIME/mswin.vim
behave mswin

if has('vim_starting')
  set nocompatible
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#rc(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'

" Bundles
NeoBundle 'mattn/zencoding-vim'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets.vim'
NeoBundle 'tpope/vim-fugitive.vim'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'tomasr/molokai'

filetype plugin indent on

NeoBundleCheck


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General editor settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
scriptencoding utf-8

set number
set title
set cursorline
set mouse=a
set pastetoggle=<F12>
set fillchars=""
set ruler
set autoindent
set ignorecase
set autoread
set shortmess+=filmnrxoOtT
set cmdheight=2
set clipboard=unnamed
set foldenable
set viewoptions=folds,options,cursor,unix,slash
set foldopen=block,insert,jump,mark,percent,quickfix,search,tag,undo

" Cursor alignment
set scrolloff=100
set sidescroll=1
set sidescrolloff=10

" Tabulation
set backspace=2
set laststatus=2
set expandtab
set smarttab
set tabstop=4
set shiftwidth=4

" Compatibility
set nocp
set nowrap
set incsearch
set hidden
set showmode

" History
set history=100
set undolevels=100
set virtualedit=onemore
set undodir=~/.vim/undodir
set undofile
set nobackup
set noswapfile

" Splitting
set splitbelow
set splitright

" The auto completion row menu in the bottom of the bar
set wildignore+=*/tmp/*,*.so.*,*.swp,*.zip
set wildignorecase
set wildmenu
set wildmode=longest,list:longest,full
let &wildcharm = &wildchar

" NERDTree
let g:NERDTreeShowBookmarks = 1
let g:NERDTreeShowLineNumbers = 0
let g:NERDTreeMinimalUI = 1
let g:NERDTreeDirArrows = 1
let g:NERDTreeWinPos = "right"
let g:NERDTreeWinSize = 30

" Molokai
let g:molokai_original = 1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Key mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" GUI settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set t_Co=256
colorscheme molokai
syntax on

if has("gui_running")
  syntax on
  set hlsearch
  set guifont=Lucida_Console:h10:cANSI
endif


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Cursor colors
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set colorcolumn=80
hi CursorLine guibg=#333333     " highlight bg color of current line
hi CursorColumn guibg=#CCCCCC   " highlight cursor column
hi Cursor guibg=#FFFFFF         " highlight cursor
hi ColorColumn ctermbg=Black
