scriptencoding UTF-8
set encoding=UTF-8

call plug#begin('~/.vim/plug')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'chriskempson/base16-vim'
Plug 'trevordmiller/nova-vim'
Plug 'joshdick/onedark.vim'

Plug 'fmoralesc/vim-pad', { 'branch': 'devel' }
Plug 'pangloss/vim-javascript'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'matze/vim-move'
Plug 'tpope/vim-commentary'

Plug 'sirver/ultisnips'
Plug 'ervandew/supertab'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'troydm/zoomwintab.vim'

Plug 'valloric/youcompleteme'
Plug 'w0rp/ale'
Plug 'sindresorhus/vim-xo'
Plug 'mxw/vim-jsx'
Plug 'posva/vim-vue'
call plug#end()

colorscheme onedark
set background=dark

set relativenumber
set cursorline

set backspace=indent,eol,start

"Swap / backup file handling
set nobackup
set nowritebackup
set noswapfile
set noundofile

set splitright
set splitbelow

set laststatus=2

"Show hidden characters
set list
set listchars=tab:\»»,space:·,trail:·,eol:¬,nbsp:·,extends:>,precedes:<

set hlsearch

"let g:javascript_plugin_jsdoc = 1

let g:pad#dir='~/.notes'
let g:pad#set_mappings=0
let g:pad#window_height=10

nmap <leader>n <Plug>(pad-new)
nmap <leader>e <Plug>(pad-list)
nmap <leader>s <Plug>(pad-search)

let g:airline_theme='base16_eighties'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1

let g:onedark_termcolors=256

let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

"leader
let mapleader = "\<Space>"

" Ale configs
let g:ale_echo_msg_warning_str='?'
let g:ale_echo_msg_error_str='!'
let g:ale_sign_error = '>'
let g:ale_sign_warning = '-'
let g:ale_echo_msg_format='[%linter%] %s [%severity%]'

let g:ale_linters = {
  \   'javascript': ['eslint']
  \ }

let g:move_key_modifier = 'C'


" YouCompleteMe and UltiSnips compatibility, with the helper of supertab
" (via http://stackoverflow.com/a/22253548/1626737)
let g:SuperTabDefaultCompletionType    = '<C-n>'
let g:SuperTabCrMapping                = 0
let g:UltiSnipsExpandTrigger           = '<tab>'
let g:UltiSnipsJumpForwardTrigger      = '<tab>'
let g:UltiSnipsJumpBackwardTrigger     = '<s-tab>'
let g:UltiSnipsSnippetDirectories = ['~/.vim/UltiSnips', 'UltiSnips']
let g:ycm_key_list_select_completion   = ['<C-j>', '<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-k>', '<C-p>', '<Up>']

"Custom leader key mappings
"
"Change between two last used buffers
nnoremap <Leader><Leader> <C-^>
nnoremap <Leader>w :write<CR>
nnoremap <leader>s :ToggleWorkspace<CR>

nnoremap <leader>+ :ZoomWinTabToggle<CR>

" Go to buffer number
noremap <leader>1 :b 1<CR>
noremap <leader>2 :b 2<CR>
noremap <leader>3 :b 3<CR>
noremap <leader>4 :b 4<CR>
noremap <leader>5 :b 5<CR>
noremap <leader>6 :b 6<CR>
noremap <leader>7 :b 7<CR>
noremap <leader>8 :b 8<CR>
noremap <leader>9 :b 9<CR>

"FZF
nnoremap <silent> <leader>f :GFiles<CR>
nnoremap <silent> <leader>b :Buffers<CR>

" Nerd tree, Ctrl + n open
map <C-n> :NERDTreeToggle<CR>
"map <F2> :NERDTreeToggle<CR>

" Clear search result highlights (NOTE: causes vim to start in replace mode)
"map <esc> :noh<cr>

" Map split navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l


"Tab configurations, 2 spaces.
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

function! CenterPane()
   lefta vnew
   wincmd w
   exec 'vertical resize '. string(&columns * 0.75)
 endfunction
