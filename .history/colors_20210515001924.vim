
"===> Colors theme
hi Blamer guifg=#4a4a4a

hi Normal ctermfg=grey ctermbg=darkblue guifg=#e2e2e2 guibg=#000000

hi String ctermfg=142 guifg=#e1d945

hi Whitespace guibg=#e2e2e2 guifg=#e2e2e2


hi customColor ctermfg=223 ctermbg=236 guifg=bg guibg=#504945

""match console '^.*console.*'
"""autocmd VimEnter,WinEnter * 2match customColor '^.*console.*' 

hi customColor ctermfg=223 ctermbg=236 guifg=red guibg=#000000
syntax keyword pointKeyword '^.*import.*'
autocmd VimEnter,WinEnter *2 keyword customColor pointKeyword

"highlight link customColor keyword


"""autocmd VimEnter,WinEnter * 2match customColor



