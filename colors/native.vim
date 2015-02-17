"
" Native Vim Color Scheme
" =======================
"
" author:   Armin Ronacher <armin.ronacher@active-4.com>
" license:  Public Domain
"
set background=dark

hi clear
if exists("syntax_on")
    syntax reset
endif

let colors_name = "native"

" Default Colors
hi Normal       guifg=#ffffff guibg=#222222
hi NonText      guifg=#444444 guibg=#111111
hi Cursor       guibg=#aaaaaa
hi lCursor      guibg=#aaaaaa

" Search
hi Search	    guibg=peru guifg=wheat
hi IncSearch	cterm=NONE ctermfg=yellow ctermbg=green
hi Search	cterm=NONE ctermfg=grey ctermbg=blue

" Window Elements
hi StatusLine   guifg=white guibg=#8090a0 gui=bold
hi StatusLineNC guifg=#506070 guibg=#a0b0c0
hi VertSplit    guifg=#a0b0c0 guibg=#a0b0c0
hi Folded       guifg=#f2f2f2 guibg=#2f2f2f
hi IncSearch	guifg=slategrey guibg=khaki

" Specials
hi Todo         guifg=#e50808 guibg=#520000 gui=bold
hi Title        guifg=#ffffff gui=bold

" Strings
hi String       guifg=#ed9d13
hi Constant     guifg=#ed9d13

" Syntax
hi Number       guifg=#3677a9
hi Statement    guifg=#6ab825 gui=bold
hi Function     guifg=#447fcf
hi PreProc      guifg=#cd2828 gui=bold
hi Comment      guifg=#999999 gui=italic
hi Type         guifg=#bbbbbb gui=bold

" Diff
hi DiffAdd	    ctermbg=4
hi DiffChange	ctermbg=5
hi DiffDelete	cterm=bold ctermfg=4 ctermbg=6
hi DiffText	    cterm=bold ctermbg=1

hi Pmenu guibg=brown gui=bold

highlight TabLine guifg=#777777 guibg=#333333 gui=none
highlight TabLineSel   guifg=#999999 guibg=#333333 gui=bold
highlight TabLineFill  guifg=#999999 guibg=#333333 gui=none
highlight SignColumn guibg=#222222

highlight LineNr term=bold cterm=NONE ctermfg=grey ctermbg=NONE gui=NONE guifg=#666666 guibg=NONE
