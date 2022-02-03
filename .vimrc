set nocompatible
filetype on
filetype plugin on
filetype indent on
syntax on
set number
set mouse=a
set clipboard=unnamed

set breakindent
set showbreak=↳>>

set smartindent " alinea la sintaxis
set showmatch " identifica la apertura y cierre de parentesis

" Set shift width to 4 spaces.
set shiftwidth=2

" Set tab width to 4 columns.
set tabstop=2

" Use space characters instead of tabs.
set expandtab

" Do not save backup files.
set nobackup

" Do not let cursor scroll below or above N number of lines when scrolling.
set scrolloff=10

" Do not wrap lines. Allow long lines to extend as far as the line goes.
" set nowrap
set wrap linebreak

" While searching though a file incrementally highlight matching characters as you type.
set incsearch

" Ignore capital letters during search.
set ignorecase

" Override the ignorecase option if searching for capital letters.
" This will allow you to search specifically for capital letters.
set smartcase

" Show partial command you type in the last line of the screen.
set showcmd

" Show the mode you are on the last line.
set showmode

" Show matching words during a search.
set showmatch

" Use highlighting when doing a search.
set hlsearch

" Set the commands to save in history default number is 20.
set history=1000

" Enable auto completion menu after pressing TAB.
set wildmenu

" Make wildmenu behave like similar to Bash completion.
set wildmode=list:longest

" There are certain files that we would never want to edit with Vim.
" Wildmenu will ignore files with these extensions.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

let NERDTreeShowHidden=1
let g:NERDTreeWinPos = "right"

highlight VertSplit cterm=NONE

hi FloatermBorder guibg=orange guifg=cyan
let g:floaterm_height = 0.4
let g:floaterm_width = 0.99
let g:floaterm_position = 'bottomright'

" PLUGINS ---------------------------------------------------------------- {{{
call plug#begin('~/.vim/plugged')
    Plug 'dense-analysis/ale'
    Plug 'preservim/nerdtree'
    Plug 'jiangmiao/auto-pairs'
    Plug 'voldikss/vim-floaterm'
    Plug 'leafgarland/typescript-vim'
    Plug 'mattn/emmet-vim'
    Plug 'pangloss/vim-javascript'
    Plug 'yuezk/vim-js'
    Plug 'maxmellon/vim-jsx-pretty'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'ryanoasis/vim-devicons'
    Plug 'voldikss/vim-floaterm'
call plug#end()
" }}}


" MAPPINGS --------------------------------------------------------------- {{{

let mapleader = ","
nnoremap <cr> :
nnoremap <leader><leader> :NERDTreeToggle<cr>

nnoremap z<left> <c-w>h
nnoremap z<right> <c-w>l
nnoremap z<down> <c-w>k
nnoremap z<up> <c-w>j

" Atajos de terminal flotante
" Abrir y cerrar terminal
noremap <leader>t :FloatermToggle<CR>
tnoremap <leader>t <C-\><C-n>:FloatermToggle<CR>

" Nueva terminal
tnoremap <leader>n <C-\><C-n>:FloatermNew<CR>

" Navehar entre terminales
tnoremap <leader><tab> <C-\><C-n>:FloatermNext<CR>
tnoremap <leader><S-tab> <C-\><C-n>:FloatermPrev<CR>

" Cerrar terminal
tnoremap <leader>q <C-\><C-n>:FloatermKill<CR>

" Modo normal en terminal
tnoremap <leader><ESC> <C-\><C-n>

" Atajos de terminal flotante
" Abrir y cerrar terminal
noremap <leader>t :FloatermToggle<CR>
tnoremap <leader>t <C-\><C-n>:FloatermToggle<CR>

" Nueva terminal
tnoremap <leader>n <C-\><C-n>:FloatermNew<CR>

" Navehar entre terminales
tnoremap <leader><tab> <C-\><C-n>:FloatermNext<CR>
tnoremap <leader><S-tab> <C-\><C-n>:FloatermPrev<CR>

" Cerrar terminal
tnoremap <leader>q <C-\><C-n>:FloatermKill<CR>

" Modo normal en terminal
tnoremap <leader><ESC> <C-\><C-n>

" Have nerdtree ignore certain files and directories.
let NERDTreeIgnore=['\.git$', '\.jpg$', '\.mp4$', '\.ogg$', '\.iso$', '\.pdf$', '\.pyc$', '\.odt$', '\.png$', '\.gif$', '\.db$']

" }}}


" VIMSCRIPT -------------------------------------------------------------- {{{

" This will enable code folding.
" Use the marker method of folding.
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END

" More Vimscripts code goes here.

" }}}


" STATUS LINE ------------------------------------------------------------ {{{

" Status bar code goes here.
" Clear status line when vimrc is reloaded.
set statusline=

" Status line left side.
set statusline+=\ %F\ %M\ %Y\ %R

" Use a divider to separate the left side from the right side.
set statusline+=%=

" Status line right side.
set statusline+=\ ascii:\ %b\ hex:\ 0x%B\ row:\ %l\ col:\ %c\ percent:\ %p%%

" Show the status on the second to last line.
set laststatus=2

" }}}

if exists("webdevicons#refresh")
    call webdevicons#refresh()
endif
