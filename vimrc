call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-surround'
call plug#end()

" Fundamental setting
  set fileencoding=utf-8
  set fileencodings=ucs-bom,utf-8,gbk,cp936,latin-1
	set fileformat=unix
  set fileformats=unix,dos,mac
	filetype on                     "check file type
	filetype plugin on              "allow plugin
	filetype plugin indent on       "allow autocomplete
	syntax enable
	syntax on

" Turn off backup
	set nobackup
	set nowb
	set noswapfile

" Useful setting
	set nocompatible 	"cancel compatible with vi
	set smartindent
	set expandtab			"tab to spaces
  set tabstop=2			"the width for a tab
	set shiftwidth=2	"the width for indent
	"Folding
	set foldenable		"manual, indent, expr, syntax, diff, marker
	set foldmethod=syntax
	" search setting
	set ignorecase		"ignore the case when search texts
	set smartcase			"if searching text containss uppercase case will not be ignored
	set hlsearch			"highlight text from search
	set incsearch			"search as type
  set paste         "keep style while pasting
	"parentheses mathch
  set showmatch
  set mat=2
	" auto-reload the setting of .vimrc
	autocmd! bufwritepost .vimrc source %
	" Display extra whitespace
  set list listchars=tab:»·,trail:·
 	" Make it obvious where 80 characters is
 	set textwidth=80
	set colorcolumn=+1
  "show input command
  set showcmd
  "keep 3 line distance when scrolling
  "set scrolloff=3

"Looking
	"Change the color in visual mode
	hi Visual  cterm=None ctermbg=DarkGreen ctermfg=Black
	set number "line number
  set numberwidth=5
  " Highlight current line
	"set cursorline       "hilight the line that the cursor exists in
	":hi CursorLine cterm=Bold ctermbg=16 ctermfg=None
	":hi CursorLine cterm=Bold ctermbg=234 ctermfg=None
  "set cursorcolumn     "hilight the column that the cursor exists in
	":hi CursorColumn cterm=None ctermbg=234 ctermfg=White
  "au WinLeave * set nocursorline nocursorcolumn
  "au WinEnter * set cursorline cursorcolumn
  "set cursorline cursorcolumn
  set nowrap "no line wrapping

" Solve problem with delete
	set backspace=2

" Display status bar always
	set laststatus=2
	set ttimeoutlen=50

" Shortcuts

	"Turn on/off line number by F2
	nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR>
  " <space> => fold/unfold current text tips: zR => unfold all; zM => fold all
	nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>

	" <F4> => popup the file tree navigation)
	nmap <F4> :NERDTreeToggle<CR>

	" t[number] => switch to the file showed in the top tabs
	" t[ t] => prev tab/next tab
	nmap t1 <Plug>AirlineSelectTab1
	nmap t2 <Plug>AirlineSelectTab2
	nmap t3 <Plug>AirlineSelectTab3
	nmap t4 <Plug>AirlineSelectTab4
	nmap t5 <Plug>AirlineSelectTab5
	nmap t6 <Plug>AirlineSelectTab6
	nmap t7 <Plug>AirlineSelectTab7
	nmap t8 <Plug>AirlineSelectTab8
	nmap t9 <Plug>AirlineSelectTab9
	nmap t[ <Plug>AirlineSelectPrevTab
	nmap t] <Plug>AirlineSelectNextTab

 " airline
	let g:airline#extensions#tabline#enabled = 1
  if !exists('g:airline_symbols')
	  let g:airline_symbols = {}
  endif
	let g:airline_left_sep = ''
	let g:airline_left_alt_sep = ''
	let g:airline_right_sep = ''
	let g:airline_right_alt_sep = ''
	let g:airline_symbols.branch = ''
	let g:airline_symbols.readonly = ''
	let g:airline_symbols.linenr = ''
	let g:airline_symbols.crypt = '🔒'
	let g:airline_symbols.paste = 'ρ'
	let g:airline_symbols.notexists = '∄'
	let g:airline_symbols.whitespace = 'Ξ'
	let g:airline#extensions#tabline#buffer_idx_mode = 1

