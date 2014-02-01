source $VIMRUNTIME/mswin.vim
behave mswin

if has('vim_starting')
  set nocompatible               " Be iMproved
  " Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#rc(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
NeoBundle 'mattn/zencoding-vim'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets.vim'
NeoBundle 'tpope/vim-fugitive.vim'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'tomasr/molokai'

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General editor settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

scriptencoding utf-8

if has('relativenumber')
    set relativenumber
endif

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

" Pop-up menu
set pumheight=8
set completeopt=menu,menuone,longest

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
" GUI settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set t_Co=256
colorscheme molokai
syntax on
set guifont=Lucida_Console:h10:cANSI

if has("gui_running")
  syntax on
  set hlsearch
  " set guioptions-=T           " remove the toolbar
  " set guioptions=ac
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Cursor colors
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set colorcolumn=80
hi CursorLine guibg=#333333     " highlight bg color of current line
hi CursorColumn guibg=#CCCCCC   " highlight cursor column
hi Cursor guibg=#FFFFFF         " highlight cursor
hi ColorColumn ctermbg=Black