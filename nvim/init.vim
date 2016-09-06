call plug#begin('~/.vim/plugged')

function! DoRemote(arg)
  UpdateRemotePlugins
endfunction

Plug 'https://github.com/fatih/vim-go.git'
" Plug 'https://github.com/tpope/vim-unimpaired.git'
Plug 'https://github.com/Shougo/neosnippet.vim.git'
Plug 'https://github.com/Shougo/neosnippet-snippets.git'
" Plug 'https://github.com/tomtom/tlib_vim.git'
" Plug 'https://github.com/MarcWeber/vim-addon-mw-utils.git'
Plug 'https://github.com/garbas/vim-snipmate.git'
Plug 'https://github.com/scrooloose/nerdtree.git'
Plug 'https://github.com/Xuyuanp/nerdtree-git-plugin.git'
Plug 'https://github.com/flazz/vim-colorschemes.git'
Plug 'https://github.com/Shougo/deoplete.nvim.git', { 'do': function('DoRemote') }
Plug 'https://github.com/zchee/deoplete-go.git'
Plug 'https://github.com/ctrlpvim/ctrlp.vim.git'
" Plug 'https://github.com/wincent/command-t.git'
Plug 'https://github.com/vim-airline/vim-airline.git'
Plug 'https://github.com/vim-airline/vim-airline-themes.git'
Plug 'https://github.com/tpope/vim-fugitive.git'
Plug 'https://github.com/tpope/vim-surround.git'
Plug 'https://github.com/tpope/vim-commentary.git'
Plug 'http://github.com/sjl/gundo.vim.git'
Plug 'https://github.com/vim-scripts/camelcasemotion.git'
" Plug 'https://github.com/spolu/dwm.vim.git'
" Plug 'https://github.com/ervandew/supertab.git'
" Plug 'https://github.com/majutsushi/tagbar.git'
" Plug 'https://github.com/garyburd/go-explorer.git'

call plug#end()

set showcmd             " Show (partial) command in status line.
set showmatch           " Show matching brackets.
set showmode            " Show current mode.
set ruler               " Show the line and column numbers of the cursor.
set number              " Show the line numbers on the left side.
set formatoptions+=o    " Continue comment marker in new lines.
set textwidth=0         " Hard-wrap long lines as you type them.
set expandtab           " Insert spaces when TAB is pressed.
set tabstop=4           " Render TABs using this many spaces.
set shiftwidth=4        " Indentation amount for < and > commands.

set noerrorbells        " No beeps.
" set modeline            " Enable modeline.
" set esckeys             " Cursor keys in insert mode.
" set linespace=0         " Set line-spacing to minimum.
" set nojoinspaces        " Prevents inserting two spaces after punctuation on a join (J)

" More natural splits
" set splitbelow          " Horizontal split below current.
" set splitright          " Vertical split to right of current.

if !&scrolloff
  set scrolloff=5       " Show next i lines while scrolling.
endif
if !&sidescrolloff
  set sidescrolloff=5   " Show next 5 columns while side-scrolling.
endif
set display+=lastline
set nostartofline       " Do not jump to first character with page commands.

" set hlsearch            " Highlight search results.
set ignorecase          " Make searching case insensitive
set smartcase           " ... unless the query has capital letters.
set incsearch           " Incremental search.
" set gdefault            " Use 'g' flag by default with :s/foo/bar/.
set magic               " Use 'magic' patterns (extended regular expressions).

let mapleader="\<SPACE>"
" Use <C-L> to clear the highlighting of :set hlsearch.
nnoremap <Leader>l :nohlsearch<CR><C-L>

syntax on

""
" Deoplete
""

let g:deoplete#enable_at_startup = 1

""
" Neosnippet config
""

let g:neosnippet#enable_completed_snippet = 1

" Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
map <expr><TAB>
\ pumvisible() ? "\<C-n>" :
\ neosnippet#expandable_or_jumpable() ?
\    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif

set backspace=2 " make backspace work like most other apps
set backspace=indent,eol,start
inoremap <C-a> <Home>
inoremap <C-e> <End>
nnoremap <C-a> <Home>
nnoremap <C-e> <End>

nnoremap ; : 

nmap <Left> <Nop>
nmap <Right> <Nop>
nmap <Up> <Nop>
nmap <Down> <Nop>
" nmap <Left> <<
" nmap <Right> >>
" nmap <Up> [e
" nmap <Down> ]e
" vmap <Left> <gv
" vmap <Right> >gv
" vmap <Up> [egv
" vmap <Down> ]egv

function! NumberToggle()
  if(&relativenumber == 1)
    set nornu
    set number
  else
    set rnu
  endif
endfunc

" Toggle between normal and relative numbering.
nnoremap <leader>r :call NumberToggle()<cr>
set rnu

" Open file menu
nnoremap <Leader>p :CtrlP<CR>
" Open buffer menu
nnoremap <Leader>b :CtrlPBuffer<CR>
" Open most recently used files
nnoremap <Leader>f :CtrlPMRUFiles<CR>

nnoremap <leader>k :NERDTreeToggle<CR>
""
" GoLang config
""

let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1

let g:go_fmt_command = "goimports"
let g:go_bin_path = expand("~/.gotools")

colorscheme molokai
let g:molokai_original = 0
let g:rehash256 = 1

let g:airline#extensions#tabline#enabled = 2
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#right_sep = ' '
let g:airline#extensions#tabline#right_alt_sep = '|'
let g:airline_left_sep = ' '
let g:airline_left_alt_sep = '|'
let g:airline_right_sep = ' '
let g:airline_right_alt_sep = '|'
let g:airline_theme= 'molokai'

let g:SuperTabDefaultCompletionType = "<c-n>"

autocmd FileType apache setlocal commentstring=#\ %s
nnoremap <leader>u :GundoToggle<CR>

