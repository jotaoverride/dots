call plug#begin('~/.vim/plugged')

Plug 'https://github.com/fatih/vim-go.git'
Plug 'https://github.com/roxma/SimpleAutoComplPop.git'
Plug 'https://github.com/Shougo/neosnippet.vim.git'
Plug 'https://github.com/Shougo/neosnippet-snippets.git'
" Plug 'https://github.com/Shougo/deoplete.nvim.git', { 'do': ':UpdateRemotePlugins' }
Plug 'https://github.com/tpope/vim-surround.git'
Plug 'https://github.com/tpope/vim-commentary.git'
Plug 'https://github.com/ervandew/supertab.git'

" Plug 'https://github.com/plasticboy/vim-markdown.git'
" Plug 'https://github.com/godlygeek/tabular.git'

Plug 'https://github.com/tpope/vim-fugitive.git'
Plug 'https://github.com/scrooloose/nerdtree.git'
Plug 'https://github.com/Xuyuanp/nerdtree-git-plugin.git'

Plug 'https://github.com/ctrlpvim/ctrlp.vim.git'
Plug 'https://github.com/eugen0329/vim-esearch.git'

Plug 'http://github.com/sjl/gundo.vim.git'
Plug 'https://github.com/vim-scripts/camelcasemotion.git'

Plug 'https://github.com/flazz/vim-colorschemes.git'
" Plug 'https://github.com/vim-airline/vim-airline.git'
" Plug 'https://github.com/vim-airline/vim-airline-themes.git'
Plug 'https://github.com/spolu/dwm.vim.git'

" Plug 'https://github.com/Yggdroot/indentLine.git'
" Plug 'https://github.com/adragomir/javacomplete.git'
" Plug 'https://github.com/tomtom/tlib_vim.git'
" Plug 'https://github.com/MarcWeber/vim-addon-mw-utils.git'
" Plug 'https://github.com/garbas/vim-snipmate.git'
" Plug 'https://github.com/SirVer/ultisnips.git'
" Plug 'https://github.com/vifm/neovim-vifm.git'

call plug#end()

set noshowcmd           " Show (partial) command in status line.
set statusline=         " Empty status line
set showmatch           " Show matching brackets.
set noshowmode          " Show current mode.
set ruler               " Show the line and column numbers of the cursor.
set number              " Show the line numbers on the left side.
set formatoptions+=o    " Continue comment marker in new lines.
set textwidth=0         " Hard-wrap long lines as you type them.
set expandtab           " Insert spaces when TAB is pressed.
set tabstop=4           " Render TABs using this many spaces.
set shiftwidth=4        " Indentation amount for < and > commands.
set noerrorbells        " No beeps.
set modeline            " Enable modeline.
set esckeys             " Cursor keys in insert mode.
set linespace=0         " Set line-spacing to minimum.
set joinspaces          " Prevents inserting two spaces after punctuation on a join (J)   
set splitbelow          " Horizontal split below current.
set splitright          " Vertical split to right of current.
if !&scrolloff
  set scrolloff=3       " Show next i lines while scrolling.
endif
if !&sidescrolloff
  set sidescrolloff=5   " Show next 5 columns while side-scrolling.
endif
set display+=lastline
set nostartofline       " Do not jump to first character with page commands.
set hlsearch            " Highlight search results.
set ignorecase          " Make searching case insensitive
set smartcase           " ... unless the query has capital letters.
set incsearch           " Incremental search.
set gdefault            " Use 'g' flag by default with :s/foo/bar/.
" set magic               " Use 'magic' patterns (extended regular expressions).
set nornu
set backspace=2 " make backspace work like most other apps
set backspace=indent,eol,start
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif

function! NumberToggle()
  if(&relativenumber == 1)
    set nornu
    set number
  else
    set rnu
  endif
endfunc

