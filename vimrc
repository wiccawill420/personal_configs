set nocompatible                " choose no compatibility with legacy vi
syntax enable					" Turn on syntax highlighting
set encoding=utf-8
set showcmd                     " display incomplete commands
"filetype plugin indent on		" load file type plugins + indentation
set t_Co=256					"Turn on 256 colors in vim
colorscheme inkpot				" Use the ./vim/colors/inkpot.vim theme
""set background=dark			" Use the dark option of the theme
set ttimeoutlen=20				"Should fix delay from INSERT to NORMAL
set noshowmode					"Hide the stock status line
let g:airline_theme='luna'	"Set Airline Theme
let g:airline_powerline_fonts=1	"Turn on powerline fonts

"Maybe fix powerline symbols 
"if !exists('g:airline_symbols')
"  let g:airline_symbols = {}
"endif
"let g:airline_symbols.space = "\ua0"

"" Whitespace
" set nowrap                     " don't wrap lines
set tabstop=4 shiftwidth=4      " a tab is two spaces (or set this to 4)
"set autoindent					" Sets it to automatically match the previous indent.
"set smartindent				" Sets it to auto-indent based on structure.
" set expandtab					" use spaces, not tabs (optional)
set backspace=indent,eol,start  " backspace through everything in insert mode

" -- The Following enables and configures wrapping to support whole paragraphs
set wrap						" Turns on soft wordwrapping
set linebreak					" Enables linebreaks for paragraphs
set nolist						" list disables linebreak
set textwidth=0					" Uses window size for wrap size
set wrapmargin=0				" Wraps at edge of window

"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter

" Line Numbers
set number                                              " Show numbers for each line
set relativenumber                              " Show numbers relative to current line

"" Configures the statusline
set laststatus=2                                " Always turn on statusline
""set statusline=FileType:                 " Label
""set statusline+=%y                       " Filetype of the file
""set statusline+=\ $\             " Separator
""set statusline+=%f                       " Path to the file, file permissions
""set statusline+=\ %([%R%M]%)    " read-only, modified and modifiable flags between braces
""set statusline+=\ \ \ \ \                " Separator
""set statusline+=%=Line:\ %l\ of\ %L     " Current and Total lines, at least 5 characters wide, on the right
""set statusline+=%=\ \                    " Separator
""set statusline+=%=Column:\ %c           " Column numbers
"hi statusline guibg=DarkRed ctermbg=2

""let @n=":set nu!"<CR>":set relativenumber!"<CR>"a"<ESC>
""call setreg('n',":set nu! relativenumber!^M",'b')
""let @n=":set nu! relativenumber!"
map <F1> :set relativenumber! <bar> :set nu! <CR>
map <F2> :set wrap <CR>
map <F3> :set nowrap <CR>
map <F4> :set autoindent <bar> :set smartindent <CR>
au BufRead,BufNewFile *.sql set filetype=mysql
"hi Visual term=reverse cterm=reverse guibg=LightGrey

""Turn on Pathogen to handle mods
execute pathogen#infect()
