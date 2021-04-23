":help key-notation

""""""""""""""""""""""" Shortcutslet mapleader = "\<space>"
let mapleader = " "

"remap got to definitions local
nnoremap fs gd

" require('....
nmap ff :call search('\V' . '(')<CR> gf
"nmap ff gf

nmap ex ^

"===> Mostrar finder
nmap <Leader>n :NERDTreeFind<CR>

"===> Guardar
nmap <Leader>w :w<CR>

"===> Guardar y quitar
nmap <Leader>wq :wq<CR>

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
nmap <C-N> :set relativenumber!<CR>

"===> Tab siguiente 
nmap <C-]> :bnext<CR>

"===> Tab previa 
nmap <C-[> :bprevious<CR>

"===> Corre el test en el que esta el cursor 
nmap <leader>te :call CocAction('runCommand', 'jest.singleTest')<CR>

"===> Corre todo el archivo de test 
nmap <leader>ta :JestCurrent<CR>

"===> Corre todos los test del proyecto 
nmap <leader>ate :Jest<CR>

"===> Ver archivos abiertos 
nmap <Leader>p :Buffers<CR>

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

"--------> SNIPPETS <---------"

imap csl console.log()
imap fn () => {}

" Autocomplete parents pairs
inoremap ( ()<Esc>i
inoremap [ []<Esc>i
inoremap ' ''<Esc>i
inoremap " ""<Esc>i
inoremap ` ``<Esc>i
inoremap ${ ${}<Esc>i
inoremap { {<CR>}<C-c>O

"--------> FUNCIONS <---------"

"===> CloseFile 
function! CloseFile()
     if len(filter(range(1, bufnr('$')), 'buflisted(v:val)')) == 1
         :q
     else
         :bdelete
     endif
endfunction






"Comandos a revisar
" Git
"nmap <Leader>c :Gdiffsplit<CR>
"nmap <Leader>d :0Git<CR>
"nmap <Leader>a :Gw<CR>
