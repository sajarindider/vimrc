
" This is my vimrc. There are many like it, but this one is mine. 
"
" Maintainer:	Sajarin Dider <sajarindider@gmail.com>
" Last change:	2016 Jun 07

" General   {{{

execute pathogen#infect() 
call pathogen#infect()

" Make external commands work through a pipe instead of a pseudo-tty
"set noguipty

" set the X11 font to use
" set guifont=-misc-fixed-medium-r-normal--14-130-75-75-c-70-iso8859-1

set ch=2		" Make command line two lines high

set mousehide		" Hide the mouse when typing text

" Make shift-insert work like in Xterm
map <S-Insert> <MiddleMouse>
map! <S-Insert> <MiddleMouse>

" Run Python scripts by using F5"
map <F5> :w<CR>:exe ":!python " . getreg("%") . "" <CR>

set autochdir
 
" Only do this for Vim version 5.0 and later.
if version >= 500

  " I like highlighting strings inside C comments
  let c_comment_strings=1

  " Switch on syntax highlighting if it wasn't on yet.
  if !exists("syntax_on")
    syntax on
  endif

  " Switch on search pattern highlighting.
  set hlsearch

  " For Win32 version, have "K" lookup the keyword in a help file
  "if has("win32")
  "  let winhelpfile='windows.hlp'
  "  map K :execute "!start winhlp32 -k <cword> " . winhelpfile <CR>
  "endif

  " Set nice colors
  " background for normal text is light grey
  " Text below the last line is darker grey
  " Cursor is green, Cyan when ":lmap" mappings are active
  " Constants are not underlined but have a slightly lighter background
  highlight Normal guibg=white
  highlight Cursor guibg=black guifg=NONE
  highlight lCursor guibg=Cyan guifg=NONE
  highlight NonText guibg=white
  highlight Constant gui=NONE guibg=black
  highlight Special gui=NONE guibg=grey95

endif

" }}}

" Colors {{{

syntax enable        "Enables vim to show parts of text

"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif


set background=dark " for the dark version
" set background=light " for the light version
colorscheme solarized


" }}}

" Space and Tabs {{{

set tabstop=4        "tab is equal to 4 spaces

set softtabstop=4    "tab when inserting is 4 spaces

set expandtab        "tabs are spaces

" }}}

" UI Config {{{
set number           "show line numbers

set showcmd          "show last command in the bottom bar

set cursorline       "highlight current line

filetype indent on   "load filetype-specific indent files

set wildmenu         "visual autocomplete for command menu 

set showmatch        "highlight matching brackets, curly braces and parenthesis

" }}}

" Searching {{{

set incsearch        "search as characters are entered

set hlsearch         "highlight matches

" }}}

" Folding {{{

set foldenable       "enable folding

set foldlevelstart=10 "open most folds by default

set foldnestmax=10   "10 nested fold max

set foldmethod=marker 

set foldlevel=0


" }}}

" Plugins {{{

"}}}

" vim:foldmethod=marker:foldlevel=0

