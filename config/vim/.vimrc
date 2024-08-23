set number
syntax on
set mouse=a
set bg=dark

call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'sainnhe/gruvbox-material'
Plug 'scrooloose/nerdtree'
Plug 'joshdick/onedark.vim'
Plug 'nordtheme/vim'
call plug#end()
"Nord theme is a bit buggy, feel free to change the theme if necessary 
colorscheme nord
