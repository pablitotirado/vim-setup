syntax on
set mouse=a
set cursorline
set numberwidth=1
set clipboard=unnamedplus
set noshowcmd
set ruler
set encoding=UTF-8
set showmatch
set sw=2
set laststatus=2
set updatetime=100
set ttimeoutlen=50
set undofile
set undodir=~/.vim/undodir/
set history=100
set foldmethod=indent 
set foldcolumn=0      
set foldlevelstart=99 
set noswapfile
set nobackup
set number
set ruler
set autowrite
set t_Co=256
language en_US.UTF-8

if (has('termguicolors'))
  set termguicolors
endif

"Vim-Plug
call plug#begin('~/.config/nvim/plugged')
  Plug 'sainnhe/gruvbox-material'
 
  Plug 'mg979/vim-visual-multi', {'branch': 'master'}
  "Coc 
  Plug 'neoclide/coc.nvim', {'branch': 'release'} 
  Plug 'neoclide/coc-jest'
  
  "Mostrar autor de lineas commiteadas de git
  Plug 'APZelos/blamer.nvim'
  
  "Soporte styled-components
  Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
  
  "Buscador de archivos/palabras
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'

  "Nerdtree navegar archivos
  Plug 'scrooloose/nerdtree'

  "Soporte para comandos git
  Plug 'tpope/vim-fugitive'

  "Otro soporte para comandos git
  Plug 'airblade/vim-gitgutter'

  "Javascript Vue/Jsx/Graphql/Html
  Plug 'posva/vim-vue'
  Plug 'leafOfTree/vim-vue-plugin'
  Plug 'maxmellon/vim-jsx-pretty'
  Plug 'pangloss/vim-javascript'
  Plug 'leafgarland/typescript-vim'
  Plug 'peitalin/vim-jsx-typescript'
  Plug 'jparise/vim-graphql'
  Plug 'andrewradev/tagalong.vim'
  Plug 'evanleck/vim-svelte'
  Plug 'pangloss/vim-javascript'
  Plug 'HerringtonDarkholme/yats.vim'  
  "Ruby
  Plug 'vim-ruby/vim-ruby'
call plug#end()


"Vundle
set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin()
  Plugin 'vim-airline/vim-airline'
  Plugin 'cakebaker/scss-syntax.vim'
call vundle#end()


"===== Plugins config 
so ~/.config/nvim/plug.config.vim

"===== Colors
so ~/.config/nvim/colors.vim

"===== Maps
so ~/.config/nvim/maps.vim



