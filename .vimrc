
" GENERAL ------------------------------------------------------------- >>>
set nocompatible			" Disable compatibility with vi.
filetype on					" Enable type file detection.
filetype plugin on			" Enable plugins and load plugin.
filetype indent on			" Load an indent file for the detected file type.
syntax on					" Turn syntax highlighting on.
set incsearch				" Highlighting while searching.
set number					" Add numbers for each line.
set relativenumber			" Show relative line numbers.
set tabstop=4				" Set tab with to 4 columns.
set shiftwidth=4			" Set tab with to 4 columns.
set scrolloff=10			" Do net let the cursor scroll bellow or above.
set mouse=a					" Allow to click with mouse left.
set encoding=utf-8


" PLUGINS ------------------------------------------------------------- >>>
call plug#begin()

	Plug 'preservim/nerdtree'			" Nerdtree
	Plug 'rakr/vim-one'					" Atom colorscheme
	Plug 'ryanoasis/vim-devicons'		" Custom icons -> ALWAYS LAST ONE
	Plug 'davidhalter/jedi-vim'			" Python autocompletion

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

" Switch colorscheme depending on time
if hour >= 19
set background=dark

elseif hour >= 8
set background=light

elseif hour >= 0
set background=dark
endif

let g:airline_theme='one'


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


" MAPPING ------------------------------------------------------------- >>>
nmap <C-t> :NERDTreeToggle<CR>
