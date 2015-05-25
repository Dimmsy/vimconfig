set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'luochen1990/rainbow' " Pathenteses are colored
let g:rainbow_active = 1

Plugin 'morhetz/gruvbox'
let g:gruvbox_italic=0

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall , :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins 
" 						append `!` to auto-approve removal
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

colorscheme Monokai
colorscheme gruvbox
set background=dark
"colorscheme obsidian
"colorscheme Chasing_Logic
"colorscheme bubblegum
"Tomorrow-Night-Eighties
"candyman
"colorscheme mustang
"lilypink

set tabstop=4
set shiftwidth=4

let mapleader=' '

nmap ; :
imap jj <Esc>
nmap j gj
nmap k gk

 
"My own commands/plugins
" Commands to change comment color to a bright color and back to default
nnoremap <leader>hic :hi Comment ctermfg=LightMagenta<cr>
nnoremap <leader>hid :colo gruvbox<cr>
" 
",'start=/./ end=/!/ fold'
let g:rainbow_conf = {
\   'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
\   'ctermfgs': ['lightblue', 'lightgreen', 'lightcyan', 'lightmagenta'],
\   'operators': '_,_',
\   'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
\   'separately': {
\       '*': {},
\       'tex': {
\           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
\       },
\       'lisp': {
\           'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
\       },
\       'vim': {
\           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
\       },
\       'html': {
\           'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
\       },
\       'css': 0,
\   }
\}

" \   'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold', 'start=/+/ end=/-/ fold','start=/=/ end=/_/ fold','start=/-/ end=/+/ fold','start=/:/ end=/;/ fold','start=/>/ end=/</ fold','start=/</ end=/>/ fold','start=/*/ end=/^/ fold','start=/^/ end=/*/ fold','start=/\./ end=/!/ fold'],
