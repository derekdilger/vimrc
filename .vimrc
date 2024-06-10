set tabstop=4
set timeoutlen=600
set expandtab "in insert mode, pressing tab now actually puts spaces
set incsearch " progressively highlights while typing search
set nocompatible " not compatible with vi YEAH FUCK VI!!!!
set showmode " show -- INSERT -- and the like
set shiftwidth=4
"set hlsearch " highlights search words (n or N work without highlighting)
set nohidden
set nu
set wiw=80 
set wmw=80 "not recommended to be more than 20 but im a rebel
set wrap "wraps around text w/o changing it in the buffer
set colorcolumn=80
set foldmethod=manual
filetype indent on
set autoindent
set undofile "creates file of undo history, allowing undo between sessions
set rnu " sets relative line numbers
set history=100 " 100 history size (commands, searches)
colorscheme industry " best colorscheme B]
let g:netrw_liststyle=3 " shows files as tree in netrw
let g:netrw_banner=0 " removes low-use help banner on netrw
syntax on " detects language syntax and applies colors
set ruler
set showcmd
set timeout
set ttimeout
"macros
let @a = "ma%x`ax"

"abbreviations


"setting leaderkey
let mapleader = "\<space>"
let maplocalleader = "\\"

"ALWAYS USE *noremap "NOTE TO FUTURE SELF
"mappings
"normal
:nnoremap <leader>ev :tabnew $MYVIMRC<CR>
:nnoremap <leader>sv :so $MYVIMRC<cr>
"visual
:vnoremap <leader>" <esc>`>a"<esc>`<i"<esc>
"insert

"autocommands
autocmd!
:au FileType java nnoremap <buffer> <localleader>c Apublic class Solution {<cr>}<esc>kfS<esc>
:au FileType java nnoremap <buffer> <localleader>m Apublic static void main(String[] args) {<cr>}<esc>ko
