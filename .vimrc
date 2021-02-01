set nocompatible              " be iMproved, required
filetype off                  " required
set backspace=2

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'preservim/nerdtree'
Plugin 'ycm-core/YouCompleteMe'
Plugin 'craigemery/vim-autotag'
Plugin 'vim-vdebug/vdebug'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'wfxr/minimap.vim'
Bundle 'arnaud-lb/vim-php-namespace'
Bundle 'joonty/vim-phpqa.git'
Plugin 'Yggdroot/indentLine'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

map <C-n> :NERDTreeToggle<CR>
let g:autotagTagsFile="tags"
set number
syntax on
let NERDTreeShowHidden=1
let g:debuggerPort = 9000
let g:debuggerTimeout = 30
let g:debuggerMaxDepth = 10
set expandtab
set tabstop=4
set colorcolumn=85

let g:minimap_auto_start=1
let g:minimap_width=20
set cursorline
let mapleader = "-"

function! IPhpInsertUse()
	call PhpInsertUse()
	call feedkeys('a',  'n')
endfunction

autocmd FileType php inoremap <Leader>u <Esc>:call IPhpInsertUse()<CR>
autocmd FileType php noremap <Leader>u :call PhpInsertUse()<CR>

autocmd VimEnter * NERDTree

let g:indent_guides_enable_on_vim_startup = 1
set list lcs=tab:\|\
