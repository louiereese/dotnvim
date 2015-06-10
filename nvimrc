"" Hi, how are you?
"" ---------------------------------------------------------------------------

"" NeoBundle Scripts
"" ---------------------------------------------------------------------------
if has('vim_starting')
  set runtimepath+=$HOME/.nvim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('$HOME/.nvim/bundle'))

" BeBeBegin:
NeoBundleFetch 'Shougo/neobundle.vim'

" PlPlPlugin:
NeoBundle 'benekastah/neomake'
NeoBundle 'bling/vim-airline'
NeoBundle 'bling/vim-bufferline'
NeoBundle 'editorconfig/editorconfig-vim'
NeoBundle 'floobits/floobits-neovim'
NeoBundle 'godlygeek/tabular'
NeoBundle 'jiangmiao/auto-pairs'
NeoBundle 'justinmk/vim-matchparenalways'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'kien/rainbow_parentheses.vim'
NeoBundle 'lukerandall/haskellmode-vim'
NeoBundle 'matze/vim-move'
NeoBundle 'mhinz/vim-signify'
NeoBundle 'mhinz/vim-startify'
NeoBundle 'myusuf3/numbers.vim'
NeoBundle 'reedes/vim-pencil'
NeoBundle 'rking/ag.vim'
NeoBundle 'sjl/vitality.vim'
NeoBundle 'tpope/vim-commentary'
NeoBundle 'tpope/vim-eunuch'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'tpope/vim-git'
NeoBundle 'tpope/vim-repeat'
NeoBundle 'tpope/vim-sensible'
NeoBundle 'tpope/vim-surround'
NeoBundle 'tpope/vim-unimpaired'
NeoBundle 'tpope/vim-vinegar'

" NeoBundle 'mtth/scratch.vim'

" HTML, kill me
NeoBundle 'Valloric/MatchTagAlways'
NeoBundle 'gcmt/breeze.vim'

" TtTtTheme:
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'freeo/vim-kalisi'
NeoBundle 'w0ng/vim-hybrid'
NeoBundle 'chriskempson/base16-vim'


" SySySyntax:
NeoBundle 'cakebaker/scss-syntax.vim'
NeoBundle 'derekwyatt/vim-scala'
NeoBundle 'idris-hackers/idris-vim'
" NeoBundle 'jelera/vim-javascript-syntax'
" NeoBundle 'kchmck/vim-coffee-script'
" NeoBundle 'mxw/vim-jsx'
" NeoBundle 'nono/vim-handlebars'
NeoBundle 'othree/javascript-libraries-syntax.vim'
NeoBundle 'othree/yajs.vim'
" NeoBundle 'pangloss/vim-javascript'
NeoBundle 'plasticboy/vim-markdown'
NeoBundle 'raichoo/haskell-vim'
NeoBundle 'raichoo/purescript-vim'
NeoBundle 'tpope/vim-liquid'




" EtEtEtc:
" things that require neobundle's additional setup

call neobundle#end()

filetype plugin indent on

" check for updates, then onward!
NeoBundleCheck

"" The basixxx
"" ---------------------------------------------------------------------------

syntax on
" imap jk <esc>
let mapleader = "\<Space>"

" Theme:
set guifont=Source\ Code\ Pro\ for\ Powerline:h13
" colorscheme solarized
colorscheme base16-default
set background=dark
if has('gui_running')
  set antialias
  set go-=T
endif

" A: mad settings
set autoindent
set sessionoptions=resize,winpos,winsize,buffers,tabpages,folds,curdir,help
set backspace=indent,eol,start
set colorcolumn=79
set cursorline
set expandtab
set formatoptions+=w
set formatoptions=qrn1
set list
set listchars+=extends:→
set listchars+=precedes:←
set listchars+=tab:\┆\
set listchars+=trail:.
set listchars=""
set mouse=a
set mousehide
set nobackup
set noswapfile
set nowb
set nowrap
set number
set shiftwidth=2
set showmode
set splitbelow
set splitright
set tabstop=2
set textwidth=78
set timeoutlen=1000
set ttimeoutlen=10
set clipboard+=unnamedplus
set hidden
set autochdir

" B: search
set hlsearch
set ignorecase
set incsearch
set smartcase
nmap <silent> <Space>c :nohlsearch<CR>

" C: undo
let s:vim_cache = expand('$HOME/.nvim/backups')
if filewritable(s:vim_cache) == 0 && exists("*mkdir")
    call mkdir(s:vim_cache, "p", 0777)
endif
set undodir=$HOME/.nvim/backups
set undofile

