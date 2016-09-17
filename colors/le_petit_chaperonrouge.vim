if v:version >= 700
if &background ==# 'dark' || &background ==# 'light'
else
    set background = dark
endif

let g:colors_name = "le_petit_chaperonrouge"

hi Normal guifg=#c0a0a0 guibg=#362016 gui=NONE ctermfg=181 ctermbg=NONE cterm=NONE
hi Folded guifg=#c0a0a0 guibg=#362016 gui=NONE ctermfg=181 ctermbg=NONE cterm=NONE
hi FoldColumn guifg=#c0a0a0 guibg=#362016 gui=NONE ctermfg=181 ctermbg=NONE cterm=NONE
hi SignColumn guifg=#c0a0a0 guibg=#362016 gui=NONE ctermfg=181 ctermbg=NONE cterm=NONE
hi Constant guifg=#993745 guibg=NONE gui=NONE ctermfg=131 ctermbg=NONE cterm=NONE
hi Boolean guifg=#993745 guibg=NONE gui=NONE ctermfg=131 ctermbg=NONE cterm=NONE
hi Float guifg=#993745 guibg=NONE gui=NONE ctermfg=131 ctermbg=NONE cterm=NONE
hi Number guifg=#993745 guibg=NONE gui=NONE ctermfg=131 ctermbg=NONE cterm=NONE
hi Character guifg=#ffffff guibg=NONE gui=NONE ctermfg=231 ctermbg=NONE cterm=NONE
hi String guifg=#ffffff guibg=NONE gui=NONE ctermfg=231 ctermbg=NONE cterm=NONE
hi Function guifg=#9f424b guibg=NONE gui=NONE ctermfg=131 ctermbg=NONE cterm=NONE
hi Identifier guifg=#806060 guibg=NONE gui=NONE ctermfg=138 ctermbg=NONE cterm=NONE
hi Statement guifg=#993745 guibg=NONE gui=NONE ctermfg=131 ctermbg=NONE cterm=NONE
hi cppCast guifg=#993745 guibg=NONE gui=NONE ctermfg=131 ctermbg=NONE cterm=NONE
hi Operator guifg=#94998a guibg=NONE gui=NONE ctermfg=145 ctermbg=NONE cterm=NONE
hi Conditional guifg=#9f424b guibg=NONE gui=NONE ctermfg=131 ctermbg=NONE cterm=NONE
hi Repeat guifg=#9f424b guibg=NONE gui=NONE ctermfg=131 ctermbg=NONE cterm=NONE
hi Label guifg=#9f424b guibg=NONE gui=NONE ctermfg=131 ctermbg=NONE cterm=NONE
hi Exception guifg=#9f424b guibg=NONE gui=NONE ctermfg=131 ctermbg=NONE cterm=NONE
hi Keyword guifg=#9f424b guibg=NONE gui=NONE ctermfg=131 ctermbg=NONE cterm=NONE
hi Title guifg=#7f0906 guibg=#993745 gui=NONE ctermfg=88 ctermbg=131 cterm=NONE
hi Type guifg=#ffffff guibg=NONE gui=NONE ctermfg=231 ctermbg=NONE cterm=NONE
hi StorageClass guifg=#993745 guibg=NONE gui=NONE ctermfg=131 ctermbg=NONE cterm=NONE
hi Typedef guifg=#a3414f guibg=NONE gui=NONE ctermfg=131 ctermbg=NONE cterm=NONE
hi MatchParen guifg=#993745 guibg=#7f0906 gui=NONE ctermfg=131 ctermbg=88 cterm=NONE
hi Comment guifg=#c0a0a0 guibg=#806060 gui=NONE ctermfg=181 ctermbg=138 cterm=NONE
hi SpecialComment guifg=#362016 guibg=#806060 gui=NONE ctermfg=52 ctermbg=138 cterm=NONE
hi Todo guifg=#c0a0a0 guibg=#c10138 gui=NONE ctermfg=181 ctermbg=161 cterm=NONE
hi PreProc guifg=#c10138 guibg=NONE gui=NONE ctermfg=161 ctermbg=NONE cterm=NONE
hi Define guifg=#c10138 guibg=NONE gui=NONE ctermfg=161 ctermbg=NONE cterm=NONE
hi PreCondit guifg=#c10138 guibg=NONE gui=NONE ctermfg=161 ctermbg=NONE cterm=NONE
hi Include guifg=#993745 guibg=NONE gui=NONE ctermfg=131 ctermbg=NONE cterm=NONE
hi Special guifg=#94998a guibg=NONE gui=NONE ctermfg=145 ctermbg=NONE cterm=NONE
hi SpecialChar guifg=#94998a guibg=NONE gui=NONE ctermfg=145 ctermbg=NONE cterm=NONE
hi Error guifg=#c10138 guibg=NONE gui=NONE ctermfg=161 ctermbg=NONE cterm=NONE
hi CursorLine guifg=NONE guibg=#402a20 gui=NONE ctermfg=NONE ctermbg=52 cterm=NONE
hi LineNr guifg=#7f0906 guibg=NONE gui=NONE ctermfg=88 ctermbg=NONE cterm=NONE
hi CursorColumn guifg=#c0a0a0 guibg=#362016 gui=NONE ctermfg=181 ctermbg=NONE cterm=NONE
hi CursorLineNr guifg=NONE guibg=#362016 gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
hi PMenuSbar guifg=#9f424b guibg=#7f0906 gui=NONE ctermfg=131 ctermbg=88 cterm=NONE
hi PMenu guifg=#9f424b guibg=#7f0906 gui=NONE ctermfg=131 ctermbg=88 cterm=NONE
hi WildMenu guifg=#9f424b guibg=#7f0906 gui=NONE ctermfg=131 ctermbg=88 cterm=NONE
hi PMenu guifg=#7f0906 guibg=#9f424b gui=NONE ctermfg=88 ctermbg=131 cterm=NONE
hi Question guifg=#81553d guibg=NONE gui=NONE ctermfg=131 ctermbg=NONE cterm=NONE
hi Search guifg=#c0a0a0 guibg=#81553d gui=NONE ctermfg=181 ctermbg=131 cterm=NONE
hi IncSearch guifg=#c0a0a0 guibg=#81553d gui=NONE ctermfg=181 ctermbg=131 cterm=NONE
hi VertSplit guifg=#362016 guibg=#362016 gui=NONE ctermfg=52 ctermbg=NONE cterm=NONE
hi StatusLineNC guifg=#362016 guibg=NONE gui=NONE ctermfg=52 ctermbg=NONE cterm=NONE
hi StatusLine guifg=#ffffff guibg=NONE gui=NONE ctermfg=231 ctermbg=NONE cterm=NONE
hi DiffAdd guifg=#362016 guibg=#94998a gui=NONE ctermfg=52 ctermbg=145 cterm=NONE
hi DiffDelete guifg=#ffffff guibg=#c10138 gui=NONE ctermfg=231 ctermbg=161 cterm=NONE
hi DiffChange guifg=#806060 guibg=#c0a0a0 gui=NONE ctermfg=138 ctermbg=181 cterm=NONE
hi DiffText guifg=#806060 guibg=#94998a gui=NONE ctermfg=138 ctermbg=145 cterm=NONE
hi Directory guifg=#ffffff guibg=NONE gui=NONE ctermfg=231 ctermbg=NONE cterm=NONE
hi SpellBad guifg=#ffffff guibg=#c10138 gui=NONE ctermfg=231 ctermbg=161 cterm=NONE
hi SpellCap guifg=#81553d guibg=#c10138 gui=NONE ctermfg=131 ctermbg=161 cterm=NONE
endif
