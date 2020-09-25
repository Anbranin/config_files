" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
"set background=dark

syntax enable
set nocompatible               " be iMproved

runtime macros/matchit.vim

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
map <C-n> :NERDTreeToggle<CR>
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
set ruler
set smartcase
set incsearch
set showmatch
set hlsearch
set nobackup
set noswapfile
set smartindent
set hidden
set wildmenu
set nowrap
set timeoutlen=100
set backspace=indent,eol,start
set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=~/.vim/bundle/ctrlp.vim
set listchars=tab:␉·
" Highlight tabs as errors.
" https://vi.stackexchange.com/a/9353/3168
match Error /\t/
let g:ctrlp_show_hidden = 1
let g:syntastic_eruby_ruby_quiet_messages = 
  \ {"regex": "possibly useless use of a variable in void context"}
let g:syntastic_javascript_checkers = ['eslint']
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
Bundle 'tpope/vim-haml.git'
Bundle 'vim-ruby/vim-ruby.git'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter.git'
Bundle 'scrooloose/syntastic.git'
" Bundle 'jiangmiao/auto-pairs.git'
Bundle 'kien/ctrlp.vim'
Bundle 'altercation/vim-colors-solarized.git'
Bundle 'duff/vim-scratch.git'
Bundle 'ngmy/vim-rubocop'
Plugin 'leafgarland/typescript-vim'
Plugin 'kchmck/vim-coffee-script'
" vim-scripts repos
" Bundle 'bufexplorer.zip'
Bundle 'HTML-AutoCloseTag'
call vundle#end()
colorscheme default
filetype plugin indent on     " required!
" highlight any lines you've added to which are longer than 80 characters.
" highlight OverLength ctermbg=darkred ctermfg=white guibg=#502929
" match OverLength /\%81v.\+/
"
" highlight the first character of any line over 80
highlight ColorColumn ctermbg=red
call matchadd('ColorColumn', '\%81v', 100)
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
