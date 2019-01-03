set nu
set mouse:a
syntax on
filetype plugin indent on

" --- searching
set hlsearch incsearch ignorecase smartcase
nnoremap <BS> :nohlsearch<cr>

" --- autosave on exit
set autowrite

nmap <silent> <UP>            :prev<CR>
nmap <silent> <DOWN>          :next<CR>

" --- search replace -> just type SX/Y<CR>
nmap  S  :%s//g<LEFT><LEFT>

highlight ColorColumn ctermbg=magenta
call matchadd('ColorColumn, '\%81v', 100)

set foldmethod=marker
set shiftwidth=4
set tabstop=4
set backspace=indent,eol,start
set autoindent
set complete-=i
set laststatus=2
set ruler
set wildmenu
set encoding=utf-8
if &tabpagemax < 50
	set tabpagemax=50
endif

" --- Bépo config
source ~/.vim/config/vimrc.bepo
imap ,, <Esc>

" --- Nerdtree config
nnoremap <silent> <F9> :NERDTree<CR>
autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" --- Tagbar config
nmap <F8> :TagbarToggle<CR>
let g:tagbar_phpctags_bin='~/.vim/bundle/tagbar-phpctags.vim/bin/phpctags'

" --- You complete me config
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete
let g:ycm_filetype_blacklist = {
      \ 'c' : 1,
      \ 'cpp' : 1,
      \ 'header' : 1,
      \ 'asm' : 1,
      \ 'ruby' : 1,
      \}
