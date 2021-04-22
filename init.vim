syntax on
set mouse=a
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
set autoindent
set foldmethod=syntax " syntax highlighting items specify folds
set foldcolumn=0      " defines 1 col at window left, to indicate folding
set foldlevelstart=99 " start file with all folds opened
set noswapfile
set nobackup
set number
language en_US.UTF-8

if (has('termguicolors'))
  set termguicolors
endif

""""""""""""""""""" Imports shortcuts
so ~/.config/nvim/maps.vim

""""""""""""""""""" Plugins
call plug#begin('~/.config/nvim/plugged')
  Plug 'alvan/vim-closetag'
  Plug 'jiangmiao/auto-pairs'
  Plug 'tpope/vim-surround'
  Plug 'neoclide/coc-jest'
  Plug 'APZelos/blamer.nvim'
  Plug 'morhetz/gruvbox'
  Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
 
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'scrooloose/nerdtree'
  Plug 'tpope/vim-fugitive'
  Plug 'airblade/vim-gitgutter'
  Plug 'Yggdroot/indentLine'
  "Vue
  Plug 'posva/vim-vue'
  Plug 'leafOfTree/vim-vue-plugin'
  Plug 'sainnhe/sonokai'
  ""Ruby
  Plug 'vim-ruby/vim-ruby'
  Plug 'maxmellon/vim-jsx-pretty'
  Plug 'pangloss/vim-javascript'
  Plug 'leafgarland/typescript-vim'
  Plug 'peitalin/vim-jsx-typescript'
  Plug 'jparise/vim-graphql'
  Plug 'andrewradev/tagalong.vim'
 call plug#end()

set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin()
  Plugin 'vim-airline/vim-airline'
  Plugin 'cakebaker/scss-syntax.vim'
  Plugin 'udalov/kotlin-vim'
call vundle#end()

"""""""""""""""" Custom status bar
function! StatuslineGit()
  let l:branchname = system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
  return strlen(l:branchname) > 0?l:branchname:''
endfunction

set statusline+=%#StatusBar#\ %f\ \ %m

" Right side settings
set statusline+=%=\ %{StatuslineGit()} 
set statusline+=\ %l/%L,%c\ 

""""""""""""""""""" Plugins config 
so ~/.config/nvim/plug.config.vim


""""""""""""""""""" Imports colors
so ~/.config/nvim/colors.vim
