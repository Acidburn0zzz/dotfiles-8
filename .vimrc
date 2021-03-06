set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'kien/ctrlp.vim'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
"Plugin 'klen/python-mode'
" Plugin 'powerline/powerline'
Plugin 'tpope/vim-fugitive'

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

let g:airline_powerline_fonts = 0
let g:airline_left_sep        = ''
let g:airline_left_alt_sep    = ''
let g:airline_right_sep       = ''
let g:airline_right_alt_sep   = ''
let g:airline_theme           = 'distinguished'

set clipboard=unnamedplus
map <C-n> :NERDTreeToggle<CR>
map <C-h> :tabp<CR>
map <C-l> :tabn<CR>

noremap j h
noremap k j
noremap l k
noremap ö l

set completeopt=menu

"Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list           = 1
let g:syntastic_check_on_open            = 1
let g:syntastic_check_on_wq              = 0
let g:syntastic_python_checkers          = ['flake8']
let g:syntastic_javascript_checkers      = ['jshint']

" aus
" https://hutten.knut.univention.de/mediawiki/index.php/Dev-Azubi_Einrichtung#.vimrc

filetype indent on
syntax on
colorscheme delek

set incsearch
set hlsearch " Makes search act like search in modern browsers

set encoding=utf8

set noexpandtab
set copyindent
set preserveindent
set softtabstop=0
set shiftwidth=4
set tabstop=4

set autoindent
set si "Smart indent
set wrap "Wrap lines

set colorcolumn=80
hi ColorColumn ctermbg=237

" Be smart when using tabs ;)
set smarttab

" When searching try to be smart about cases
set smartcase

set number
" disabled weil slowdown
"set cursorline
"hi cursorline cterm=none
"hi cursorlinenr ctermfg=white
set pastetoggle=<F2>

if $LANG =~ ".*\.UTF-8$" || $LANG =~ ".*utf8$" || $LANG =~ ".*utf-8$"
        try
                set listchars=tab:→\ ,trail:·,precedes:…,extends:…
                set list
        catch
        endtry
endif

set foldmethod=indent
set foldlevel=99

set laststatus=2

highlight clear SignColumn

"set showtabline=2

" set nobackup
" set nowb
" set noswapfile
