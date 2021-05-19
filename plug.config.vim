""""""""""""""""""" Coc extensions
let g:coc_global_extensions = ['coc-tabnine', 'coc-tsserver', 'coc-eslint', 'coc-prettier', 'coc-json', 'coc-snippets', 'coc-jest']
let g:coc_snippet_next = '<tab>'

command! -nargs=0 Prettier :CocCommand prettier.formatFile

""""""""""""""""""" fzf config
let g:fzf_layout = { 'down': '~40%' }

""""""""""""""""""" Tagalong
let g:tagalong_filetypes = ['html', 'xml', 'jsx', 'eruby', 'ejs', 'eco', 'php', 'htmldjango', 'javascriptreact', 'typescriptreact']
  let g:airline#extensions#keymap#enabled = 1
"Blamer
let g:blamer_show_in_visual_modes = 0
let g:blamer_show_in_insert_modes = 1
let g:blamer_enabled = 1

set termguicolors     " enable true colors support
"let ayucolor="light"  " for light version of theme
"let ayucolor="mirage" " for mirage version of theme
let ayucolor="dark"   " for dark version of theme
colorscheme ayu

"let g:gruvbox_contrast_dark = "hard"
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'codedark'

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

function! StatuslineGit()
  let l:branchname = system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
  return strlen(l:branchname) > 0?l:branchname:''
endfunction
