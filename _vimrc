if has('vim_starting')
  set nocompatible
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#rc(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'

" Bundles
NeoBundle 'mattn/zencoding-vim'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'tomasr/molokai'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'tacahiroy/ctrlp-funky'

filetype plugin indent on

NeoBundleCheck


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General editor settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
scriptencoding utf-8

set number                      " Line numbers
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
set noerrorbells                " No beep

" Default encoding
set encoding=utf-8
set fileencoding=utf-8

" Language
language messages en

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
set showcmd

" History
set history=100
set undolevels=100
set virtualedit=onemore
set undodir=~/.vim/undodir
set undofile
set nobackup                " No backup file
set noswapfile              " No swap file

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

" CTRLP
let g:ctrlp_cmd = 'CtrlPMixed'			" search anything (in files, buffers and MRU files at the same time.)
let g:ctrlp_working_path_mode = 'ra'	" search for nearest ancestor like .git, .hg, and the directory of the current file
let g:ctrlp_match_window_bottom = 0		" show the match window at the top of the screen
let g:ctrlp_by_filename = 1
let g:ctrlp_max_height = 10				" maxiumum height of match window
let g:ctrlp_switch_buffer = 'et'		" jump to a file if it's open already
let g:ctrlp_use_caching = 1				" enable caching
let g:ctrlp_clear_cache_on_exit=0  		" speed up by not removing clearing cache evertime
let g:ctrlp_mruf_max = 250 				" number of recently opened files

set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows

" let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Autocommands
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("autocmd")
    " Match whitespaces visually with a red background
    autocmd ColorScheme * highlight ExtraWhiteSpace ctermbg=red guibg=red
    autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
    autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
    autocmd InsertLeave * match ExtraWhitespace /\s\+$/
endif


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Key mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Switch tabs with Alt+N
noremap <A-1> 1gt
noremap <A-2> 2gt
noremap <A-3> 3gt
noremap <A-4> 4gt
noremap <A-5> 5gt
noremap <A-6> 6gt
noremap <A-7> 7gt
noremap <A-8> 8gt
noremap <A-9> 9gt

" Ctrl+Tab, Ctrl+Shift+Tab; switch between tabs
noremap <C-Tab> :tabnext<CR>
noremap <C-S-Tab> :tabprev<CR>

noremap <silent><Space>f :CtrlPFunky<cr>
noremap <silent><Space>p :CtrlPCurWD<cr>

noremap <Space>r :set rnu!<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" GUI settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set t_Co=256
colorscheme molokai

if has("gui_running")
  syntax on
  set hlsearch
  set guifont=Consolas:h10:cANSI
  set guioptions=ac             " remove toolbar
endif


"""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" GUI settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set t_Co=256
colorscheme molokai

if has("gui_running")
  syntax on
  set hlsearch
  set guifont=Consolas:h10:cANSI
  set guioptions=ac             " remove toolbar
endif


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Cursor colors
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set colorcolumn=80
hi CursorLine guibg=#333333     " highlight bg color of current line
hi CursorColumn guibg=#CCCCCC   " highlight cursor column
hi Cursor guibg=#FFFFFF         " highlight cursor
hi ColorColumn ctermbg=Black
