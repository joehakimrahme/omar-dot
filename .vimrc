execute pathogen#infect()
set nocompatible
set backspace=indent,eol,start
syntax on

set background=light
colorscheme solarized

set cursorline
set cursorcolumn
set colorcolumn=80

filetype on
filetype plugin on
filetype plugin indent on

set rnu
set hidden
set incsearch
set hlsearch
set list
set listchars=eol:↓,trail:·

" indent stuff
set ts=4 expandtab
set shiftwidth=4
set softtabstop=4

set pastetoggle=<F2>

" Beeping/Flashing
set noerrorbells visualbell t_vb=
if has('autocmd')
  autocmd GUIEnter * set visualbell t_vb=
endif

set laststatus=2

set wildchar=<Tab> wildmenu wildmode=full

" Maps
nmap <C-l> :bn<CR>
nmap <C-h> :bp<CR>
nmap <C-@> :ls<CR>
nmap K i<CR><ESC>k$

map <leader>\ :noh<CR>

nnoremap <up> <ESC>
nnoremap <down> <ESC>
nnoremap <left> <ESC>
nnoremap <right> <ESC>

inoremap <up> <ESC>
inoremap <down> <ESC>
inoremap <left> <ESC>
inoremap <right> <ESC>

vnoremap <up> <ESC>
vnoremap <down> <ESC>
vnoremap <left> <ESC>
vnoremap <right> <ESC>

" EasyMotion configuration
let g:EasyMotion_do_mapping = 0 " Disable default mappings
nmap s <Plug>(easymotion-s)
nmap s <Plug>(easymotion-s2)
let g:EasyMotion_smartcase = 1
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)

" ctrlp configruation
set runtimepath^=~/.vim/bundle/ctrlp.vim

" vim flake8 configuration
autocmd BufWritePost *.py call Flake8()
