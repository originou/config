" {{{ 1. Options generales
" numéro de ligne
set number
set relativenumber

" Ne pas utiliser le mode de compatibilité vi
set nocompatible

" Background
set background=dark
" set background=light

" Encodage par défaut des buffers et des fichiers
set encoding=utf-8
set fileencoding=utf-8
 
" On transmet les 'beep' au terminal, on ne 'flash' pas
set noerrorbells
 
" Parenthèses électriques
set showmatch
 
" Pas de souris, boudiou !
set mouse=a
 
" Taille maximale d'une ligne
set textwidth=600
 
" Complétion en mode insertion (<C-n>)
set completeopt=longest,menuone

filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" " alternatively, pass a path where Vundle should install plugins
 "call vundle#begin('~/some/path/here')
" " let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'mattn/emmet-vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'ternjs/tern_for_vim'
Plugin 'tomtom/tcomment_vim'
Plugin 'tpope/vim-surround'
Plugin 'vim-scripts/mru.vim'
Plugin 'tmhedberg/matchit'
" Plugin 'scrooloose/nerdtree'
" Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-scripts/Syntastic'
Plugin 'godlygeek/csapprox'
Plugin 'vim-scripts/LustyExplorer'
Plugin 'mileszs/ack.vim'

set hidden
" Plugin '1995eaton/vim-better-javascript-completion'
" Plugin 'pangloss/vim-javascript'

" All of your Plugins must be added before the following line
 call vundle#end()            " required
filetype plugin indent on    " required

" Nerdtree
" open nerdTree apres ouverture de vim
" autocmd vimenter * NERDTree

" Open nerdTree si pas de fichier specifier a l'ouverture de vim
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" map <F2> :NERDTreeToggle<CR>

" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
"
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0
"

" {{{ 2 Indentation
 
" Indentation gérée par les plugins plutôt que par autoindent
set noautoindent
filetype plugin indent on
filetype indent on
 
" Taglist plugin ~/.vim/plugin
filetype on
"let Tlist_Ctags_Cmd = '~/.vim/plugin/taglist.vim'
let Tlist_Ctags_Cmd = '/usr/bin/ctags'

" nnoremap <silent> <F6> :TlistToggle<CR>
" nnoremap <silent> <F7> :NERDTreeToggle<CR>

" On remplace les \t par des espaces
set expandtab

" Largeur de l'autoindentation
set shiftwidth=0
" Largeur de l'indentation avec <tab>
set softtabstop=0
" Largeur du caractère <tab>
set tabstop=2
 
