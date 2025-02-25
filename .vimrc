autocmd!
"autocmd CmdLineLeave * echo ''  "this erases a command right after you do it 
set clipboard=unnamedplus
set tabstop=4
set timeoutlen=600
set expandtab "in insert mode, pressing tab now actually puts spaces
set incsearch 
set nocompatible 
set showmode " show -- INSERT -- and the like
set shiftwidth=4
set hlsearch " highlights search words (n or N work without highlighting)
set hidden
set nu
set wiw=20 
set wmw=3 
set nowrap "wraps around text w/o changing it in the buffer
"set colorcolumn=80
set foldmethod=syntax
filetype indent on
set autoindent
set undofile "creates file of undo history, allowing undo between sessions
set rnu 
set history=100 
colorscheme industry " best colorscheme B]
let g:netrw_liststyle=3 " shows files as tree in netrw
let g:netrw_banner=0 " removes low-use help banner on netrw
syntax on " detects language syntax and applies colors
set noruler
set showcmd
set timeout
set ttimeout
set splitright
set splitbelow

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
:nnoremap <leader>time i<c-r>=strftime('%y-%m-%d-%H:%M')<CR><tab><ESC>
:nnoremap <leader>date i<C-r>=strftime("%y-%m-%d")<CR><tab><tab><Esc>
:nnoremap <silent><leader><C-]> <C-w><C-]><C-w>T


"visual
:vnoremap <leader>" <esc>`>a"<esc>`<i"<esc>
"insert

augroup vimrc
    autocmd!
    :au FileType java nnoremap <buffer> <localleader>c Apublic class Solution {<cr>}<esc>kfSdwi<space><esc>ha
    :au FileType java nnoremap <buffer> <localleader>m opublic static void main(String[] args) {<cr>}<esc>O
    :au FileType java nnoremap <buffer> <localleader>p oSystem.out.println();<esc>hi
    :au FileType java nnoremap <buffer> <localleader>P OSystem.out.println();<esc>hi
augroup END

"augroup PersonalNetrwSettings
"    autocmd!
"    autocmd FileType netrw setlocal relativenumber
"augroup END

augroup remember_folds
    autocmd!
    autocmd BufWinLeave * if expand('%') != '' | mkview | endif
    autocmd BufWinEnter * if expand('%') != '' | silent! loadview | endif
augroup END

