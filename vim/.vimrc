filetype on
filetype indent on
filetype plugin on
syntax on 

let mapleader=","
set t_Co=256 
set nocompatible 
set number
set encoding=utf-8
set mouse=a     
set backspace=2 
set hidden      
set directory=$DOTFILES/vim/swapfiles// 
set clipboard=unnamed
set tabstop=2      
set softtabstop=2  
set shiftwidth=2   
set expandtab      
set smarttab       
set shiftround     
set hlsearch 
set ignorecase
set smartcase
set foldmethod=indent
set foldlevelstart=99  
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

imap § <esc><esc>
nmap § <esc><esc>
xnoremap § <esc><esc>
nnoremap <Space> za
nnoremap <leader>u gUiw 
nnoremap <Leader>+ :let @+=expand('%:p')<CR>
noremap <C-J> ddp 
nnoremap <C-K> kddpk 
nnoremap <C-N> :bnext<CR> 
nnoremap <C-P> :bprev<CR> 
nnoremap <C-G> :FZF<CR>
nnoremap <leader>g :OpenGithub<CR>
nnoremap <leader>tn :TestNearest<CR>
nnoremap <leader>s :source ~/.vimrc<CR>
nnoremap <leader>v :belowright 15sp ~/.vimrc<CR>
nnoremap <leader>a *:AgFromSearch<CR>
nnoremap <leader>n :NERDTree<CR>
nnoremap <leader>N :NERDTree %<CR> 
nnoremap <C-H> :History %<CR> 
inoremap <tab> <C-P>
nnoremap <leader>f :ALEFirst<CR>
nnoremap <ESC><ESC> :noh<RETURN>
nmap <leader>c :BCommits<CR>
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>0 :tablast<cr>
imap ,/ </<C-X><C-O>

call plug#begin('~/.vim/plugged')
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-fugitive'
Plug 'leafgarland/typescript-vim'
Plug 'scrooloose/nerdtree'
Plug 'k0kubun/vim-open-github'
Plug 'Valloric/MatchTagAlways'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-gitgutter'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'christoomey/vim-tmux-runner'
Plug 'tpope/vim-endwise'
Plug 'dense-analysis/ale'
Plug 'rking/ag.vim'
Plug 'tpope/vim-commentary'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'janko-m/vim-test'
Plug 'tjammer/blayu.vim'
Plug 'mhartington/oceanic-next'
Plug 'tpope/vim-dispatch'
Plug 'Rigellute/rigel'
Plug 'cespare/vim-toml'
Plug 'tpope/vim-rails'
Plug 'rust-lang/rust.vim'
Plug 'sharkdp/bat'
Plug 'morhetz/gruvbox'
Plug 'chriskempson/base16-vim'

call plug#end()

colorscheme peachpuff
highlight Comment ctermfg=green

let g:ale_fixers = {'ruby': ['rubocop']}