" Indentation pour C (je ne sais plus ce que ça fait)
set cinoptions={.5s,+.5s,t0,n-1,p2s,(03s,=.5s,>1s,=1s,:1s 
 
" {{{ 3 Recherche et substitution
 
" La recherche reprend au début du fichier (resp à la fin) une fois la fin (resp
" le début) atteint.
"set wrapscan
"
"Je préfere sans (Denis)
set nowrapscan
 
" Highlight les paterns recherchés
set hlsearch
 
" Recherche en live
set incsearch
 
" {{{ 4 Surlignage, couleurs et police
 
" Configuration du thème de couleur
"colo darkblue "default torte darkblue
 
" Coloration syntaxique
syntax on
" et pour la coloration du shell :
let g:is_posix = 1
 
" Configuration du hilight quand vim est dans un terminal couleur
"hi Normal	ctermfg=gray ctermbg=black
 
" Configuration du hilight pour gvim
"hi Normal	guifg=#c0c0c0 guibg=#000040
hi Normal	guifg=#c0c0c0 guibg=#000000
 
" Configuration du parsing pour la coloration syntaxique
syn sync minlines=10000 maxlines=10000
 
" Numérotation automatique des fichiers C++ (désactivée)
"autocmd FileType cpp set number
 
" {{{ 4 Ligne de statut et Menu
 
" Options pour le GUI
" m : afficher la barre de menu
" T : afficher la toolbar
" g : les menus inactifs sont grisés
" r : afficher la barre de défilement à droite
" L : afficher la barre de défilement à gauche quand l'écran est vsplité
" a=autoselect : le texte sélectionné en VISUAL est copié dans le pressepapier PRIMARY
set guioptions=mgTrLa
 
" Complétion dans la barre de commande
set wmnu
set wildmode=list:longest,list:full
" Fichiers ignorés lors de la complétion
set wildignore=*.o,*.r,*.so,*.sl
 
" Taille de l'historique de la barre de commandes
set history=2000
 
" Affichage de la position dans le fichier dans la barre de statut
set ruler
" Configuration de l'affichage de la date et de la position dans le fichier (Denis : J'aime pas)
"set rulerformat=%27(%{strftime('%a\ %e\ %b\ %I:%M\ %p')}\ %2l,%-2(%c%V%)\ %P%)

" Affichage du mode dans la barre de statut
set showmode
set showcmd
" Affichage intelligent des avertissements (file format, file status, etc.)
set shm=a
" La ligne de statut est l'avant dernière ligne
set laststatus=2
 
" {{{ 5 Fenetres
 
" Hauteur minimale d'une fenêtre active
set winheight=1
" Hauteur minimale d'une fenêtre
set winminheight=0
 
" Ne redimensionne pas automatiquement toutes les fenêtres lors de
" l'ouverture/fermeture de l'une d'entre elles
set noequalalways
" Ajoute les nouvelles fenêtres en dessous ou à droite
set splitbelow
set splitright
 
" {{{ 5bis Tabs
 
" Raccourcis claviers pour les Tabs
map <C-Down>  :tabnew <CR>
nmap <C-Right> :tabnext <CR>
nmap <C-Left>  :tabprevious <CR> 
 
" {{{ 6 Sauvegarde
 
" {{{ 7 Unixage
 
" Path pour la recherche de fichier avec :find, :sfind et :tabfind
" set path=.,/usr/include,/usr/X11R6/include,/usr/local/include
 
" Le texte sélectionné en mode visuel est collé dans le presse-papier PRIMARY
set clipboard=autoselect
 
" Shell par défaut
set shell=/bin/sh
 
" {{{ 8 Mapping
 
" Supprimer les blancs en début de ligne
" nmap _S :%s/^\s\+//<CR>

" Naviguer entre les fenetres splités
 map <S-Left> <ESC><C-w>h
 map <S-Down> <ESC><C-w>j
 map <S-Up> <ESC><C-w>k
 map <S-Right> <ESC><C-w>l

" Bien interpréter les caractères de contrôle
nmap <ESC>[1;5D <C-Left>
nmap <ESC>[1;5C <C-Right>
nmap <ESC>Oa <C-Up>
nmap <ESC>[1;5B <C-Down>
 
"indentation automatique
vnoremap <C-F>	=$
vnoremap <tab>	=
nnoremap <tab>	=$
nnoremap <C-tab> mzvip=`z

" map <F5> <ESC>lBi${<ESC>Ea}<ESC>

"Mapping pour vimdiff <F9> pour diff prec <F10> pour diff suivant <F8> = dp

map <F8> <ESC>dp<ESC>
map <F9> <ESC>[c<ESC>
map <F10> <ESC>]c<ESC>

"Mapping pour quitter le mode insert par ;;
map ;; <Esc>
imap ;; <Esc>
vmap ;; <Esc>


" Génération des tags pour les fichiers à la C++
" map <F11> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
 
" {{{ 9 Plugin
 
"source /usr/share/vim-scripts/games/VimSokoban/sokoban.vim
"source /usr/share/vim-scripts/plugin/bufexplorer.vim
"source /usr/share/vim-scripts/plugin/taglist.vim
 
"Le plugin 2html utilise le CSS
let html_use_css = 1
 
"Configuration de vimspell
let loaded_vimspell = 1
set spelllang=fr
set spellsuggest=10
let spell_executable = "aspell"
let spell_auto_type = ''
let spell_insert_mode = 0
 
" Configuration OmbiCpp (C++)
" let OmniCpp_DefaultNamespaces=["std", "_GLIBCXX_STD"]
" let OmniCpp_GlobalScopeSearch = 1
" let OmniCpp_NamespaceSearch = 1
" let OmniCpp_MayCompleteDot = 1
" let OmniCpp_MayCompleteArrow = 1
" let OmniCpp_MayCompleteScope = 1
" let OmniCpp_ShowPrototypeInAbbr = 1

" Configuration de taglist
"set tags+=~/.vim/tags/stl

if has("autocmd")
	filetype plugin indent on
	autocmd FileType text setlocal textwidth=78
	  " always jump to last edit position when opening a file
		 autocmd BufReadPost *
		   \ if line("'\"") > 0 && line("'\"") <= line("$") |
		\   exe "normal g`\"" |
		\ endif
endif"

set cursorline
highlight CursorLine guibg=#001000

" Highlight Tabs and Spaces
highlight Tab ctermbg=darkgray guibg=darkgray
highlight Space ctermbg=darkblue guibg=darkblue
au BufWinEnter * let w:m2=matchadd('Tab', '\t', -1)
au BufWinEnter * let w:m3=matchadd('Space', '\s\+$\| \+\ze\t', -1)
set list listchars=tab:»·,trail:·

"Changer la taille (gvim)
" set guifont=Monospace\ 8

" :map <F4> :set nowrapscan<CR>/#endif<CR>zf%

colorscheme wombat256mod
" colorscheme solarized
let mapleader = ","

" Mapping Pour Ack
let g:ackprg="ack -H --nocolor --nogroup --column"
" Place un marqueur et cherche
nmap <leader>j mA:Ack<space>

" Place un marqueur et cherche le mot sous le curseur
nmap <leader>ja mA:Ack "<C-r>=expand("<cword>")<cr>"
nmap <leader>jA mA:Ack "<C-r>=expand("<cWORD>")<cr>"

