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

Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'kyazdani42/nvim-web-devicons'

call plug#end()

"file explorer
nnoremap <silent> ;f <Cmd>Telescope find_files<CR>
nnoremap <silent> ;r <Cmd>Telescope live_grep<CR>
nnoremap <silent> \\ <Cmd>Telescope buffers<CR>
nnoremap <silent> ;; <Cmd>Telescope help_tags<CR>

lua <<EOF
local actions = require('telescope.actions')

require('telescope').setup {
	defaults = {
		mappings = {
			n = {
				["q"] = actions.close
			},
		}
	}
}
EOF

nnoremap <silent>ss <C-w><C-w>
"map <C-t><left> :tabp


"i guess this is for prettier
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
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'default'

