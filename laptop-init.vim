"Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin(stdpath('data') . '/plugged')

" Make sure you use single quotes

Plug 'junegunn/vim-easy-align'

" Initialize plugin system
call plug#end()

" Specify a directory for plugins
call plug#begin(stdpath('data') . '/plugged')

"Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'scrooloose/nerdtree'
"Plug 'tsony-tsonev/nerdtree-git-plugin'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'airblade/vim-gitgutter'
Plug 'ctrlpvim/ctrlp.vim' " fuzzy find files
Plug 'scrooloose/nerdcommenter'
" Plug 'davidhalter/jedi-vim'
" Plug 'vim-syntastic/syntastic'
" Plug 'prettier/vim-prettier', { 'do': 'yarn install' }

Plug 'puremourning/vimspector'
Plug 'szw/vim-maximizer'

Plug 'hzchirs/vim-material' 

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'christoomey/vim-tmux-navigator'

Plug 'morhetz/gruvbox'
Plug 'larsbs/vimterial_dark'

Plug 'HerringtonDarkholme/yats.vim' " TS Syntax
Plug 'sheerun/vim-polyglot'
Plug 'ryanoasis/vim-devicons'

Plug 'tpope/vim-obsession'

Plug 'alvan/vim-closetag'

"Plug 'nvim-lua/popup.nvim'
"Plug 'nvim-lua/plenary.nvim'
"Plug 'nvim-telescope/telescope.nvim'
"Plug 'nvim-telescope/telescope-fzy-native.nvim'

" Initialize plugin system
call plug#end()

"source $HOME/.config/nvim/vimspector.vim

" My remaps -- work in progress
inoremap jk <ESC>
nmap <C-n> :NERDTreeToggle<CR>
vmap ++ <plug>NERDCommenterToggle
nmap ++ <plug>NERDCommenterToggle

nnoremap K {
vnoremap K {
nnoremap J }
vnoremap J }
nnoremap <silent> <CR> :noh<CR>
nnoremap L $
nnoremap H ^
let mapleader=","
nnoremap <silent> <leader>l :join<CR>
nnoremap <leader>w :w <CR>
nnoremap <leader>wq :wq <CR>
nnoremap <leader>z <C-W>r <CR> 
nnoremap <leader>e :e $MYVIMRC<CR>
nnoremap <leader>q :Ex<CR>

" keybind to copy and paste between system and vim or different vim instances10
vnoremap <leader>c "+y<CR>
map <leader>v "+P


" vimspector keybinds
nnoremap <leader>dd :call vimspector#Launch()<CR>
nnoremap <leader>dx :VimspectorReset<CR>
nnoremap <leader>de :VimspectorEval
nnoremap <leader>dw :VimspectorWatch
nnoremap <leader>do :VimspectorShowOutput<CR>



"Maximize keybind
nnoremap <leader>m :MaximizerToggle<CR>

"Enable autocompletion
set wildmode=longest,list,full

"Disables automatic commenting on new line
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

