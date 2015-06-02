set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'bling/vim-airline'
Plugin 'Valloric/YouCompleteMe'
Plugin 'flazz/vim-colorschemes'
"Plugin 'tpope/vim-fugitive.git'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'pangloss/vim-javascript'
"Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/syntastic'
Plugin 'marijnh/tern_for_vim'
"Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'Raimondi/delimitMate'
"Plugin 'fatih/vim-go' "GoLang support
Plugin 'tpope/vim-surround'
"Plugin 'airblade/vim-gitgutter'
Plugin 'groenewege/vim-less'
Plugin 'elzr/vim-json'
"Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'kien/ctrlp.vim'
Plugin 'gregsexton/MatchTag'
Plugin 'Yggdroot/indentLine'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

filetype plugin on

let mapleader=','
 
"set guifont=Ubuntu\ Mono\ derivative\ Powerline:h12
set t_Co=256
colorscheme atom
 
"let g:airline_powerline_fonts=1     " Use powerline patched fonts
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

set completeopt-=preview

let g:syntastic_javascript_checkers=["jscs", "jshint"]
let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute " ,"trimming empty <", "unescaped &" , "lacks \"action", "is not recognized!", "discarding unexpected"]
 

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Always show current position
set ruler

" configure the status line
set laststatus=2

" Show line numbers
set number

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases 
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Show matching brackets when text indicator is over them
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2

" Toggle Vexplore with <leader>e
function! ToggleVExplorer()
    if exists("t:expl_buf_num")
        let expl_win_num = bufwinnr(t:expl_buf_num)
        if expl_win_num != -1
            let cur_win_nr = winnr()
            exec expl_win_num . 'wincmd w'
            close
            exec cur_win_nr . 'wincmd w'
            unlet t:expl_buf_num
        else
            unlet t:expl_buf_num
        endif
    else
        exec '1wincmd w'
        Vexplore
        let t:expl_buf_num = bufnr("%")
    endif
endfunction
map <silent> <leader>e :call ToggleVExplorer()<CR>
"map <silent> <C-E> :call ToggleVExplorer()<CR>

" Hit enter in the file browser to open the selected
" file with :vsplit to the right of the browser.
let g:netrw_browse_split = 4
let g:netrw_altv = 1

" Default to tree mode
let g:netrw_liststyle=3

" Change directory to the current buffer when opening files.
set autochdir

if exists("g:ctrl_user_command")
    unlet g:ctrlp_user_command
endif
set wildignore+=dist

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax enable

set bg=dark

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4
set softtabstop=4

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

" Set the hotkey for paste toggling
set pastetoggle=<leader>p

" Code folding
"set foldmethod=syntax
"set foldlevelstart=1

"let javaScript_fold=1
"let sh_fold_enabled=1

set mouse=a
