execute pathogen#infect()
syntax on
filetype plugin indent on

" Auto open NERDTree when vim opens and files exist
autocmd vimenter * NERDTree

" Close NERDTree when the last window closes
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Allow NERDTree to always show hidden files
let NERDTreeShowHidden=1

filetype plugin indent on
" show existing tab with 4 spaces width
  set tabstop=4
" " when indenting with '>', use 4 spaces width
  set shiftwidth=4
" " On pressing tab, insert 4 spaces
  set expandtab

" Windows should open to the right by default
set splitright

" Show current line number
set number

" Show current file name on the status line
set statusline+=%f

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

" Enable code folding
set foldmethod=indent   
set foldnestmax=10
set nofoldenable
set foldlevel=2

" Syntastic configurations
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Fugitive keymapping
nnoremap <space>gs :Gstatus<CR>
nnoremap <space>gc :Gcommit -v -q<CR>
nnoremap <space>gca :Gcommit -a -v -q<CR>
nnoremap <space>gp :Gpush<CR>
nnoremap <space>go :Git checkout<CR>
nnoremap <space>gr :Gread<CR>
nnoremap <space>gd :Gdiff<CR>

" Search and replace mapped to ctrl r in visual mode
vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left>"

" Expand region keymapping
map J <Plug>(expand_region_expand)
map K <Plug>(expand_region_shrink)

" ctrlp fuzzy search
set runtimepath^=~/.vim/bundle/ctrlp.vim

" ctrlp should ignore node_modules and .git
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.git|node_modules|dist)$',
  \ 'file': '\v\.(class|java)$',
  \ }

" ignore case when searching
set ignorecase

" YCM compiled with python2 so it should be ran with it
let g:ycm_server_python_interpreter = '/usr/bin/python'

" Use 256 color term to fix background issues in tmux
set term=screen-256color
