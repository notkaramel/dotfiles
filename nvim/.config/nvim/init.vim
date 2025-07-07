set number
filetype plugin indent on
set tabstop=2
set shiftwidth=2
set expandtab
set noshowmode
colorscheme vim

" Normal mode remap
nnoremap <Up>   gk
nnoremap <Down> gj

" Visual mode remap
xnoremap <Up>   gk
xnoremap <Down> gj

" Insert mode remap
" https://vimdoc.sourceforge.net/htmldoc/insert.html#Insert
" Using CTRL-O for temporary move to Normal mode
inoremap <silent> <Up>   <C-\><C-O>gk
inoremap <silent> <Down> <C-\><C-O>gj

inoremap <C-BS> <C-W>
" Line Break
set linebreak

call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'ap/vim-css-color'
" Plug 'itchyny/lightline.vim'
Plug 'nvim-lualine/lualine.nvim'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'preservim/tagbar'
Plug 'preservim/nerdtree'
" Plug 'tpope/vim-surround'
" Plug 'airblade/vim-gitgutter'
Plug 'preservim/nerdtree'
" Plug 'ryanoasis/vim-devicons'
Plug 'godlygeek/tabular'
Plug 'preservim/vim-markdown'

call plug#end()

map <C-o> :NERDTreeToggle<CR>
lua << END
require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'auto',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}
END
