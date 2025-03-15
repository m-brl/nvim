call plug#begin('~/.config/nvim/plugged')

Plug 'nvimdev/dashboard-nvim'

Plug 'Mofiqul/adwaita.nvim'

Plug 'kristijanhusak/vim-dadbod-ui'
Plug 'kristijanhusak/vim-dadbod-completion'
Plug 'tpope/vim-dadbod'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-endwise'

Plug 'airblade/vim-gitgutter'

Plug 'kien/rainbow_parentheses.vim'
Plug 'raimondi/delimitmate'
Plug 'unkiwii/vim-nerdtree-sync'
Plug 'xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'

Plug 'nvim-tree/nvim-web-devicons'
Plug 'nvim-treesitter/nvim-treesitter'

Plug 'ap/vim-css-color' 

Plug 'bronson/vim-trailing-whitespace'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'EdenEast/nightfox.nvim'

Plug 'powerline/powerline'
Plug 'lokaltog/vim-powerline'
Plug 'powerline/fonts'
Plug 'NLKNguyen/papercolor-theme'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

"Plug 'ludovicchabant/vim-gutentags'
Plug 'majutsushi/tagbar'

"Plug 'andweeb/presence.nvim'

Plug 'mg979/vim-visual-multi', {'branch': 'master'}

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.5' }

Plug 'f-person/git-blame.nvim'

Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && npx --yes yarn install' }

"Plug 'neovim/nvim-lspconfig'

call plug#end()

set list
set listchars=space:·,tab:»·,eol:↵,extends:»,precedes:«
set number
set clipboard=unnamedplus
set colorcolumn=80
set expandtab
set shiftwidth=4
set tabstop=4
set showcmd
set nowrap
set termguicolors
set mouse=a

set foldlevel=99
set foldmethod=syntax
"set cursorline
"set cursorcolumn

lua require('setup')
lua require('utils')
"lua require('ignore')

let g:NERDTreeShowHidden=1
let g:NERDTreeRespectWildIgnore=1
"let g:nerdtree_sync_cursorline=1

nnoremap <Up> <Nop>
nnoremap <Down> <Nop>
nnoremap <Left> <Nop>
nnoremap <Right> <Nop>
nnoremap <End> <Nop>
nnoremap <Home> <Nop>

"nnoremap <C-t>t <cmd>:tabnew<Enter>
"nnoremap <C-t>w <cmd>:tabclose<Enter>
"nnoremap <C-t>n <cmd>:tabnext<Enter>
"nnoremap <C-t>p <cmd>:tabprevious<Enter>

nnoremap bgs <cmd>lua switchTheme()<Enter>
nnoremap ffs <cmd>Telescope find_files<Enter>
nnoremap fts <cmd>Telescope tags<Enter>
nnoremap bo <cmd>CocCommand git.browserOpen<Enter>


"let g:tagbar_left = 0
"let g:tagbar_vertical = winheight('%') / 2
let g:NERDTreeWinPos = 'left'
autocmd VimEnter * NERDTree
autocmd Vimenter * wincmd p

autocmd BufRead,BufNewFile *.json
    \ setlocal shiftwidth=2 | setlocal tabstop=2

autocmd BufRead,BufNewFile *.go
    \ setlocal shiftwidth=8 | setlocal tabstop=8

let g:mkdp_auto_start = 0
let g:mkdp_auto_close = 1
