set nocompatible
filetype off

"""""""""""""""""""""""""""
""""" Vundle Config
"""""""""""""""""""""""""""

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'ctrlpvim/ctrlp.vim'

Plugin 'vim-airline/vim-airline'

Plugin 'vim-airline/vim-airline-themes'

Plugin 'sheerun/vim-polyglot'

" Plugin 'townk/vim-autoclose'

Plugin 'editorconfig/editorconfig-vim'

Plugin 'dikiaap/minimalist'

Plugin 'AlessandroYorba/Sierra'

Plugin 'scrooloose/nerdtree'

Plugin 'airblade/vim-gitgutter'

" plugin for auto tab completion need
Plugin 'jiangmiao/auto-pairs'

" for autocompletion needs
Plugin 'ervandew/supertab'

" to match airline theme with the tmux line
Plugin 'edkolev/tmuxline.vim'

" to wipeout all buffers that aren't open anywhere
Plugin 'artnez/vim-wipeout'

" handy commenting
Plugin 'scrooloose/nerdcommenter'

call vundle#end()
filetype plugin indent on

""""""""""""""""""""""""""
"""""" Plugin Config
""""""""""""""""""""""""""

" Git Gutter
""""""""""""

set updatetime=100

" setting timeout to switch in between modes
set ttimeoutlen=10

" Nerd Commenter
"""""""""""""""
" adds spaces after comments
let g:NERDSpaceDelims = 1

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Nerd Tree
"""""""""""

" opening nerd tree when no files were specified
autocmd Stdinreadpre * let s:std_in=1
autocmd vimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

map <C-n> :NERDTreeToggle<CR>

" close vim if nerdtree is the last window open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


" Ctrlp
"""""""

" to allow ctrlp to only search in working directory
let g:ctrlp_working_path_mode = 0

let g:ctrlp_custom_ignore = {
    \ 'dir': '\v[\/](\.git|\.svn|node_modules|vendor|venv)',
    \ 'files': '\v\.(o|so|test|swp|tmp)$'
    \ }

" Vim Airline
"""""""""""""

" theme
let g:airline_theme='minimalist'

" enabling powerline symbols
let g:airline_powerline_fonts = 1

" enablining the tab line
let g:airline#extensions#tabline#enabled = 1

""""""""""""""""""""""""""
"""""" Genral Config 
""""""""""""""""""""""""""

" theme related
"let g:sierra_Midnight = 1
"let g:sierra_Sunset = 1
"let g:sierra_Twilight = 1
let g:sierra_Pitch = 1

colorscheme sierra 

" setting the leader key
let mapleader = ","
let g:mapleader = ","

" Fast saving
nmap <leader>w :w!<cr>

" to delete the buffers
nmap <leader>d :Wipeout<cr>

" Fast save and quit
nmap <leader>wq :wq<cr>

" Fast quit without saving
nmap <leader>q :q!<cr>

" saving with escalated priveleges
"command W w !sudo tee % > /dev/null

map <leader>r :source ~/.vimrc<CR>

" turning on syntax
syntax on
syntax enable

" setting color scheme to 256 color pallete
set t_Co=256

" Change gutter column width of number column 
set nuw=4

" This option determines the number of context lines you would like to see
" above and below the cursor
set scrolloff=10

" to enable mouse scroll
set mouse=a

set autoindent
set smartindent
set cindent
set tabstop=2       " number of visual spaces per TAB
set softtabstop=2   " number of spaces in tab when editing
set expandtab       " tabs are spaces

set number              " show line numbers
set ruler
set relativenumber
set laststatus=2

set showcmd             " show command in bottom bar
set cursorline          " highlight current line

set lazyredraw          " redraw only when we need to.
set showmatch           " highlight matching [{()}]

"searching
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
" to turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

" backups and swaps

" // at the end of the directory will store the files using full paths so 
" file with same names in different directories do not conflict with each
" other.
set directory=~/.vim/.swap//
set backupdir=~/.vim/.backup//

" Set to autoread when a file is changed from outside
set autoread

" Buffer and window related key binding

" for cycling through tabs and creating a new one
nnoremap gn :tabn<CR>
nnoremap gp :tabp<CR>
nnoremap <C-t> :tabnew<CR>
nnoremap tt :tab split<CR>

" moving in between splits, open buffers in splits don't cycle buffers
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
