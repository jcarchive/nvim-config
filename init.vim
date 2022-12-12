syntax on
colorscheme tokyonight

set encoding=utf-8

set path+=**

set autoread
au FocusGained,BufEnter * :silent! !

set backspace=indent,eol,start
set visualbell

set nobackup
set noswapfile

set laststatus=2 statusline=%F
set wildmenu wildmode=list:longest,full

set number
set relativenumber

set tabstop=2
set shiftwidth=2
set expandtab
set autoindent

set showmatch
set hlsearch
set incsearch

set foldmethod=indent
set foldnestmax=1
set foldlevelstart=1

set completeopt=menu,menuone,noselect


" Custom mappings
let mapleader=";"

inoremap (<enter> (<enter>)<esc>O<tab>
inoremap {<enter> {<enter>}<esc>O<tab>
inoremap [<enter> [<enter>]<esc>O<tab>
inoremap <<enter> <<enter>><esc>O<tab>
inoremap "<enter> "<enter>"<esc>O<tab>
inoremap '<enter> '<enter>'<esc>O<tab>

inoremap ( ()<esc>i
inoremap { {}<esc>i
inoremap [ []<esc>i
inoremap < <><esc>i
inoremap " ""<esc>i
inoremap ' ''<esc>i

inoremap "<space> "<space>
inoremap '<space> '<space>

inoremap () ()
inoremap {} {}
inoremap [] []
inoremap <> <>
inoremap "" ""
inoremap '' ''

inoremap jk <esc>
tnoremap jk <c-\><c-n>

" Map bprev
nnoremap mm :MarksToggleSigns<cr>
nnoremap LL :tabnext<cr>
nnoremap HH :tabprevious<cr>
nnoremap zz :mksession! workspace.nvim<cr>:wqa<cr>

lua require('plugins')
lua require('config')

" Custom commands
" a *****************************************************************
" ALE mappings
" Source ale github.com/dense-analysis/ale
packloadall
call ale#linter#Define('bicep', {
\ 'name': 'bicep-ls',
\ 'lsp': 'stdio',
\ 'executable': 'dotnet',
\ 'command': '%e ~/Repos/Local/LSP/Bicep/bin/Bicep.LangServer.dll',
\ 'project_root': '.'
\})

let g:ale_completion_enabled = 1
let g:ale_fixers = {
\ '*': ['remove_trailing_lines', 'trim_whitespace'],
\ 'javascript': ['eslint']
\}
let g:ale_fix_on_save = 1
nnoremap <leader>af :ALEFix<cr>
" *******************************************************************
" f
" Telescope mappings
" Source telescope.nvim github.com/nvim-telescope/telescope.nvim
nnoremap <leader>ff :Telescope find_files<cr>
nnoremap <leader>fl :Telescope live_grep<cr>
nnoremap <leader>fv :NvimTreeToggle<cr>
" *******************************************************************
" g
" GitGutter mappings
" Source vim-gitgutter https://github.com/airblade/vim-gitgutter
nnoremap <leader>gg :GitGutterToggle<cr>
nnoremap <leader>ge :GitGutterLineHighlightsToggle<cr>

" *******************************************************************
" w
" Window management
nnoremap <leader>w <c-w>

" *******************************************************************

nnoremap <leader>/ /<c-r>"
