set nocompatible

" install vim plug if not yet installed
if empty(glob("$HOME/.local/share/nvim/site/autoload/plug.vim"))
    !sh -c 'curl -fLo $HOME/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
endif

"do plugin install
call plug#begin()
"Plug 'https://github.com/junegunn/seoul256.vim.git'
Plug 'git@github.com:vim-airline/vim-airline.git'
Plug 'git@github.com:preservim/nerdtree.git'
Plug 'franbach/miramare'
Plug 'ryanoasis/vim-devicons'
"Plug 'https://github.com/vim-syntastic/syntastic.git'
"Plug 'https://github.com/Shougo/deoplete.nvim.git'
"Plug 'https://github.com/numirias/semshi.git'
""end plugin install, this automatically executes filetype on/off
call plug#end()


"good tabs
set expandtab
set shiftwidth=4
set tabstop=4
set smartindent
set autoindent

"set leader key for easier shortcuts
let mapleader = ","

" faster saves and exiting
map <Leader>w :w<cr>
map <Leader>q :q<cr>
map <Leader>wq :wq<cr>

" faster splits and switching
map <Leader>l <C-W><C-L>
map <Leader>h <C-W><C-H>
map <Leader>j <C-W><C-J>
map <Leader>k <C-W><C-K>
set splitright
set splitbelow
map <Leader>L :vsp<cr>
map <Leader>J :split<cr>

" finish searching
map <Leader>/ :noh<cr>

" better than esc
inoremap jk <esc>

" faster scrolling, original J and K were kinda useless anyway
noremap J 3j
noremap K 3k

set scrolloff=999

" status bar
set showmode
set showcmd

" hybrid line numbering
set number relativenumber

set termguicolors
let g:miramare_enable_italic = 1
let g:miramare_disable_italic_comment = 1
colo miramare

" NERDTREE OPTIONS
" auto nerdtree if entering dir
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif

" open nerdtree
"map <Leader>nn :NERDTreeToggle<cr>
" open nerdtree, and focus if already opened
map <Leader>nn  :NERDTreeFocus<cr>
let g:loaded_clipboard_provider = 1
"/NERDTREE OPTIONS

" cursor line and cursor column
set cul cuc

" show a line at 80 chars
set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg='#111111'

" terminal commands
tnoremap jk <C-\><C-n>
set t_ut=""

"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
"let g:syntastic_enable_highlighting = 0
"
"let g:python3_host_prog ='/usr/bin/python3'
"
"" Use deoplete.
"let g:deoplete#enable_at_startup = 1
"" use tab for completion
"inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
"
