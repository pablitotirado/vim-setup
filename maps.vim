":help key-notation

""""""""""""""""""""""" Shortcutslet mapleader = "\<space>"
let mapleader = " "

"remap got to definitions local
nnoremap fs gd

" require('....
nmap ff :call search('\V' . '(')<CR> gf
"nmap ff gf

nmap ex ^
" show tree directories
nmap <Leader>n :NERDTreeFind<CR>

" Save file
nmap <Leader>w :w<CR>
nmap <Leader>wq :wq<CR>
nmap <Leader>, :noh<CR>

" Quit
" close each buffer and close vim

"Close project
nmap <Leader>q :call CloseFile()<CR>

"Split vertical
nmap <Leader>s :vsplit<CR>

"Finder
nmap <Leader>f :call fzf#run({'sink': 'e', 'down': '~20%'})<CR>

"Buscar palabras en archivos
map <Leader>F :Rg<CR>

"Buscar en un archivo
map <Leader>/ :/

"Ver errores en el archivo
map <Leader>cd :CocDiagnostics<CR>

"Ctrl + F renombra todas las coincidencias en un archivo
map <C-F> :replace
cnoreabbrev replace Replace

"===>Moverse entre las ventanas abiertas con split
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L> 
nnoremap <C-H> <C-W><C-H>

"===> Cambia el nombre de una variable/funcion en donde se uso 
map <Leader>rn <Plug>(coc-rename)

"===> Atajo para ejecutar comandos simples en terminal 
map <Leader>t :!

"===> Atajo para entrar en modo normal 
map <Leader>; :

"===> Cambia entre numero relativo y no relativo 
map <C-N> :set relativenumber!<CR>

"===> Tab siguiente 
map <C-]> :bnext<CR>

"===> Tab previa 
map <C-[> :bprevious<CR>

"===> Corre el test en el que esta el cursor 
map <leader>te :call CocAction('runCommand', 'jest.singleTest')<CR>

"===> Corre todo el archivo de test 
map <leader>ta :JestCurrent<CR>

"===> Corre todos los test del proyecto 
map <leader>ate :Jest<CR>

"===> Ver archivos abiertos 
map <Leader>p :Buffers<CR>

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
