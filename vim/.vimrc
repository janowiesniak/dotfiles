call pathogen#infect()
call pathogen#helptags()

let mapleader = ","

map <leader>e :!mix test<CR> " Run elixir tests
map <leader>r :!rake<CR> " Run ruby tests
map <leader>f :CtrlP<CR>
map <leader><F5> :CtrlPClearCache<CR>

set nocompatible      " We're running Vim, not Vi!
set number            " Show numbers
set hlsearch          " Highlight search
set ts=2 sts=2 sw=2
set expandtab
set autoindent
set backspace=2       " Allow backspacing
syntax on             " Enable syntax highlighting
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins

nmap <leader>l :set list!<CR>

""""" UI Plugins =======================
set t_Co=256
set laststatus=2               " enable airline even if no splits
let g:airline_extensions = ['branch']
let g:airline#extensions#branch#enabled=1
let g:airline#extensions#branch#format = 1
let g:airline_theme='luna'
let g:airline_powerline_fonts=1
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.space = "\ua0"
let g:airline_symbols.linenr = ''
let g:airline_left_sep = ''
let g:airline_right_sep = ''

highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

""""" Fuzzy Search Plugin =======================
set runtimepath^=~/.vim/bundle/ctrlp.vim

" Tags with ctags
function! UpdateTags()
  let f = expand("%:p:h")
  let cwd = getcwd()
  let tagfilename = cwd . "/.ctags"
  let cmd = 'ctags -R -f ' . tagfilename . ' ' . '"' . f . '"'
  let resp = system(cmd)
endfunction

nmap <leader>t :CtrlPTag<CR>
nmap <leader>T :call UpdateTags()<CR>
set tags=.ctags

