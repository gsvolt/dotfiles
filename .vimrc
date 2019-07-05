set autoindent
set autoread
set backspace=indent,eol,start
set colorcolumn=80
set completeopt=longest,menuone
set encoding=utf8
set expandtab
set history=500
set hlsearch
set ignorecase
set incsearch
set laststatus=2
"set list
"set listchars=tab:>~
set magic
set mouse=a
set nocompatible
set noerrorbells
set novisualbell
set number
set omnifunc=syntaxcomplete#Complete
set path+=**
set ruler
set shiftwidth=4
set showmatch
set smartcase
set smarttab
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c
set softtabstop=4
set tabstop=4
set titlestring=%(\ %{expand(\"%:p\")}\ %a%)
set wrap
set wildmenu

syntax enable 
filetype plugin on

" Returns true if paste mode is enabled
function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    endif
    return ''
endfunction
execute pathogen#infect()
call pathogen#helptags()

map <C-n> :NERDTreeToggle<CR>
