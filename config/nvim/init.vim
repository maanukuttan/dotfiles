let mapleader = " "
let maplocalleader = " "

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""plugins"""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:coc_global_extensions = [
            \ 'coc-json',
            \ 'coc-tsserver',
            \ 'coc-html',
            \ 'coc-css',
            \ 'coc-yaml',
            \ 'coc-highlight',
            \ 'coc-angular',
            \ 'coc-go',
            \ 'coc-rls',
            \ 'coc-pyright',
            \ ]

call plug#begin('~/.config/nvim/plugged')

Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'

Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'junegunn/fzf.vim'

Plug 'jiangmiao/auto-pairs'
Plug 'mbbill/undotree'
Plug 'itchyny/lightline.vim'
Plug 'morhetz/gruvbox'

Plug 'neoclide/coc.nvim', {'branch': 'release', 'do': { -> coc#util#install() }}

call plug#end()

let g:lightline = {
            \ 'colorscheme': 'wombat',
            \ 'active': {
            \   'right': [['lineinfo'],
            \              ['colinfo'],
            \              [ 'fileformat', 'fileencoding', 'filetype']]
            \ },
            \ 'component': {
            \   'colinfo': "%{printf('%03d/%03d', col('.'),  col('$'))}",
            \   'lineinfo': "%{printf('%04d/%04d', line('.'),  line('$'))}",
            \ },
            \ }

colo gruvbox
set background=dark
let g:gruvbox_contrast_dark='soft'

nn <leader>q :UndotreeToggle<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""plugins"""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set rnu
set nu
set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab
set hlsearch
set incsearch
set smartcase
set ignorecase

set autowrite
set showcmd

set noerrorbells
set vb t_vb=
set laststatus=2

set wildmenu
set wildmode=longest,full
set foldmethod=indent
set diffopt=foldcolumn:0,iwhite,filler
set nofoldenable

set clipboard=unnamedplus
set encoding=utf-8

" 90 chars/line
set colorcolumn=80

set listchars=eol:§,extends:»,precedes:«,tab:▶\ ,trail:•,space:∙
set list

" Run xrdb whenever Xdefaults or Xresources are updated.
autocmd BufWritePost ~/.Xresources,~/.Xdefaults !xrdb %

syntax on
syntax enable
filetype plugin indent on

" this helps in norm commands
ino jj <Esc>l

" moving the lines
nn <C-j> :m .+1<CR>==
nn <C-k> :m .-2<CR>==
ino <C-j> <esc>:m .+1<CR>==gi
ino <C-k> <esc>:m .-2<CR>==gi
vn <C-j> :m '>+1<CR>gv=gv
vn <C-k> :m '<-2<CR>gv=gv

" copy/paste to/from clipboard
vn <leader>y "+y
nn <leader>y "+y
vn <leader>p "+p
nn <leader>p "+p

" delete with no save to buffer
nn <leader>d "_d
nn <leader>x "+x
vn <leader>d "_d
vn <leader>x "+x

" terminal mode keybinings
tno jj <C-\><C-n>
tno <A-h> <C-\><C-n><C-w>h
tno <A-j> <C-\><C-n><C-w>j
tno <A-k> <C-\><C-n><C-w>k
tno <A-l> <C-\><C-n><C-w>l

"Setting spell check
nn <leader>s :setlocal spell!<cr>

" move through buffers
nn <leader>t :bn<cr>
nn <leader>T :bp<cr>
vn <leader>t :bn<cr>
vn <leader>T :bp<cr>

" inset new line in normal mode
nn <leader>o o<esc>
nn <leader>O O<esc>

"write sudo files
nn <leader>w :w !sudo tee > /dev/null %<cr>

"Markdowm key map; *.md treats as markdown file
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

