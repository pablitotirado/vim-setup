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
function! CloseFile()
     if len(filter(range(1, bufnr('$')), 'buflisted(v:val)')) == 1
         :q
     else
         :bdelete
     endif
endfunction

nmap <Leader>q :call CloseFile()<CR>

" Split vertical
nmap <Leader>s :vsplit<CR>

" Finder
nmap <Leader>f :call fzf#run({'sink': 'e', 'down': '~20%'})<CR>

command! -bang -nargs=* Rg call fzf#vim#grep("rg --column --line-number --no-heading --color=always --smart-case ".shellescape(<q-args>), 1, {'options': '--delimiter : --nth 4..'}, <bang>0)
" Finder in files
nmap <Leader>F :Rg<CR>

" Search in file
nmap <Leader>b :/
nmap <Leader>/ :/

" Git
nmap <Leader>c :Gdiffsplit<CR>
nmap <Leader>d :0Git<CR>
nmap <Leader>a :Gw<CR>

"abbreviations from git commands
cnoreabbrev gpush Gpush
cnoreabbrev gstatus Gstatus
cnoreabbrev gco Gco
cnoreabbrev gpull Gpull

""cnoreabbrev gpu Gpush
cnoreabbrev gpu :!git push
cnoreabbrev gst Gstatus
cnoreabbrev gpl Gpull

" Diagnostics
cnoreabbrev dia CocDiagnostics

" Command line
map <Leader>; :

" Command find and replace
command! -nargs=+ Replace :%s/<args>/gc
cnoreabbrev replace Replace

" List files opened
nmap <Leader>p :Buffers<CR>


nmap <silent> K :call <SID>coc#refresh()<CR>


" Move focus between split screens
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Autocomplete parents pairs
inoremap ( ()<Esc>i
inoremap [ []<Esc>i
inoremap ' ''<Esc>i
inoremap " ""<Esc>i
inoremap ` ``<Esc>i
inoremap ${ ${}<Esc>i
inoremap { {<CR>}<C-c>O

" Run jest for current project
command! -nargs=0 Jest :call  CocAction('runCommand', 'jest.projectTest')

" Run jest for current file
command! -nargs=0 JestCurrent :call  CocAction('runCommand', 'jest.fileTest', ['%'])

" Run jest for current test
nnoremap <leader>te :call CocAction('runCommand', 'jest.singleTest')<CR>
nnoremap <leader>ta :JestCurrent<CR>

" Init jest in current cwd, require global jest command exists
command! JestInit :call CocAction('runCommand', 'jest.init')




nmap <Leader>rn <Plug>(coc-rename)


nnoremap <silent> K :call <SID>show_documentation()<CR>

" Open terminal and run command 
" param1 : command
" param2 : focus in terminal
"          0: false, 
"          null or 1: true  
function! RunCommand(command,...)
    let command = a:command
    let focus = get(a:, 1, 1) 
    echo('Running Command...' . command)
  let bufNum = bufnr("%")
  let bufType = getbufvar(bufNum, "&buftype", "not found")
  if bufType == "terminal"
    " close existing terminal
    execute "q"
  else 
    vsplit
    execute "normal \<C-l>"
    execute "term " . command
    execute "set nonu"
    execute "set nornu"
    " toggle insert on enter/exit
    silent au BufLeave <buffer> stopinsert!
    silent au BufWinEnter,WinEnter <buffer> startinsert!
    execute "tnoremap <buffer> <Leader>q <C-\\><C-n>:q<CR>"
    if (!focus)
     execute "normal \<C-h>"
    else
     execute "normal \<C-h>"
     execute "normal \<C-l>"
    endif
  endif
endfunction

cnoreabbrev up :call RunCommand('npm run start')
cnoreabbrev schema :call RunCommand('git log --all --graph')

"Atajo para ejecutar comandos simples en terminal
nmap <Leader>t :!

"Atajo para entrar en modo normal
map <Leader>; :

"Cambia entre numero relativo y no relativo
nnoremap <C-N> :set relativenumber!<CR>

"Cambiar entre tabs de archivos abiertos
nnoremap <C-]> :bnext<CR>
nnoremap <C-[> :bprevious<CR>

"Snippets
imap csl console.log()
imap fn () => {}
