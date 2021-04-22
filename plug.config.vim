""""""""""""""""""" Coc extensions
let g:coc_global_extensions = ['coc-tabnine', 'coc-tsserver', 'coc-eslint', 'coc-prettier', 'coc-json', 'coc-snippets', 'coc-jest']
let g:coc_snippet_next = '<tab>'

""""""""""""""""""" fzf config
let g:fzf_layout = { 'down': '~40%' }

let g:rainbow_active = 1

let g:tagalong_filetypes = ['html', 'xml', 'jsx', 'eruby', 'ejs', 'eco', 'php', 'htmldjango', 'javascriptreact', 'typescriptreact']

"Blamer"
let g:blamer_show_in_visual_modes = 0
let g:blamer_show_in_insert_modes = 1
let g:blamer_enabled = 1
highlight Blamer guifg=red

colorscheme gruvbox
let g:gruvbox_contrast_dark = "hard"
let g:airline#extensions#tabline#enabled = 1

autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear
""'^node_modules$'
""""""""""""""""""" NERDTree config
let NERDTreeQuitOnOpen = 1
let NERDTreeShowHidden = 1
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeIgnore = ['^.git$']
let NERDTreeMinimalUI = 1
let NERDTreeMinimalMenu = 0
let NERDTreeCascadeOpenSingleChildDir = 1
let g:indentLine_bufNameExclude = ['NERD_tree.*']

""""""""""""""""""" Vim Mutton
let g:mutton_min_center_width = 188
