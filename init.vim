set termguicolors
let mapleader = " "
lua require('plugins')

set splitbelow
set splitright
set backspace=indent,eol,start
set switchbuf=usetab
set hidden

set mouse=a

set tabstop=2
set shiftwidth=2
set expandtab

set number relativenumber
set noshowmode
set noruler
set noshowcmd
set cmdheight=1

" COC-Specific
set nobackup
set nowritebackup
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
inoremap <silent><expr> <c-space> coc#refresh()
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
autocmd FileType scss setl iskeyword+=@-@