let mapleader="\<SPACE>"
let g:neosnippet#enable_completed_snippet = 1
let g:SuperTabDefaultCompletionType = "<c-n>"
let g:vim_markdown_folding_disabled = 1
let g:go_list_height = 10
let g:go_highlight_structs = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_operators = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_format_strings = 1
let g:go_highlight_string_spellcheck = 1
let g:go_highlight_array_whitespace_error = 1
let g:go_highlight_chan_whitespace_error = 1
let g:go_highlight_space_tab_error = 1
let g:go_highlight_trailing_whitespace_error = 1
let g:go_auto_type_info = 1
let g:go_def_reuse_buffer = 1
let g:go_auto_sameids = 0
let g:go_snippet_engine = "neosnippet"
let g:go_fmt_command = "goimports"
let g:go_bin_path = expand("~/.gotools")
let g:molokai_original = 1
let g:rehash256 = 1
" let g:airline#extensions#tabline#enabled = 2
" let g:airline#extensions#tabline#fnamemod = ':t'
" let g:airline#extensions#tabline#left_sep = ' '
" let g:airline#extensions#tabline#left_alt_sep = '|'
" let g:airline#extensions#tabline#right_sep = ' '
" let g:airline#extensions#tabline#right_alt_sep = '|'
" let g:airline_left_sep = ' '
" let g:airline_left_alt_sep = '|'
" let g:airline_right_sep = ' '
" let g:airline_right_alt_sep = '|'
" let g:airline_theme= 'molokai'
let g:indentLine_color_term = 239
let g:indentLine_color_gui = '#09AA08'
let g:indentLine_char = '│'
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "M",
    \ "Staged"    : "S",
    \ "Untracked" : "U",
    \ "Renamed"   : "R",
    \ "Unmerged"  : "!",
    \ "Deleted"   : "D",
    \ "Dirty"     : "x",
    \ "Clean"     : "C",
    \ "Unknown"   : "?"
    \ }

" colorscheme summerfruit256
colorscheme molokai

" nmap <Left> <<
" nmap <Right> >>
" nmap <Up> [e
" nmap <Down> ]e
" vmap <Left> <gv
" vmap <Right> >gv
" vmap <Up> [egv
" vmap <Down> ]egv
map  <expr>     <TAB>   pumvisible() ? "\<C-n>" : neosnippet#expandable_or_jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
smap <expr>     <TAB>   neosnippet#expandable_or_jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
imap <C-k>      <Plug>(neosnippet_expand_or_jump)
smap <C-k>      <Plug>(neosnippet_expand_or_jump)
xmap <C-k>      <Plug>(neosnippet_expand_target)
imap <Left>     <Nop>
imap <Right>    <Nop>
imap <Up>       <Nop>
imap <Down>     <Nop>
nmap <Left>     <Nop>
nmap <Right>    <Nop>
nmap <Up>       <Nop>
nmap <Down>     <Nop>
nnoremap <Leader>l :nohlsearch<CR><C-L>
nnoremap <leader>gr :<C-U>call go#rename#Rename(!g:go_jump_to_error)<CR>
nnoremap <leader>gi :<C-U>call go#complete#Info(!g:go_jump_to_error)<CR>
nnoremap <leader>gh :<C-U>call go#guru#AutoToogleSameIds()<CR>
nnoremap <leader>r :call NumberToggle()<cr>
nnoremap <Leader>p :CtrlP<CR>
nnoremap <Leader>b :CtrlPBuffer<CR>
nnoremap <Leader>/ :CtrlPMRUFiles<CR>
nnoremap <leader>k :NERDTreeToggle<CR>
nnoremap <leader>u :GundoToggle<CR>
inoremap <C-a> <Home>
inoremap <C-e> <End>
nnoremap <C-a> <Home>
nnoremap <C-e> <End>
" " Vertical/horizonal split shortcuts
" nnoremap <Leader>s <C-w>v
" nnoremap <Leader>S :sp<CR>
" " moving among splits
" nnoremap <C-h> <C-w>h
" nnoremap <C-j> <C-w>j
" nnoremap <C-k> <C-w>k
" nnoremap <C-l> <C-w>l
nmap <Leader>dh <Plug>DWMShrinkMaster
nmap <Leader>dl <Plug>DWMGrowMaster


autocmd BufRead,BufNewFile *.txt colorscheme summerfruit256 
autocmd BufRead,BufNewFile *.txt set filetype=markdown
" au Filetype go nnoremap <leader>v :vsp <CR>:exe "GoDef" <CR>
" au Filetype go nnoremap <leader>s :sp <CR>:exe "GoDef" <CR>
autocmd Filetype go nnoremap <leader>t :tab split <CR>:exe "GoDef"<CR>
autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
autocmd FileType apache setlocal commentstring=#\ %s
" 1. variables are all defined in current scope, use keyword from current
" buffer for completion `<C-x><C-n>`
" 2. When the '.' is pressed, use smarter omnicomplete `<C-x><C-o>`, this
" works well with the vim-go plugin
autocmd FileType go call sacp#enableForThisBuffer({ "matches": [
            \ { '=~': '\v[a-zA-Z]{4}$' , 'feedkeys': "\<C-x>\<C-n>"} ,
            \ { '=~': '\.$'            , 'feedkeys': "\<C-x>\<C-o>", "ignoreCompletionMode":1} ,
            \ ]
            \ })

