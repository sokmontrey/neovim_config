let g:python3_host_prog = 'C:\Python39\python.exe'
let g:python_host_prog  = 'C:\Python39\python.exe'

syntax on
set ruler
set smarttab
set shiftwidth=4
set tabstop=4
set smartindent
set mouse=a
set number
set background=dark
let g:neosolarized_termtrans=1
runtime ./plugged/NeoSolarized/colors/NeoSolarized.vim

call plug#begin()

Plug 'iCyMind/NeoSolarized'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'cohama/lexima.vim'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'github/copilot.vim'

Plug 'yuezk/vim-js'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'maxmellon/vim-jsx-pretty'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'kyazdani42/nvim-web-devicons'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'kyazdani42/nvim-tree.lua'

Plug 'sheerun/vim-polyglot'
Plug 'jiangmiao/auto-pairs'
Plug 'ryanoasis/vim-devicons'
Plug 'airblade/vim-gitgutter'

call plug#end()

autocmd VimEnter * :vsplit

nnoremap <silent>ss <C-w><C-w>
map gh :bp<CR>
map gj :bn<CR>
map gq :w <CR>:bd<CR>

nnoremap <silent> ;; <Cmd>Telescope find_files theme=dropdown previewer=false<CR>
nnoremap <silent> ;\ <Cmd>Telescope buffers theme=dropdown previewer=false<CR>
nnoremap <silent> \\ :<C-u>NvimTreeToggle<CR>

lua << EOF
require('telescope').setup{
	defaults = {
		layout_strategy = 'center',
		}
}
require('nvim-tree').setup{}
EOF

command! -nargs=0 Prettier :CocCommand prettier.formatFile
vmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

let g:coc_global_extensions = [
  \ 'coc-json',
  \ 'coc-tsserver',
  \ 'coc-prettier',
  \ 'coc-eslint',
  \ ]

"vim airline
let g:airline_theme='luna'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#formatter = 'default'
let g:airline_powerline_fonts = 1
let g:Powerline_symbols = 'fancy'
let g:airline_left_sep = '»'
let g:airline_left_sep = ''
let g:airline_right_sep = '«'
let g:airline_right_sep = ''


