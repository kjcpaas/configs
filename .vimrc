set nocompatible
filetype off

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-endwise'
Plug 'thoughtbot/vim-rspec'
Plug 'jiangmiao/auto-pairs'
Plug 'suan/vim-instant-markdown', { 'for': 'markdown' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Lazies
Plug 'mattn/emmet-vim'

" Syntax highlighting
Plug 'mxw/vim-jsx'
Plug 'elzr/vim-json', { 'for': 'json' }
Plug 'kchmck/vim-coffee-script'
Plug 'juvenn/mustache.vim'
Plug 'hail2u/vim-css3-syntax', { 'for': ['scss', 'sass'] }
Plug 'isRuslan/vim-es6'
Plug 'slim-template/vim-slim', { 'for': 'slim' }
Plug 'nikvdp/ejs-syntax', { 'for': 'ejs' }

" Themes
Plug 'fabi1cazenave/kalahari.vim'
Plug 'glortho/feral-vim'
Plug 'queyenth/oxeded.vim'
Plug 'kristijanhusak/vim-hybrid-material'
Plug 'w0ng/vim-hybrid'
Plug 'altercation/vim-colors-solarized'

call plug#end()

" Turn on filetype again after seting up bundles
filetype on
syntax on

" =============================
" Themes
" =============================
set background=dark
let g:enable_bold_font = 1
"let g:solarized_termcolors=256
"colorscheme kalahari
"colorscheme feral
"colorscheme oxeded
colorscheme hybrid_reverse
"colorscheme hybrid
"colorscheme solarized

autocmd BufWritePre * :%s/\s\+$//e                 " Remove trailing whitespace
autocmd BufWritePre * :%s/\($\n\s*\)\+\%$//e       " Remove newlines at the end of file

" =============================
" Settings
" =============================

set expandtab                                      " Use space instead of tabs
set tabstop=2                                      " Set number of tabs in spaces
set shiftwidth=2
set ignorecase                                     " Use case insensitive search,
set smartcase                                      " except when using capital letters
set visualbell                                     " Use visual bell instead of beeping when doing something wrong
set showcmd                                        " This shows what you are typing as a command.
set number                                         " Show line numbers
set ruler                                          " Show current cursor position
set list                                           " Show invisible characters
set hlsearch                                       " Highlight search results
set clipboard=unnamed                              " Clipboard

" =============================
" Language-specific settings
" =============================

autocmd FileType go setlocal ts=4 sw=4 sts=0 noexpandtab

" =============================
" Commands
" =============================
let mapleader = ','

" No need to shift :)
nore ; :

" vim-rspec configs
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>l :call RunLastSpec()<CR>
let g:rspec_command = "!bundle exec rspec --fail-fast {spec}"

" ==============================
" Key mappings
" ==============================

" Resize screens
" Widen (vertical) split
map <Leader>. <c-w>10>

" Narrow (vertical) split
map <Leader>m <c-w>10<

" Taller (horizontal) split
map <Leader>k <c-w>3+

" Shorten (horizontal) split
map <Leader>j <c-w>3-

" Equal splits
map <Leader>, <c-w>=

" Modify screen
" Switch active splits
map <Tab> <c-w>w

" Rotate/jumble splits
map <Leader>r <c-w>r

" Switch to horizontal split
map <Leader>h <c-w>H

" Switch to vertical split
map <Leader>v <c-w>K

" New tab
map nt <c-w>T

" Get current file's path
map fn :echo<Space>@%<CR>

" Toggle nerd tree
map <Leader>q :NERDTreeToggle<CR>

" fzf shortcuts
map <Leader>fl :Files<Space>
map <Leader>co :Colors<Space>
map <Leader>hi :History/<Space>
map <Leader>bl :BLines<Space>

" Create a vertical new split
map \ :vsplit<CR>

" Create a horizontal new split
map <Leader>- :split<CR>

" Install bundles
map <Leader>pi :PlugInstall<CR>

" Reload vimrc
map <Leader>z :so $MYVIMRC<CR>

" Prettify json
map json :%!python -m json.tool<CR>

" ==============================
" Syntax highlighting
" ==============================
autocmd BufNewFile,BufReadPost *.inky-haml set filetype=haml
autocmd BufNewFile,BufReadPost *.hamlbars set filetype=haml
autocmd BufNewFile,BufReadPost *.hbs set filetype=html
autocmd BufNewFile,BufReadPost *.md set filetype=markdown
autocmd BufNewFile,BufReadPost Guardfile,Gemfile,Gemfile.lock set filetype=ruby
