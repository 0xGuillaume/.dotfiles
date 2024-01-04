" GENERAL ------------------------------------------------------------- >>>
set nocompatible			" Disable compatibility with vi.
filetype on				" Enable type file detection.
filetype plugin on			" Enable plugins and load plugin.
filetype indent on			" Load an indent file for the detected file type.
syntax on				" Turn syntax highlighting on.
set incsearch				" Highlighting while searching.
set number				" Add numbers for each line.
set relativenumber			" Show relative line numbers.
set tabstop=4				" Set tab with to 4 columns.
set shiftwidth=4			" Set tab with to 4 columns.
set scrolloff=10			" Do net let the cursor scroll bellow or above.
set mouse=a				" Allow to click with mouse left.
set encoding=utf-8
set ff=unix
set noswapfile 				" Disable swap files.
set shell=/bin/fish


" PLUGINS ------------------------------------------------------------- >>>
call plug#begin()

	Plug 'preservim/nerdtree'			" Nerdtree
	Plug 'rakr/vim-one'					" Atom colorscheme
	Plug 'ryanoasis/vim-devicons'		" Custom icons -> ALWAYS LAST ONE
	Plug 'davidhalter/jedi-vim'			" Python autocompletion
	Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }					" Go autocompletion
	Plug 'hashivim/vim-terraform'
	Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }
	Plug 'airblade/vim-gitgutter'

call plug#end()

let g:jedi#auto_initialization = 1


" COLORSCHEME --------------------------------------------------------- >>>
if (empty($TMUX))
  if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif

  if (has("termguicolors"))
    set termguicolors
  endif
endif

colorscheme one

let hour = (strftime('%H'))			
let timed = 19
let timel = 8

" Switch colorscheme depending on time
if hour >= timed
set background=dark

elseif hour >= timel
set background=light

elseif hour >= 0
set background=dark
endif

let g:airline_theme='one'


" GO SYNTAX HIGHLITHING ----------------------------------------------- >>>
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_operators = 1

au filetype go inoremap <buffer> . .<C-x><C-o>


" NERDTREE ------------------------------------------------------------ >>>
let NERDTreeShowHidden=1
let NERDTreeWinSize=25


" STATUSBAR ----------------------------------------------------------- >>>
python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup
set laststatus=2 " Always display the statusline in all windows
set showtabline=2 " Always display the tabline, even if there is only one tab
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)
set t_Co=256

" FUNCTIONS ----------------------------------------------------------- >>>
func! DeleteTrailingWhitespaces()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc

" MAPPING ------------------------------------------------------------- >>>
nmap <C-n> :NERDTreeToggle<CR>
nmap <C-l> :Light<CR> 

" Windows
nmap <C-Right> :bnext<CR>
nmap <C-Left> :bprev<CR>
nmap <C-+> :vertical resize +1<CR>

nmap oo o<ESC>
nmap OO O<ESC>
nmap Y y$


" CUSTOM COMMANDS  ---------------------------------------------------- >>>
command Light execute "set background=light"
command Dark execute "set background=dark"
autocmd BufWrite *.py :call DeleteTrailingWhitespaces()


" FILES CREATION  ----------------------------------------------------- >>>
autocmd BufNewFile *.bash 0r ~/projects/.dotfiles/.vim/skeleton.bash
autocmd BufNewFile *.fish 0r ~/projects/.dotfiles/.vim/skeleton.fish
autocmd BufNewFile *.html 0r ~/projects/.dotfiles/.vim/skeleton.html
autocmd BufNewFile *.py 0r ~/projects/.dotfiles/.vim/skeleton.py
autocmd BufNewFile *.toml 0r ~/projects/.dotfiles/.vim/skeleton.toml
autocmd BufNewFile *.yaml 0r ~/projects/.dotfiles/.vim/skeleton.yaml
