" === Appearance ===
syntax on               " Enable syntax highlighting
set cursorline          " Highlight the current line
set numberwidth=4       " Set width of line number column
set relativenumber      " Show relative line numbers
set nowrap              " Do not wrap long lines
colorscheme habamax     " Set colorscheme
set background=dark     " Use colors optimized for dark background

" === Interface & UI ===
set showcmd             " Show incomplete commands in the last line
set ruler               " Show line and column number in the status line
set wildmenu            " Enhanced command-line completion
set mouse=a             " Enable mouse support in all modes

" === Clipboard ===
set clipboard=unnamed   " Use system clipboard for copy/paste

" === Search ===
set ignorecase          " Ignore case in searches
set smartcase           " Override ignorecase if search contains uppercase

" === Indentation & Tabs ===
set tabstop=4           " Number of spaces that a <Tab> counts for
set shiftwidth=4        " Number of spaces to use for (auto)indent
set expandtab           " Use spaces instead of tabs
set autoindent          " Copy indent from current line when starting a new one
set smartindent         " Smart autoindenting for new lines

" === Encoding ===
set encoding=utf-8      " Use UTF-8 for internal encoding
set termencoding=utf-8  " Use UTF-8 for terminal encoding

" === Sound ===
set noerrorbells        " Disable error beep sounds

