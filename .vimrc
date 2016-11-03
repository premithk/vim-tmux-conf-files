set nocompatible "make it easy than vi
filetype off    

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'  

set omnifunc=syntaxcomplete#Complete

Bundle 'altercation/vim-colors-solarized'  
Plugin 'scrooloose/nerdtree' "NERDTree file browser plugin
Plugin 'pangloss/vim-javascript'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'burnettk/vim-angular'
Plugin 'myusuf3/numbers.vim' "relative numbering for easy navigation
Plugin 'tpope/vim-fugitive' " the ultimate git helper
Plugin 'tpope/vim-commentary' " comment/uncomment lines with gcc or gc in visual mode
Plugin 'kien/ctrlp.vim' " fuzzy find files
Plugin 'yonchu/accelerated-smooth-scroll' "smooth scroll
Plugin 'ap/vim-css-color' "previews the css color
Plugin 'mxw/vim-jsx' "jsx (react) syntax highlighting
Plugin 'majutsushi/tagbar' "shows tags uses ctags
Plugin 'ternjs/tern_for_vim' "auto completion for JS
Plugin 'kchmck/vim-coffee-script' "CoffeeScript Support
Plugin 'digitaltoad/vim-jade' "Jade Syntax and Indent
Plugin 'mattn/emmet-vim' "Zen Coding
Plugin 'tpope/vim-surround' "Vim Surround
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'


" Some settings to enable the theme:
set number "show line numbers        
filetype plugin indent on
syntax enable     
set background=dark
set rnu
let g:solarized_termcolors = 256  
let g:used_javascript_libs = 'angularjs,underscore,backbone'
colorscheme railscasts
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
nmap <F8> :TagbarToggle<CR>
nmap <F4> :NERDTreeToggle<CR>
set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing
set expandtab       " tabs are spaces
set cursorline      " highlight current line
set hlsearch                    " highlight search terms
set incsearch                   " show search matches as you type
set history=1000                " remember more commands and search history
set undolevels=1000             " use many muchos levels of undo
if v:version >= 730
    set undofile                " keep a persistent backup file
    set undodir=~/.vim/.undo,~/tmp,/tmp
endif
set nobackup                    " do not keep backup files, it's 70's style cluttering
set noswapfile                  " do not write annoying intermediate swap files,
" allows cursor change in tmux mode
if exists('$TMUX')
	let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
	let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
	let &t_SI = "\<Esc>]50;CursorShape=1\x7"
	let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif
set laststatus=2

