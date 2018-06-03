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

Plugin 'townk/vim-autoclose'

Plugin 'editorconfig/editorconfig-vim'

Plugin 'dikiaap/minimalist'

Plugin 'AlessandroYorba/Sierra'

" to match airline theme with the tmux line
Plugin 'edkolev/tmuxline.vim'

call vundle#end()
filetype plugin indent on

""""""""""""""""""""""""""
"""""" Plugin Config
""""""""""""""""""""""""""

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
let g:sierra_Midnight = 1
"let g:sierra_Sunset = 1
"let g:sierra_Twilight = 1
"let g:sierra_Pitch = 1

colorscheme sierra 

" setting the leader key
let mapleader = ","
let g:mapleader = ","

" Fast saving
nmap <leader>w :w!<cr>

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

set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing
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
"set directory=~/.vim/.swap//
"set backupdir=~/.vim/.backup//

" Set to autoread when a file is changed from outside
set autoread
