"    _       _ _         _           
"   (_)_ __ (_) |___   _(_)_ __ ___  
"   | | '_ \| | __\ \ / / | '_ ` _ \ 
"   | | | | | | |_ \ V /| | | | | | |
"   |_|_| |_|_|\__(_)_/ |_|_| |_| |_|
"                                    
" Example to use figlet in vim
" figlet .init.vim | sed -n 's/^.*/"   &/p'

syntax on
set number relativenumber
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
"set nowrap
set wrap
set smartcase
set noswapfile
set nobackup
set undofile
"set incsearch
"set hlsearch
set nospell
set spelllang=en
set spellfile=~/.config/nvim/spell/en.utf-8.add
"set complete+=kspell
set splitbelow
set splitright

"set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

"set cursorline
highlight CursorLine cterm=NONE ctermbg=0 guibg=darkgrey

" Space to turn off highlighting and clear any message already displayed.
:nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

" Exit INSERT mode with jj
inoremap jj <ESC>

let mapleader=","

let g:dracula_colorterm = 0
let g:dracula_italic = 0

let g:limelight_conceal_ctermfg = 'darkgrey'
let g:limelight_default_coefficient = 0.7

"    ____  _             _             ____  _             _   
"   |  _ \| |_   _  __ _(_)_ __  ___  / ___|| |_ __ _ _ __| |_ 
"   | |_) | | | | |/ _` | | '_ \/ __| \___ \| __/ _` | '__| __|
"   |  __/| | |_| | (_| | | | | \__ \  ___) | || (_| | |  | |_ 
"   |_|   |_|\__,_|\__, |_|_| |_|___/ |____/ \__\__,_|_|   \__|
"                  |___/                                       
"    _   _               _ 
"   | | | | ___ _ __ ___| |
"   | |_| |/ _ \ '__/ _ \ |
"   |  _  |  __/ | |  __/_|
"   |_| |_|\___|_|  \___(_)
                       
" Specify a directory for plugins
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.config/nvim/plugged')

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/limelight.vim'
Plug 'junegunn/goyo.vim'
Plug 'mbbill/undotree'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'tmux-plugins/vim-tmux'
Plug 'vim-airline/vim-airline'
Plug 'ap/vim-css-color'

" Initialize plugin system
call plug#end()

let g:airline_powerline_fonts = 1

colorscheme dracula

"    ____  _             _             _____           _ 
"   |  _ \| |_   _  __ _(_)_ __  ___  | ____|_ __   __| |
"   | |_) | | | | |/ _` | | '_ \/ __| |  _| | '_ \ / _` |
"   |  __/| | |_| | (_| | | | | \__ \ | |___| | | | (_| |
"   |_|   |_|\__,_|\__, |_|_| |_|___/ |_____|_| |_|\__,_|
"                  |___/                                 

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
"nnoremap <leader>h :wincmd h<CR>
"nnoremap <leader>j :wincmd j<CR>
"nnoremap <leader>k :wincmd k<CR>
"nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>c :execute "set colorcolumn="
                \ . (&colorcolumn == "" ? "80" : "")<CR>:set cursorline!<CR>
nnoremap <leader>u :UndotreeToggle<CR>
nnoremap <leader>ff :Files<CR>
nnoremap <leader>fr :Files /<CR>
"nnoremap <leader>t :belowright term<CR>
"nnoremap <leader>t :terminal<CR>
noremap Q !!$SHELL<CR>

autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!
nnoremap <leader>g :Goyo <CR>

" Edit vimrc configuration file
nnoremap <Leader>ve :e $MYVIMRC<CR>
" Reload vimrc configuration file
nnoremap <Leader>vr :source $MYVIMRC<CR>

" let $FZF_DEFAULT_COMMAND = 'find .'
