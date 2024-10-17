" editor config
set number
set relativenumber
set nowrap
set tabstop=4
set softtabstop=4
set shiftwidth=4

" vim-plug config
call plug#begin()
Plug 'itchyny/lightline.vim'
Plug 'morhetz/gruvbox'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
call plug#end()

" editor theme
colorscheme gruvbox

" nvim-treesitter lua setup
lua << EOF
require'nvim-treesitter.configs'.setup {
	ensure_installed = "all",
  highlight = {
    enable = true,
  },
}
EOF
