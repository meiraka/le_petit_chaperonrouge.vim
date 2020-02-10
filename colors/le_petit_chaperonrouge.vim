if v:version >= 700
if &background ==# 'dark' || &background ==# 'light'
else
    set background = dark
endif

let g:colors_name = "le_petit_chaperonrouge"

hi Normal guifg=#c0a0a0 guibg=#362016 gui=NONE ctermfg=181 ctermbg=NONE cterm=NONE
hi! link Folded Normal
hi! link FoldColumn Normal
hi! link SignColumn Normal
hi NonText guifg=#4a342a guibg=NONE gui=NONE ctermfg=58 ctermbg=NONE cterm=NONE
hi Visual guifg=#362016 guibg=#94998a gui=NONE ctermfg=52 ctermbg=145 cterm=NONE
hi Constant guifg=#993745 guibg=NONE gui=NONE ctermfg=131 ctermbg=NONE cterm=NONE
hi! link Boolean Constant
hi! link Float Constant
hi! link Number Constant
hi Character guifg=#ffffff guibg=NONE gui=NONE ctermfg=231 ctermbg=NONE cterm=NONE
hi! link String Character
hi Function guifg=#9f424b guibg=NONE gui=NONE ctermfg=131 ctermbg=NONE cterm=NONE
hi Identifier guifg=#806060 guibg=NONE gui=NONE ctermfg=138 ctermbg=NONE cterm=NONE
hi Statement guifg=#993745 guibg=NONE gui=NONE ctermfg=131 ctermbg=NONE cterm=NONE
hi! link cppCast Statement
hi Operator guifg=#94998a guibg=NONE gui=NONE ctermfg=145 ctermbg=NONE cterm=NONE
hi Conditional guifg=#9f424b guibg=NONE gui=NONE ctermfg=131 ctermbg=NONE cterm=NONE
hi! link Repeat Conditional
hi! link Label Conditional
hi! link Exception Conditional
hi! link Keyword Conditional
hi Title guifg=#7f0906 guibg=#993745 gui=NONE ctermfg=88 ctermbg=131 cterm=NONE
hi SpecialKey guifg=#94998a guibg=NONE gui=NONE ctermfg=145 ctermbg=NONE cterm=NONE
hi Type guifg=#ffffff guibg=NONE gui=NONE ctermfg=231 ctermbg=NONE cterm=NONE
hi StorageClass guifg=#993745 guibg=NONE gui=NONE ctermfg=131 ctermbg=NONE cterm=NONE
hi Typedef guifg=#a3414f guibg=NONE gui=NONE ctermfg=131 ctermbg=NONE cterm=NONE
hi MatchParen guifg=#993745 guibg=#7f0906 gui=NONE ctermfg=131 ctermbg=88 cterm=NONE
hi Comment guifg=#c0a0a0 guibg=#806060 gui=NONE ctermfg=181 ctermbg=138 cterm=NONE
hi SpecialComment guifg=#362016 guibg=#806060 gui=NONE ctermfg=52 ctermbg=138 cterm=NONE
hi Todo guifg=#c0a0a0 guibg=#c10138 gui=NONE ctermfg=181 ctermbg=161 cterm=NONE
hi PreProc guifg=#c10138 guibg=NONE gui=NONE ctermfg=161 ctermbg=NONE cterm=NONE
hi! link Define PreProc
hi! link PreCondit PreProc
hi Include guifg=#993745 guibg=NONE gui=NONE ctermfg=131 ctermbg=NONE cterm=NONE
hi Special guifg=#94998a guibg=NONE gui=NONE ctermfg=145 ctermbg=NONE cterm=NONE
hi! link SpecialChar Special
hi Error guifg=#c10138 guibg=NONE gui=NONE ctermfg=161 ctermbg=NONE cterm=NONE
hi CursorLine guifg=NONE guibg=#402a20 gui=NONE ctermfg=NONE ctermbg=52 cterm=NONE
hi TabLine guifg=#7f0906 guibg=#402a20 gui=NONE ctermfg=88 ctermbg=52 cterm=NONE
hi LineNr guifg=#7f0906 guibg=NONE gui=NONE ctermfg=88 ctermbg=NONE cterm=NONE
hi CursorColumn guifg=#c0a0a0 guibg=#362016 gui=NONE ctermfg=181 ctermbg=NONE cterm=NONE
hi CursorLineNr guifg=NONE guibg=#362016 gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
hi PMenuSbar guifg=#362016 guibg=#806060 gui=NONE ctermfg=52 ctermbg=138 cterm=NONE
hi! link PMenu PMenuSbar
hi! link WildMenu PMenuSbar
hi! link PMenu PMenuSbar
hi PMenuThumb guifg=#806060 guibg=#2c160c gui=NONE ctermfg=138 ctermbg=52 cterm=NONE
hi PMenuSel guifg=#362016 guibg=#94998a gui=NONE ctermfg=52 ctermbg=145 cterm=NONE
hi Question guifg=#81553d guibg=NONE gui=NONE ctermfg=131 ctermbg=NONE cterm=NONE
hi Search guifg=#c0a0a0 guibg=#81553d gui=NONE ctermfg=181 ctermbg=131 cterm=NONE
hi! link IncSearch Search
hi VertSplit guifg=#362016 guibg=#362016 gui=NONE ctermfg=52 ctermbg=NONE cterm=NONE
hi StatusLineTermNC guifg=#362016 guibg=NONE gui=NONE ctermfg=52 ctermbg=NONE cterm=NONE
hi! link StatusLineNC StatusLineTermNC
hi StatusLineTerm guifg=#81553d guibg=NONE gui=NONE ctermfg=131 ctermbg=NONE cterm=NONE
hi! link StatusLine StatusLineTerm
hi DiffAdd guifg=#362016 guibg=#94998a gui=NONE ctermfg=52 ctermbg=145 cterm=NONE
hi DiffDelete guifg=#ffffff guibg=#c10138 gui=NONE ctermfg=231 ctermbg=161 cterm=NONE
hi DiffChange guifg=#806060 guibg=#c0a0a0 gui=NONE ctermfg=138 ctermbg=181 cterm=NONE
hi DiffText guifg=#806060 guibg=#94998a gui=NONE ctermfg=138 ctermbg=145 cterm=NONE
hi Directory guifg=#ffffff guibg=NONE gui=NONE ctermfg=231 ctermbg=NONE cterm=NONE
hi SpellBad guifg=#ffffff guibg=#c10138 gui=NONE ctermfg=231 ctermbg=161 cterm=NONE
hi SpellCap guifg=#81553d guibg=#c10138 gui=NONE ctermfg=131 ctermbg=161 cterm=NONE
endif
