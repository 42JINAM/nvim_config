call plug#begin()

Plug 'vim-syntastic/syntastic'
Plug 'alexandregv/norminette-vim'
Plug 'pbondoer/vim-42header'
call plug#end()

" Enable norminette-vim (and gcc)
let g:syntastic_c_checkers = ['norminette', 'gcc']
let g:syntastic_aggregate_errors = 1

" Set the path to norminette (do no set if using norminette of 42 mac)
let g:syntastic_c_norminette_exec = 'norminette'

" Support headers (.h)
let g:c_syntax_for_h = 1
let g:syntastic_c_include_dirs = ['include', '../include', '../../include', 'libft', '../libft/include', '../../libft/include']

" Pass custom arguments to norminette (this one ignores 42header)
let g:syntastic_c_norminette_args = '-R CheckTopCommentHeader'

" Check errors when opening a file (disable to speed up startup time)
let g:syntastic_check_on_open = 1

" Enable error list
let g:syntastic_always_populate_loc_list = 1

" Automatically open error list
let g:syntastic_auto_loc_list = 1

" Skip check when closing
let g:syntastic_check_on_wq = 0


" Activate vim syntax coloring
syntax on
" Set line numbers as visible
set nu
" Set row numbers as visible
set ru
" Allow cursor movement by clicking
set mouse=a

" Use spaces instead of tabs
" set expandtab
" Be smart when using tabs 
set smarttab
" set (1 tab == 4 spaces)
set shiftwidth=4
set tabstop=4

" Auto-indent
set ai
" Smart indent
set si
" Wrap lines
set wrap

" Copy and paste to system clipboard
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P

let g:user42 = 'jinam'
let g:mail42 = 'jinam@student.42.fr'

let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"
