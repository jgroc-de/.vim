set nu
set mouse:a
syntax on
filetype plugin indent on

" --- searching
set hlsearch incsearch ignorecase smartcase
nnoremap <BS> :nohlsearch<cr>

" --- autosave on exit
"set autowrite

set foldmethod=manual
set shiftwidth=4
set	expandtab
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

" --- Synstatic config
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_php_checkers = ['php']

" --- PhpComplete config
let g:phpcomplete_parse_docblock_comments = 1
let g:phpcomplete_mappings = {
  \ 'jump_to_def': ',g',
  \ 'jump_to_def_tabnew': ',t',
  \ 'jump_to_def_split': ',s',
  \ }

autocmd FileType javascript setlocal sw=2 ts=2 et
autocmd FileType html setlocal sw=2 ts=2 et
autocmd FileType html.twig setlocal sw=2 ts=2 noet
autocmd FileType htmldjango.twig setlocal sw=2 ts=2 noet

" --- search under cursor
map <F4> :execute "grep -R /" . expand("<cword>") . "/j **" <Bar> cw<CR>

function! Phpstan()
    let test = expand("%:p")
    !~/learn/dashboard/php/vendor/phpstan/phpstan/bin/phpstan analyse %:p --level=max
endfunction

:command Phpstan call Phpstan()
