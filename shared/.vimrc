scriptencoding UTF-8
set encoding=UTF-8

call plug#begin('~/.vim/plug')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"Plug 'chriskempson/base16-vim'
Plug 'trevordmiller/nova-vim'
"Plug 'joshdick/onedark.vim'
Plug 'dracula/vim', { 'as': 'dracula' }

Plug 'fmoralesc/vim-pad', { 'branch': 'devel' }
Plug 'pangloss/vim-javascript'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
" Disable vim move for now since it messes up the
" split navigation keybindings
""Plug 'matze/vim-move'
Plug 'tpope/vim-commentary'

Plug 'sirver/ultisnips'
Plug 'ervandew/supertab'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'troydm/zoomwintab.vim'
Plug 'majutsushi/tagbar'

Plug 'valloric/youcompleteme'
Plug 'w0rp/ale'
Plug 'sindresorhus/vim-xo'
Plug 'mxw/vim-jsx'
Plug 'posva/vim-vue'
call plug#end()

"colorscheme onedark
let g:dracula_colorterm=0
let g:dracula_italic=0
colorscheme dracula
"set background=dark

set relativenumber
set cursorline
" set termguicolors

set backspace=indent,eol,start

"Swap / backup file handling
set nobackup
set nowritebackup
set noswapfile
set noundofile

set splitright
set splitbelow

set laststatus=2
" Hide tabline
" set showtabline=0

"Show hidden characters
set list
set listchars=tab:\»»,space:·,trail:·,eol:¬,nbsp:·,extends:>,precedes:<

set hlsearch

"let g:javascript_plugin_jsdoc = 1

let g:airline_theme='dracula'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1

"let g:onedark_termcolors=256

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

" For vim-move"
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

"FZF
nnoremap <silent> <leader>f :GFiles<CR>

" Nerd tree, Ctrl + n open
map <C-n> :NERDTreeToggle<CR>

" Clear search result highlights (NOTE: causes vim to start in replace mode)
"map <esc> :noh<cr>

" Map split navigation
" change <c-w>h to <c-w><C-h> for linux support
nnoremap <C-h> <C-w><C-h>
nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-l> <C-w><C-l>
"nnoremap <c-Left><C-w>h


"Tab configurations, 2 spaces.
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
