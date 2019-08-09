""""""""""""""""""""""""""
" Configuration
""""""""""""""""""""""""""


" load plugins
execute pathogen#infect()

" color scheme
set background=dark
colorscheme solarized

filetype plugin indent on
"set spell
set cc=119                          " display color column
syntax enable                       " show syntax highlighting
set tabstop=4                       " set indent to 2 spaces
set shiftwidth=4
set expandtab                       " use spaces, not tab characters
set number
"set relativenumber

set directory=~/.swp//
set backupdir=~/.backups/

" highlight trailing whitespaces
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

" swap files

" switch off the netrw banner
let g:netrw_banner = 0

" switch netrw to tree view
let g:netrw_liststyle = 3

" disable automatic autocmpletion after dot
let g:jedi#popup_on_dot = 0

" show file path of file you're editing
set laststatus=2

"speed up update of vim gutter
set updatetime=2000
let g:gitgutter_realtime=0
let g:gitgutter_eager=0

""""""""""""""""""""""""""
" Key Bindings
""""""""""""""""""""""""""

" set leader to be a comma
let mapleader = ","

command! E Explore

" tabs
nnoremap <Left> :tabprevious<CR>
nnoremap <Right> :tabnext<CR>
nnoremap <C-t> :tabe<CR>

" git
nnoremap gs :Gstatus<CR>
nnoremap gb :Gblame<CR>
nnoremap gd :Gdiff<CR>
nnoremap gl :Git lo<CR>

""""""""""""""""""""""""""
" Serching
""""""""""""""""""""""""""
set hlsearch

" make ack.vim to use Silver Searcher (instead of ack)
let g:ackprg = 'ag --nogroup --nocolor --column'

" Search everything: firstly define Ag to search for the provided text and open
" a quickfix, then bind it to \
command -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!
nnoremap \ :Ag<SPACE>

" Search for what's under the cursor
noremap <Leader>a :Ack -r <cword> ~/repos/<cr>

" Enable ctrlp
set runtimepath^=~/.vim/bundle/ctrlp.vim

" If exists use ag (Silver Searcher) in ack.vim - grep is a built-in command of
" Vim. By default, it will use our system's grep.
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif
