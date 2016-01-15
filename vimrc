" All system-wide defaults are set in $VIMRUNTIME/debian.vim and sourced by
" the call to :runtime you can find below.  If you wish to change any of those
" settings, you should do it in this file (/etc/vim/vimrc), since debian.vim
" will be overwritten everytime an upgrade of the vim packages is performed.
" It is recommended to make changes after sourcing debian.vim since it alters
" the value of the 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
if has("syntax")
  syntax on
endif

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
"set background=dark


set nocompatible               " be iMproved

filetype off                   " required!
let mapleader = ","
nnoremap <leader><space> :noh<cr>
" eliminate pressing Shift for commands
nnoremap ; :
nnoremap <leader>v <C-w>v<C-w>l
nnoremap <leader>h <C-w>s<C-w>j
nnoremap <leader>f :CtrlP<CR>
nmap <Tab> %
vmap <Tab> %
inoremap jk <ESC>l
nnoremap <leader>i gg=G''
nnoremap <leader>de gg"_dG
" use Y to yank to end of line
nnoremap Y y$
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

cmap w!! w !sudo tee > /dev/null %
set t_Co=256
set background=dark
set tabstop=2
set shiftwidth=2
set softtabstop=2
set smarttab
set expandtab
set number
set ignorecase
set ruler
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
set nobackup
set noswapfile
set smartindent
set hidden
set wildmenu
set number
set nowrap
set cm=blowfish
set timeoutlen=100
set backspace=indent,eol,start
set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=~/.vim/bundle/ctrlp.vim
let g:ctrlp_show_hidden = 1
set guifont=Inconsolata:h12:cANSI
call vundle#begin()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle 'tpope/vim-rails.git'
Bundle 'tpope/vim-endwise.git'
Bundle 'tpope/vim-surround.git'
Bundle 'tpope/vim-repeat.git'
Bundle 'tpope/vim-haml.git'
Bundle 'vim-ruby/vim-ruby.git'
Bundle 'digitaltoad/vim-jade.git'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter.git'
Bundle 'scrooloose/syntastic.git'
Bundle 'jiangmiao/auto-pairs.git'
Bundle 'kien/ctrlp.vim'
Bundle 'altercation/vim-colors-solarized.git'
Bundle 'duff/vim-scratch.git'
colorscheme default
" vim-scripts repos
Bundle 'bufexplorer.zip'
Bundle 'HTML-AutoCloseTag'
Bundle 'matchit.zip'
Bundle 'ruby-matchit'
Bundle 'Rename2'
syntax enable
call vundle#end()
filetype plugin indent on     " required!
filetype indent on
" highlight any lines you've added to which are longer than 80 characters.
highlight OverLength ctermbg=darkred ctermfg=white guibg=#502929
match OverLength /\%81v.\+/
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..


" source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

