let g:pathogen_disabled = []

call pathogen#infect()
set runtimepath^=~/.vim/bundle/ctrlp.vim
set rtp+=~/.fzf

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


if version >= 740
    set breakindent
endif
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
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent

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

set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=L  "remove scrollbar
set guioptions-=r
set guioptions-=b
set guioptions-=e  "remove those ugly tabs

nnoremap <C-F11> :if &go=~#'m'<Bar>set go-=m<Bar>else<Bar>set go+=m<Bar>endif<CR>
nnoremap <C-F12> :if &go=~#'T'<Bar>set go-=T<Bar>else<Bar>set go+=T<Bar>endif<CR>
nnoremap <C-F9> :if &go=~#'r'<Bar>set go-=r<Bar>else<Bar>set go+=r<Bar>endif<CR>

set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.swf
set wildignore+=*/node_modules/*,*/bower_components/*,*/dist/*
autocmd BufWritePost $MYVIMRC so %

" Markdown
au BufRead,BufNewFile *.md set filetype=markdown
"au BufRead,BufNewFile *.txt,*.tex,*.md set wrap linebreak nolist textwidth=0 wrapmargin=0
"au BufRead,BufNewFile *.md setlocal textwidth=80

" trim leading whitespaces on save
autocmd BufWritePre * :%s/\s\+$//e

let g:airline_theme='tender'
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

" vim-jsx-pretty
let g:vim_jsx_pretty_highlight_close_tag = 1

let g:ackprg = 'ag --nogroup --nocolor --column'
nnoremap <C-b> :CtrlPBuffer<CR>

if version >= 740
    set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣
endif

set t_ut=

set spelllang=es
set sessionoptions+=resize,winpos
call system('wmctrl -i -b add,maximized_vert,maximized_horz -r '.v:windowid)
set clipboard=unnamedplus

syntax enable
colorscheme native
highlight Visual guibg=#444444 ctermbg=DarkGray term=reverse

highlight GitGutterAdd    guifg=#009900 ctermfg=2
highlight GitGutterChange guifg=#bbbb00 ctermfg=3
highlight GitGutterDelete guifg=#ff2222 ctermfg=1

set guifont=Meslo\ LG\ M\ 13
set shell=/usr/bin/zsh
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|env\|git\|build'
let g:prettier#config#trailing_comma = 'none'
