":help key-notation

""""""""""""""""""""""" Shortcutslet mapleader = "\<space>"
let mapleader = " "

"remap arrows 
nnoremap j h
nnoremap k j
nnoremap l k
nnoremap ; l

vnoremap j h
vnoremap k j
vnoremap l k
vnoremap ; l



nmap <leader>gv :colorscheme gruvbox-material<CR>
nmap <leader>ayu :colorscheme ayu<CR>

nmap <leader>3 0
nmap <leader>9 $

"remap got to definitions local
nnoremap fs gd

nmap <leader>ad <Plug>(coc-codeaction)
nmap <silent>af <Plug>(coc-type-definition)
"Select the word to right cursor
nmap <Leader>d <space> viw

"require('....
nmap ff :call search('\V' . '(')<CR> gf

"===> Seleccionar todo el texto de un archivo
nmap <C-a> <esc>ggVG<CR>

"===> Ir al principio de la linea
nmap ex ^

"===> Mostrar y cerrar finder
nmap <Leader>n :NERDTreeFind<CR>

"===> Guardar
nmap <Leader>w :w<CR>

"===> Guardar y quitar
nmap <Leader>wq :wq<CR>

"Escape y autosave
imap ii <ESC>:w<CR>

"===> Quitar subrayado de color al remarcar
nmap <Leader>, :noh<CR>

"===> Cerrar archivo
nmap <Leader>q :call CloseFile()<CR>

"===> Split vertical
nmap <Leader>s :vsplit<CR>

"===> Buscar en finder
nmap <Leader>f :call fzf#run({'sink': 'e', 'down': '~20%'})<CR>

"===> Buscar palabras en archivos
nmap <Leader>F :Rg<CR>

"===> Buscar en un archivo
nmap <Leader>/ :/

"===> Ver errores en el archivo
nmap <Leader>cd :CocDiagnostics<CR>

"===> Ctrl + F renombra todas las coincidencias en un archivo
nmap <C-F> :replace
cnoreabbrev replace Replace

"===> Moverse entre las ventanas abiertas con split
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L> 
nnoremap <C-H> <C-W><C-H>

"===> Atajo para ejecutar comandos simples en terminal 
nmap <Leader>t :!

"===> Atajo para entrar en modo normal 
nmap <Leader>; :

"===> Cambia entre numero relativo y no relativo 
nmap <C-h> :set relativenumber!<CR>

"===> Tab siguiente 
nnoremap <C-K> :bnext<CR>

"===> Tab previa 
nnoremap <C-J> :bprevious<CR>

"===> Corre el test en el que esta el cursor 
nmap <Leader>te :call CocAction('runCommand', 'jest.singleTest')<CR>

"===> Corre todo el archivo de test 
nmap <Leader>ta :JestCurrent<CR>

"===> Corre todos los test del proyecto 
nmap <Leader>ate :Jest<CR>

"===> Ver archivos abiertos 
"nmap <Leader>p :Buffers<CR>
nmap <Leader>p :Prettier<CR>


""let g:VM_maps = {}
""let g:VM_leader                        = ' '
""let g:VM_maps["Get Operator"]          = ''
""let g:VM_maps["Reselect Last"]         = ''
""let g:VM_maps["Add Cursor At Pos"]     = ''
""let g:VM_maps["Start Regex Search"]    = ''
""let g:VM_maps["Select All"]            = '<C-n>'
""let g:VM_maps["Visual Regex"]          = ''
""let g:VM_maps["Visual All"]            = '' 
""let g:VM_maps["Visual Add"]            = ''
""let g:VM_maps["Visual Find"]           = ''
""let g:VM_maps["Visual Cursors"]        = '<C-9>'

let g:VM_maps = {}
let g:VM_leader                        = ' '
let g:VM_maps["Get Operator"]          = ''
let g:VM_maps["Reselect Last"]         = ''
let g:VM_maps["Add Cursor At Pos"]     = ''
let g:VM_maps["Start Regex Search"]    = ''
let g:VM_maps["Select All"]            = '<C-n>'
let g:VM_maps["Visual Regex"]          = ''
let g:VM_maps["Visual All"]            = '' 
let g:VM_maps["Visual Add"]            = ''
let g:VM_maps["Visual Find"]           = ''
let g:VM_maps["Visual Cursors"]        = ''


"--------> COMMANDS <--------"

"===> JestInit 
command! JestInit :call CocAction('runCommand', 'jest.init')

"===> Jest in all project 
command! -nargs=0 Jest :call  CocAction('runCommand', 'jest.projectTest')

"===> Jest in single test 
command! -nargs=0 JestCurrent :call  CocAction('runCommand', 'jest.fileTest', ['%'])

"===> Replace 
command! -nargs=+ Replace :%s/<args>/gc

"===> ConfigGrep 
command! -bang -nargs=* Rg call fzf#vim#grep("rg --column --line-number --no-heading --color=always --smart-case ".shellescape(<q-args>), 1, {'options': '--delimiter : --nth 4..'}, <bang>0)

"i-------> FUNCIONS <---------"

"===> CloseFile 
function! CloseFile()
     if len(filter(range(1, bufnr('$')), 'buflisted(v:val)')) == 1
         :q
     else
         :bdelete
     endif
endfunction


imap < <>

