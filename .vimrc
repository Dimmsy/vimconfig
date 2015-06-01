" WINDOWS EXCEPTIONS
if has ("win64") || has("win32")
	set term=xterm
	set t_Co=256
	let &t_AF="\e[38;5;%dm"
	let &t_AB="\e[48;5;%dm"

	call plug#begin('~/vimfiles/plugged')
else
" ON LINUX
	call plug#begin('~/.vim/plugged')
endif


"--------------
"   Vim Plug
"--------------
Plug 'mtglsk/mushroom'

Plug 'luochen1990/rainbow' " Pathenteses are colored
let g:rainbow_active = 1

Plug 'morhetz/gruvbox'
let g:gruvbox_italic=0

Plug 'xterm-color-table.vim'

Plug 'Valloric/vim-operator-highlight'
let g:ophigh_color=218

call plug#end()
"--------------
"--------------



colorscheme Monokai
colorscheme gruvbox
set background=dark
hi String ctermfg=103
"colorscheme obsidian
"colorscheme Chasing_Logic
"colorscheme bubblegum
"Tomorrow-Night-Eighties
"candyman
"colorscheme mustang
"lilypink

set tabstop=4
set shiftwidth=4

set nu

let mapleader=' '

set backspace=indent,eol,start

nmap ; :
imap jj <Esc>
nmap j gj
nmap k gk

 
"My own commands/plugins
" Commands to change comment color to a bright color and back to default
nnoremap <leader>hic :hi Comment ctermfg=LightMagenta<cr>
nnoremap <leader>hid :colo gruvbox <bar> set background=dark <bar>hi String ctermfg=103 <cr>

nnoremap <leader>ginna :colo mushroom<cr>

" Highlight characters on 81st column
hi ColorColumn ctermbg=52
call matchadd('colorColumn','\%81v', 100)

" Rainbow parenthesis highlighting
let g:rainbow_conf = {
\   'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
\   'ctermfgs': ['lightblue', 'lightmagenta', 'lightgreen','lightcyan'],
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
