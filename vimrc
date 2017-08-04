let g:pathogen_disabled = []
"call add(g:pathogen_disabled, 'syntastic')
call add(g:pathogen_disabled, 'csapprox')
call add(g:pathogen_disabled, 'vim-pandoc')
call add(g:pathogen_disabled, 'ultisnips')
call add(g:pathogen_disabled, 'vim-snippets')

call pathogen#infect()
set runtimepath^=~/.vim/bundle/ctrlp.vim
set runtimepath+=~/.vim/ultisnips_rep

set nocompatible
set mousehide
set mouse=a
"set ttymouse=xterm2
set showcmd
set shell=bash
filetype plugin on
filetype indent on
set ofu=syntaxcomplete#Complete
set autochdir
set autowrite
set vb
set wildmenu
set autoread
set noswapfile
set number
set relativenumber
set hlsearch
" set noautochdir
set ttimeout
set ttimeoutlen=250
set notimeout
let mapleader = ","
set gcr=n:blinkon0

" set scrolloff=20

set hlsearch
set incsearch
nnoremap <leader><space> :noh<cr>

syntax enable
set background=dark

if version >= 740
    set breakindent
endif

colorscheme native

set guifont=Meslo\ LG\ S\ 10
"set guifont=Source\ Code\ Pro\ Medium\ 11

nnoremap n nzz
nnoremap N Nzz
nnoremap <F8>  :set cmdheight=1<CR> <C-w>=
nmap ñ ;
nmap Ñ :

map <F4> :Make<CR>

nmap s <Plug>(easymotion-s)

" "python with virtualenv support
" py << EOF
" import os
" import sys
" if 'VIRTUAL_ENV' in os.environ:
"   project_base_dir = os.environ['VIRTUAL_ENV']
"   activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
"   execfile(activate_this, dict(__file__=activate_this))
" EOF

let g:session_autosave = "yes"
let g:session_autoload = "no"
let g:session_directory = "~/.vimsessions"
" Persist the value of the global option 'makeprg'.
let g:session_persist_globals = ['&makeprg']

" Use Copen instead of copen
let g:toggle_list_copen_command="Copen!"

"set tabstop=2
set autoindent
set softtabstop=4
set shiftwidth=4
set expandtab

"filetypes
set lbr

au BufNewFile,BufRead *.mxml set filetype=mxml
au BufNewFile,BufRead *.as set filetype=actionscript
au BufNewFile,BufRead *.mako set filetype=mako
au BufNewFile,BufRead *.mak set filetype=mako
au BufRead,BufNewFile *.json set filetype=json
syntax on

set noerrorbells
set visualbell
set t_vb=

" use arrowkeys to switch splits in normal mode
nnoremap <up> <C-w>k
nnoremap <down> <C-w>j
nnoremap <left> <C-w>h
nnoremap <right> <C-w>l

nnoremap <C-Right> gt
nnoremap <C-Left> gT

set splitbelow
set splitright

" Activate Hardtime mode
let g:hardtime_default_on = 0

" Expand <CR> on curly braces
let delimitMate_expand_cr=1

map <C-t> :TagbarToggle<CR>


set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=L  "remove scrollbar
set guioptions-=r
set guioptions-=b
set guioptions-=e  "remove those ugly tabs

nnoremap <C-F11> :if &go=~#'m'<Bar>set go-=m<Bar>else<Bar>set go+=m<Bar>endif<CR>
nnoremap <C-F12> :if &go=~#'T'<Bar>set go-=T<Bar>else<Bar>set go+=T<Bar>endif<CR>
nnoremap <C-F9> :if &go=~#'r'<Bar>set go-=r<Bar>else<Bar>set go+=r<Bar>endif<CR>

let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_python_checkers= ['flake8']
let g:syntastic_python_flake8_args='--ignore=F403,E501,E711,E402,F405'
let g:syntastic_always_populate_loc_list = 1

set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.swf
set wildignore+=*/node_modules/*,*/bower_components/*,*/dist/*
autocmd BufWritePost $MYVIMRC so %

" Markdown
au BufRead,BufNewFile *.md set filetype=markdown
"au BufRead,BufNewFile *.txt,*.tex,*.md set wrap linebreak nolist textwidth=0 wrapmargin=0
"au BufRead,BufNewFile *.md setlocal textwidth=80

" trim leading whitespaces on save
autocmd BufWritePre * :%s/\s\+$//e

let g:UltiSnipsExpandTrigger="<C-e>"

let g:airline_theme='murmur'
let g:airline#extensions#enabled = 1
let g:airline_powerline_fonts = 0
set laststatus=2
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.space = ' '
let g:airline_symbols.whitespace = ''
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''

" unicode symbols
let g:airline_symbols.branch = "⎇"

" vim-jsx
let g:jsx_ext_required = 0

"Scrolling
" :map <C-U> <C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y>
" :map <C-D> <C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E>

let g:ackprg = 'ag --nogroup --nocolor --column'
set t_Co=256
nnoremap <C-b> :CtrlPBuffer<CR>

if version >= 740
    set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣
endif

set t_ut=

set spelllang=es
let g:pandoc#modules#disabled = ["folding"]
set sessionoptions+=resize,winpos
call system('wmctrl -i -b add,maximized_vert,maximized_horz -r '.v:windowid)
set clipboard=unnamed
