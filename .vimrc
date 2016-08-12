execute pathogen#infect()
syntax on
filetype plugin indent on

" Auto open NERDTree when vim opens and files exist
autocmd vimenter * NERDTree

" Close NERDTree when the last window closes
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

filetype plugin indent on
" show existing tab with 4 spaces width
  set tabstop=4
" " when indenting with '>', use 4 spaces width
  set shiftwidth=4
" " On pressing tab, insert 4 spaces
  set expandtab

" Show current line number
set number

" Show relative line numbers
set relativenumber

" Deal with swap files
set shortmess+=A

" Set colorscheme
colorscheme jellybeans

" Key mappings
map <C-n> :NERDTreeToggle<CR>

" include matchit.vim to traverse tags
:so ~/.vim/plugin/matchit.vim

" Syntastic configurations
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" ctrp fuzzy search
set runtimepath^=~/.vim/bundle/ctrlp.vim

" ignore case when searching
set ignorecase
