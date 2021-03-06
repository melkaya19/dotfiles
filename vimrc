set encoding=utf-8 nobomb   " BOM often causes trouble

" This changes the values of a LOT of options, enabling features which
" are not Vi compatible but really really nice
set nocp

syntax on

" TODO :  CHECK 
" fixdel                      " Make Backspace work
" set ruler

" Fast saving
nmap <leader>w :w<cr>

" MRU Shortcut
nmap <leader>r :MRU<cr>

" Previous/Next Tab  Ctrl+Tab/Ctrl+Shift+Tab
nmap <C-tab> :bn<CR>
nmap <C-S-tab> :bp<CR>

" Buftabs configuration
let g:buftabs_only_basename=1

" Show some invisibles
set list
set listchars=tab:»·
set listchars+=trail:·
set listchars+=eol:¬

"Allow to switch between buffers even they are unsaved
set hidden

"store lots of :cmdline history
set history=1000

set showcmd     "show incomplete cmds down the bottom
set showmode    "show current mode down the bottom

set incsearch   "find the next match as we type the search
set hlsearch    "hilight searches by default

"set nowrap      "dont wrap lines
set linebreak   "wrap lines at convenient points

"statusline setup
set statusline=%f       "tail of the filename
set statusline+=%=      "left/right separator
"set statusline+=%{StatuslineCurrentHighlight()}\ \ "current highlight
set statusline+=%c,     "cursor column
set statusline+=%l/%L   "cursor line/total lines
set statusline+=\ %P    "percent through file

set laststatus=2        " Always show status line

set scrolloff=2             " Minlines to show around cursor

"indent settings
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab
set autoindent

" Turn on line numbers
set number

" Change colorscheme
colorscheme twilight

" Disable cursor keys, we're learning - HARDCORE MODE - HJKL
" noremap  <Up> ""
" noremap! <Up> <Esc>
" noremap  <Down> ""
" noremap! <Down> <Esc>
" noremap  <Left> ""
" noremap! <Left> <Esc>
" noremap  <Right> ""
" noremap! <Right> <Esc>

" Add end of line to the end of file
:set endofline

if has("gui_running")

  " Increase space between lines - identical to TextMade default one
  set linespace=2

  " Right gutter - introduced in Vim 7.3
  set colorcolumn=80
  hi ColorColumn guibg=#2d2d2d

  " Fullscreen stuff
  set fuoptions=maxvert,maxhorz
  "au GUIEnter * set fullscreen

  " Turns on the tab bar always
  " set showtabline=2  " Always
  set showtabline=1 " Only when more than one tab exists

  " GUI Option to remove the Toolbar (T)
  set guioptions-=T

  " Sets the font and size depending on gVim || mVim
  if has("gui_gtk2")
    set guifont=Bitstream\ Vera\ Sans\ Mono\ 13
  else
    set guifont=Monaco:h13
  endif

  " Number of horizontal lines on the screen
  set lines=48
  set columns=125

endif

