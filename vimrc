set nocompatible " not vi compatible

"--------------
" Load pathogen
"--------------
runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()
call pathogen#helptags()

"------------------
" Syntax and indent
"------------------
syntax on " turn on syntax highlighting
syntax enable
set showmatch " show matching braces when text indicator is over them

" vim can autodetect this based on $TERM (e.g. 'xterm-256color')
" but it can be set to force 256 colors
" set t_Co=256
if &t_Co < 256
    colorscheme default
    set background=dark
    set nocursorline " looks bad in this mode
else
    " This option doesn't seem to work for solarized-dark in my setup
    " let g:solarized_termcolors=256 "
    set background=dark
    colorscheme solarized
    " customized colors
    highlight SignColumn ctermbg=234
    highlight StatusLine cterm=bold ctermfg=245 ctermbg=235
    highlight StatusLineNC cterm=bold ctermfg=245 ctermbg=235
    let g:NeatStatusLine_color_normal='ctermfg=64 ctermbg=235 cterm=bold'
    let g:NeatStatusLine_color_insert='ctermfg=136 ctermbg=235 cterm=bold'
    let g:NeatStatusLine_color_replace='ctermfg=160 ctermbg=235 cterm=bold'
    let g:NeatStatusLine_color_visual='ctermfg=33 ctermbg=235 cterm=bold'
    let g:NeatStatusLine_color_position='ctermfg=245 ctermbg=235 cterm=bold'
    let g:NeatStatusLine_color_modified='ctermfg=166 ctermbg=235 cterm=bold'
    let g:NeatStatusLine_color_line='ctermfg=61 ctermbg=235 cterm=bold'
    let g:NeatStatusLine_color_filetype='ctermfg=37 ctermbg=235 cterm=bold'
endif

filetype plugin indent on " enable file type detection
set autoindent

" Basic editing config
set nu " number lines

" Menu completion
set wildmenu
set wildmode=list:longest,full

" Whitespace
set cindent
set expandtab
set shiftwidth=4
set ts=2
set expandtab

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

" Disable vim backups
set nobackup
set nowritebackup

" Disable swapfile
set noswapfile

" Split configuration
set splitright
set splitbelow

if &term =~ '^screen'
    " tmux knows the extended mouse mode
    set ttymouse=xterm2
endif

" Disable arrow keys
map <Left> :echo "no! Use h"<cr>
map <Right> :echo "no! Use l"<cr>
map <Up> :echo "no! Use k"<cr>
map <Down> :echo "no! Use j"<cr>
imap <Left> <nop>
imap <Right> <nop>
imap <Up> <nop>
imap <Down> <nop>

" Quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" Add comma as leader
:nmap , \

" Save with leader + w
nnoremap <Leader>w :w<CR>

" Unhighlight search results
map <Leader><space> :nohl<cr>

" format JSON with jq
nnoremap <Leader>j :%!cat % <bar> jq '.'<CR>

" NERDTree configuration
let NERDTreeIgnore=['\~$', 'tmp', '\.git', '\.bundle', '.DS_Store', 'tags', '.swp']
let NERDTreeShowHidden=1
let g:NERDTreeDirArrows=0
map <Leader>n :NERDTreeToggle<CR>
map <Leader>fnt :NERDTreeFind<CR>

" syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_mode_map = {
    \ 'mode': 'passive',
    \ 'active_filetypes': [],
    \ 'passive_filetypes': []
\}

" CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

nnoremap <Leader>s :SyntasticCheck<CR>
nnoremap <Leader>r :SyntasticReset<CR>
nnoremap <Leader>i :SyntasticInfo<CR>
nnoremap <Leader>m :SyntasticToggleMode<CR>

if filereadable(expand('~/.vimrc.local'))
    source ~/.vimrc.local
endif
