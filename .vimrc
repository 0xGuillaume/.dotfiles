" ===============[ SETTINGS ]===============

    " Setting the character encoding of Vim to UTF-8.
    set encoding=utf-8

    " Setting the default shell.
    set shell=/bin/fish

    " Disable compatibility with vi which can cause unexpected issues.
    set nocompatible

    " Enable type file detection. Vim will be able to try to detect the type of file is use.
    filetype on

    " Enable plugins and load plugin for the detected file type.
    filetype plugin on

    " Load an indent file for the detected file type.
    filetype indent on

    " Turn syntax highlighting on.
    syntax on

    " Add numbers to the file.
    set number

    " Add relativenumbers to the file. 
    set relativenumber

    " Convert tabs to spaces.
    set expandtab

    " Set tabstop to 4 spaces.
    set tabstop=4

    " Set shiftwidth to 4 columns.
    set shiftwidth=4

    "set backspace=indent

    " Configuring cursor shape.
    set guicursor=""
  
    " Needed to get color as expected with catppuccin colorscheme.
    set termguicolors
    " Enable the use of the mouse inside vim.
    set mouse=a
    " Scroll limit (at the end of a file) to 10.
    set scrolloff=10
    " Set number column width to 4.
    set numberwidth=4

    " Set an additionnal space on the number's left side.
    set signcolumn=yes
    
    " Set the commands to save in history default number is 20.
    set history=1000

    " While searching though a file incrementally highlight matching characters as you type.
    set incsearch
    set hlsearch

    " Ignore capital letters during search.
    set ignorecase

    "set wildmenu

    " Disable swap files.
    set noswapfile

    " Do not save backup files.
    set nobackup
    set nowritebackup

    " Enable status line.
    set laststatus=2

    " Enable tabs line (buffer level).
    set showtabline=2

    " If Vim version is equal to or greater than 7.3 enable undo file.
    " This allows you to undo changes to a file even after saving it.
    if version >= 703
        set undodir=~/.vim/backup
        set undofile
        set undoreload=10000
    endif

    " File browsing settings (:Explore)
    let g:netrw_banner=0
    let g:netrw_liststyle=3
    let g:netrw_showhide=1
    let g:netrw_windowsize=19

    " Auto Completion - Enable Omni complete features
    set omnifunc=syntaxcomplete#Complete
    set complete+=k
    set completeopt=menu,menuone,noinsert

    " Custom indentations with 2 spaces (Terraform, YAML, HTML)
    autocmd Filetype tf setlocal tabstop=2 shiftwidth=2 expandtab
    autocmd Filetype yaml setlocal tabstop=2 shiftwidth=2 expandtab
    autocmd Filetype html setlocal tabstop=2 shiftwidth=2 expandtab


" ===============[ PLUGINS ]===============
    call plug#begin()

        " A fuzzy finder similar to Telescope (neovim).
        Plug 'junegunn/fzf.vim'

        " A bunch of colorschemes.
        Plug 'catppuccin/vim', { 'as': 'catppuccin' }

        " A custom airline style.
        Plug 'vim-airline/vim-airline'

    call plug#end()


    " Empty value to disable preview window altogether
    let g:fzf_vim = {}
    let g:fzf_vim.preview_window = []


" ===============[ COLORSCHEME ]===============

    " Set airline theme to catppuccin.
    let g:lightline = {'colorscheme': 'catppuccin_mocha'}
    let g:airline_theme = 'catppuccin_mocha'

    " Set colorscheme to catppuccin.
    colorscheme catppuccin_mocha


" ===============[ KEYBINDINGS ]===============

    " Set <space> as the leader key.
    let mapleader=" "
    
    " Opening the file explorer.
    nmap <leader>e :Explore<Esc>

    " Type oo to insert a blank line below. 
    nmap oo o<ESC>

    " Type oo to insert a blank line above. 
    nmap OO O<ESC>

    " Type Y to yank from cursor to the end of a line.
    nmap Y y$

    nmap <leader>d :bd<Esc>

    " Navigate the split view easier by pressing:
    " CTRL+j, CTRL+k, CTRL+h, or CTRL+l.
	nnoremap <c-j> <c-w>j
	nnoremap <c-k> <c-w>k
	nnoremap <c-h> <c-w>h
	nnoremap <c-l> <c-w>l

    " Resize split windows using arrow keys by pressing:
    " CTRL+UP, CTRL+DOWN, CTRL+LEFT, or CTRL+RIGHT.
	noremap <c-up> <c-w>+
	noremap <c-down> <c-w>-
	noremap <c-left> <c-w>>
	noremap <c-right> <c-w><

    " Open fuzzy finder to navigate through files and git files.
    nmap <leader>ff :Files<Esc>
    nmap <leader>fg :GitFiles<Esc>


" =====================================================================
" Some of the settings and keybinding are inspired from:
" https://github.com/YanivZalach/Vim_Config_NO_PLUGINS/blob/main/.vimrc