" D: folds
set nofoldenable
" set foldenable
" set foldmethod=syntax
" set foldlevelstart=99

" E: wildcards
set wildignore+=*.o,*.out,*.obj,.git,*.rbc,*.rbo,*.class,.svn,*.gem
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz
set wildignore+=*/vendor/gems/*,*/vendor/cache/*,*/.bundle/*,*/.sass-cache/*
set wildignore+=*.swp,*~,._*

" F: mappings

" preserve indentation on paste
noremap <leader>p :set paste<CR>:put  *<CR>:set nopaste<CR> " preserve indent

" remove trailing whitespace
nnoremap <leader>rtw :%s/\s\+$//e<CR>

" move up and down by row
nnoremap j gj
nnoremap k gk

"" bubble lines
nmap <C-k> [e
nmap <C-j> ]e
vmap <C-k> [egv
vmap <C-j> ]egv

" leader leader to switch between last 2 buffers
nnoremap <leader><leader> <c-^>

" G: hilite
hi MatchParen cterm=bold ctermbg=darkmagenta ctermfg=white
hi Search cterm=NONE ctermfg=white ctermbg=5

" Sass: stop sucking, sass
au BufRead, BufNewFile *.scss set filetype=scss

" Haskell: http://bit.ly/1GsSOnp
au Bufenter *.hs compiler ghc
let g:haddock_browser = "open"
let g:haddock_browser_callformat = "%s %s"

" HTML: and stuff
au BufReadPost *.tpl set syntax=html "set syntax=html
au BufNewFile,BufRead *.xml,*.tpl set filetype=html

"" Plug plug plug plug
"" ---------------------------------------------------------------------------

" Airline:
let g:airline_powerline_fonts = 1
let g:airline_section_b = '%{getcwd()}'
let g:airline_section_c = '%t'
" let g:airline#extensions#tabline#enabled = 1

" Startify:
let g:startify_custom_header = map(split(system('figlet -f  rozzo "DOOM"'), '\n'), '"   ". v:val') + ['','']

" Markdown:
let g:vim_markdown_frontmatter=1
au BufNewFile,BufReadPost *.md set filetype=markdown
let g:markdown_fenced_languages = ['coffee', 'css', 'erb=eruby', 'javascript', 'js=javascript', 'json=javascript', 'ruby', 'sass', 'xml', 'html']

" Rainbow:
let g:rbpt_max = 16
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
let g:rbpt_colorpairs = [
    \ [ '13', '#6c71c4'],
    \ [ '5',  '#d33682'],
    \ [ '1',  '#dc322f'],
    \ [ '9',  '#cb4b16'],
    \ [ '3',  '#b58900'],
    \ [ '2',  '#859900'],
    \ [ '6',  '#2aa198'],
    \ [ '4',  '#268bd2'],
\]

" MatchParenAlways:
let g:blockify_pairs = {
    \ 'c':    [ '{', '}' ],
    \ 'cpp':  [ '{', '}' ],
    \ 'java': [ '{', '}' ],
    \ 'php': [ '{', '}' ],
    \ 'css': [ '{', '}' ],
    \ 'scss.css': [ '{', '}' ],
    \ 'scss': [ '{', '}' ],
    \ 'javascript': [ '{', '}' ],
    \ 'php.drupal': [ '{', '}' ],
\}

" NeoMake:  
" `cabal install ghc-mod` Haskell
" `npm install jshint -g` JavaScript
autocmd! BufWritePost * Neomake
let g:neomake_warning_sign = {
    \ 'text': '✗',
    \ 'texthl': 'ErrorMsg',
    \ }
let g:neomake_error_sign = {
    \ 'text': '⚠',
    \ 'texthl': 'ErrorMsg',
    \ }

" RevealInFinder: set this to leader-e
function! s:RevealInFinder()
  if filereadable(expand("%"))
    let l:command = "open -R %"
  elseif getftype(expand("%:p:h")) == "dir"
    let l:command = "open %:p:h"
  else
    let l:command = "open ."
  endif
  execute ":silent! !" . l:command
  redraw!
endfunction
command! Reveal call <SID>RevealInFinder()

noremap <leader>e :Reveal<CR>

" CtrlP: be faster
let g:ctrlp_use_caching = 0
if executable('ag')
    set grepprg=ag\ --nogroup\ --nocolor
    let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
else
  let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']
  let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<space>', '<cr>', '<2-LeftMouse>'],
    \ }
endif

let g:ctrlp_custom_ignore = {
    \ 'dir':  '\.git$\|\.yardoc\|public$|log\|tmp$',
    \ 'file': '\.so$\|\.dat$|\.DS_Store$'
\ }
