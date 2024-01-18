set number
filetype plugin indent on
set tabstop=2
set shiftwidth=2
set expandtab
set noshowmode

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