"emulate vscode new line after brackets
inoremap {<cr> {<cr>}<c-o>0
inoremap [<cr> [<cr>]<c-o>0


:set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50
  \,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor
  \,sm:block-blinkwait175-blinkoff150-blinkon175



" open NERDTree automatically
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * NERDTree

let g:NERDTreeGitStatusWithFlags = 1
"let g:WebDevIconsUnicodeDecorateFolderNodes = 1
"let g:NERDTreeGitStatusNodeColorization = 1
"let g:NERDTreeColorMapCustom = {
    "\ "Staged"    : "#0ee375",  
    "\ "Modified"  : "#d9bf91",  
    "\ "Renamed"   : "#51C9FC",  
    "\ "Untracked" : "#FCE77C",  
    "\ "Unmerged"  : "#FC51E6",  
    "\ "Dirty"     : "#FFBD61",  
    "\ "Clean"     : "#87939A",   
    "\ "Ignored"   : "#808080"   
    "\ }                         


let g:NERDTreeIgnore = ['^node_modules$']

" vim-prettier
"let g:prettier#quickfix_enabled = 0
"let g:prettier#quickfix_auto_focus = 0
" prettier command for coc
"command! -nargs=0 Prettier :CocCommand prettier.formatFile
" run prettier on save
"let g:prettier#autoformat = 0
"autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync


" ctrlp
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']



" j/k will move virtual lines (lines that wrap)
noremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
noremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')

"Absolute line numbers
"set number

"Relative line number
set number relativenumber
set nu rnu

set smarttab
set autoindent
set smartindent
set cindent
set tabstop=4
set shiftwidth=4
" always uses spaces instead of tab characters
set expandtab

let g:airline_theme='wombat'
let g:airline_powerline_fonts = 1



" sync open file with NERDTree
" " Check if NERDTree is open or active
"function! IsNERDTreeOpen()        
  "return exists("t:NERDTreeBufName") && (bufwinnr(t:NERDTreeBufName) != -1)
"endfunction

" Call NERDTreeFind iff NERDTree is active, current window contains a modifiable
" file, and we're not in vimdiff
"function! SyncTree()
  "if &modifiable && IsNERDTreeOpen() && strlen(expand('%')) > 0 && !&dif
    "NERDTreeFind
    "wincmd p
  "endif
"endfunction

" Highlight currently open buffer in NERDTree
"autocmd BufEnter * call SyncTree()





 "coc config
"let g:coc_global_extensions = [
  "\ 'coc-snippets',
  "\ 'coc-pairs',
  "\ 'coc-tsserver',
  "\ 'coc-eslint', 
  "\ 'coc-prettier', 
  "\ 'coc-json', 
  "\ ]
"
" from readme
" if hidden is not set, TextEdit might fail.
set hidden " Some servers have issues with backup files, see #649 set nobackup set nowritebackup " Better display for messages set cmdheight=2 " You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use D to show documentation in preview window
"nnoremap <leader> k :call <SID>show_documentation()<CR>
nnoremap <M-q> :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Autorun python scripts
"autocmd FileType python map <buffer> <F9> :w<CR>:exec 'python3' shellescape(@%, 1)<CR>

" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph

" Status line
set laststatus=2
set showcmd

" Escaping from insert mode delay
set timeoutlen=1000
set ttimeoutlen=5

" Search
set ignorecase
set smartcase

" Blinking cursor
set guicursor=a:blinkon300

set background=dark
set t_Co=256

set termguicolors
colorscheme gruvbox
"colorscheme vim-material

set mouse=a

"Set colours for comments!!
"Check it out
highlight Comment guifg=grey
highlight Comment gui=none 

"let g:termdebug_popup = 0
"let g:termdebug_wide = 163

let g:vimspector_enable_mappings = 'HUMAN'


autocmd Filetype javascript setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype html setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2






" Closetag configuration

" filenames like *.xml, *.html, *.xhtml, ...
" These are the file extensions where this plugin is enabled.
"
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.js'

" filenames like *.xml, *.xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'

" filetypes like xml, html, xhtml, ...
" These are the file types where this plugin is enabled.
"
let g:closetag_filetypes = 'html,xhtml,phtml,js'

" filetypes like xml, xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filetypes = 'xhtml,jsx'

" integer value [0|1]
" This will make the list of non-closing tags case-sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
"
let g:closetag_emptyTags_caseSensitive = 1

" dict
" Disables auto-close if not in a valid region (based on filetype)
"
let g:closetag_regions = {
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \ }

" Shortcut for closing tags, default is '>'
"
let g:closetag_shortcut = '>'

" Add > at current position without closing the current tag, default is ''
"
let g:closetag_close_shortcut = '<leader>>'

" End closetag configuration

" CtrlP initial values
let g:ctrlp_map  ='<c-p>'
let g:ctrlp_cmd  ='CtrlPMRU'
let g:ctrlp_by_filename = 1
let g:ctrlp_regexp = 1


" Transparency on / off
hi Normal guibg=NONE ctermbg=NONE

set encoding=utf-8
let g:airline_left_sep=''
let g:airline_right_sep=''


"attempt to autocompile and run c programs
autocmd filetype c nnoremap <F4> :w <bar> exec '!gcc '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR>
