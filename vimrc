" ----- Plugins List -----
"  ack.vim
"  ctrlp.vim
"  delimitMate
"  Dockerfile.vim
"  editorconfig-vim
"  nerdcommenter
"  mustache.vim
"  nerdtree
"  aklt/plantuml-syntax
"  syntastic
"  tagbar
"  vim-airline
"  vim-better-whitespace
"  vim-c0
"  vim-nerdtree-tabs
"  vim-colors-solarized
"  vim-surround
" ------ React ------
"  vim-jsx
" ------ Plugins Experimentales -----
"  vim-maven-plugin
"  SirVer/ultisnips
"

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
set mouse=a

" ----- TABS -----
set expandtab
set shiftwidth=2
set softtabstop=2
" ---------------

syntax on
filetype plugin indent on

map <F2> :q!<CR>

" ----- scrooloose/syntastic settings -----
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_loc_list_height = 5
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_javascript_checkers = ['eslint']

let g:syntastic_error_symbol = '❌'
let g:syntastic_style_error_symbol = '⁉️'
let g:syntastic_warning_symbol = '⚠️'
let g:syntastic_style_warning_symbol = '💩'

highlight link SyntasticErrorSign SignColumn
highlight link SyntasticWarningSign SignColumn
highlight link SyntasticStyleErrorSign SignColumn
highlight link SyntasticStyleWarningSign SignColumn

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
"let g:ctrlp_working_path_mode = 'rw'
let g:ctrlp_working_path_mode = 'rw'
let g:ctrlp_dont_split = 'NERD_tree_2'

" ----- solarized -----
set background=dark
let g:solarized_termcolors=256

colorscheme solarized

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


" ----- maven -----
"
"
" ----- aklt/plantuml-syntax
let g:plantuml_executable_script="/home/dsantand/LAN/plantuml.jar"

" ----- UltiSnips -----
" let g:UltiSnipsUsePythonVersion = 2
" let g:UltiSnipsEditSplit = "vertical"
" let g:UltiSnipsSnippetDirectories = "$HOME/.vim/bundle/vim-snippets/snippets"

" ----- vim-jsx ------
let g:jsx_ext_required = 0 "Allow JSX in normal JS files


