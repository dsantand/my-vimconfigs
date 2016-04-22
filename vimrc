" ----- patogen Load -----

execute pathogen#infect()

" ----- General Shit ------

set backspace=indent,eol,start
set ruler
set number
set showcmd
set incsearch
set hlsearch
set laststatus=2

syntax on
filetype plugin indent on

map <F2> :q!<CR>

" ----- NERDTree and NERDTreeTabs -----

map <Leader>t :NERDTreeTabsToggle<CR>
map <leader>s :NERDTreeFind<CR>
let g:nerdtree_tabs_open_on_console_startup=0
let g:nerdtree_tabs_autoclose=1
let g:NERDTreeChDirMode       = 2
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" ----- ctrlp.vim -----

let g:ctrlp_custom_ignore = {
			\ 'dir':  '\.git$\|\.hg$\|\.svn$\|bower_components$\|dist$\|node_modules$\|project_files$\|target$\|war$\|_build\$|tags$\|\.tmp$',
			\ 'file': '\.exe$\|\.so$\|\.dll$\|\.pyc$' }
let g:ctrlp_working_path_mode = 'rw'
let g:ctrlp_dont_split = 'NERD_tree_2'

" ----- solarized -----
set background=dark
let g:solarized_termcolors=256

colorscheme solarized

" ----- scrooloose/syntastic settings -----
let g:syntastic_error_symbol = '✘'
let g:syntastic_warning_symbol = "▲"
augroup mySyntastic
  au!
  au FileType tex let b:syntastic_mode = "passive"
augroup END

" ----- Raimondi/delimitMate settings -----
let delimitMate_expand_cr = 1
augroup mydelimitMate
  au!
  au FileType markdown let b:delimitMate_nesting_quotes = ["`"]
  au FileType tex let b:delimitMate_quotes = ""
  au FileType tex let b:delimitMate_matchpairs = "(:),[:],{:},`:'"
  au FileType python let b:delimitMate_nesting_quotes = ['"', "'"]
augroup END

" ----- ntpeters/vim-better-whitespace -----
autocmd BufWritePre * StripWhitespace

" ----- tpope/vim-surround -----
" https://github.com/tpope/vim-surround

" ----- majutsushi/tagbar -----
nmap <Leader>b :TagbarToggle<CR>

" ----- vim-airline/vim-airline
let g:airline#extensions#tabline#enabled=1

" ----- scrooloose/syntastic -----
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

" ----- maven -----
"
