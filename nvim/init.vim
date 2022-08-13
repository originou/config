call plug#begin()
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Vim (Windows): '~/vimfiles/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'

" Make sure you use single quotes
Plug 'davidhalter/jedi-vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'neomake/neomake'
"Plug 'terryma/vim-multiple-cursors'
Plug 'machakann/vim-highlightedyank'
"Plug 'tmhedberg/SimpylFold'
Plug 'averms/black-nvim', {'do': ':UpdateRemotePlugins'}

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'


" Themes 
Plug 'morhetz/gruvbox'
Plug 'overcache/NeoSolarized'


" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-default branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'

" Initialize plugin system
" - Automatically executes `filetype plugin indent on` and `syntax enable`.
call plug#end()
" You can revert the settings after the call like so:
"   filetype indent off   " Disable file-type-specific indentation
"   syntax off            " Disable syntax highlighting
"
"
set number

" Encodage par défaut des buffers et des fichiers
set encoding=utf-8
set fileencoding=utf-8
 
" On transmet les 'beep' au terminal, on ne 'flash' pas
set noerrorbells
 
" Parenthèses électriques
set showmatch

" Pas de souris, boudiou !
set mouse=a

" Raccourcis claviers pour les Tabs
map <C-Down>  :tabnew <CR>
nmap <C-Right> :tabnext <CR>
nmap <C-Left>  :tabprevious <CR> 

" Shell par défaut
set shell=/bin/zsh

"Mapping pour quitter le mode insert par ;;
map ;j <Esc>
imap ;j <Esc>
vmap ;j <Esc>


let g:deoplete#enable_at_startup = 1

let g:python3_host_prog = expand('~/.pyenv/versions/3.10.6/bin/python')
"set splitbelow
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

let g:airline_theme='papercolor'
"let g:airline_solarized_bg='light'
"

" disable autocompletion, because we use deoplete for completion
let g:jedi#completions_enabled = 0

" open the go-to function in split, not another buffer
"let g:jedi#use_splits_not_buffers = "right"
"
let g:neomake_python_enabled_makers = ['flake8']


colorscheme gruvbox
"colorscheme NeoSolarized
set background=dark


nnoremap <buffer><silent> <c-b> :! black ./<cr>
inoremap <buffer><silent> <c-b> :! black ./<cr>

