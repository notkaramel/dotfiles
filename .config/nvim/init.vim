set number
filetype plugin indent on
set tabstop=2
set shiftwidth=2
set expandtab
set noshowmode

" Normal mode remap
nnoremap <Up>   gk
nnoremap <Down> gj

" Visual mode remap
xnoremap <Up>   gk
xnoremap <Down> gj

" Insert mode remap
" https://vimdoc.sourceforge.net/htmldoc/insert.html#Insert
" Using CTRL-O for temporary move to Normal mode
inoremap <Up>   <C-\><C-O>gk
inoremap <Down> <C-\><C-O>gj

inoremap <C-BS> <C-W>
" Line Break
set linebreak

call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'ap/vim-css-color'
Plug 'itchyny/lightline.vim'
Plug 'preservim/tagbar'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-surround'
Plug 'airblade/vim-gitgutter'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'

call plug#end()

map <C-o> :NERDTreeToggle<CR>

