"" Start
"" ---------------------------------------------------------------------------
"" Load plugins with vim-plug, that type of thing.

if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('$HOME/.config/nvim/.plugged')

"" PlPlPlugin:
Plug 'justinmk/vim-dirvish'          " file navigation... F I R S T
Plug 'blueyed/vim-diminactive'       " dim inactive split
Plug 'bounceme/poppy.vim'            " rainbows for parentheses
Plug 'editorconfig/editorconfig-vim' " indent the same...
" Plug 'floobits/floobits-neovim'      " magic stuff
Plug 'itchyny/lightline.vim'         " an statusbar
Plug 'jiangmiao/auto-pairs'          " autocomplete brackets: @see: https://bit.ly/2qQYZ0P
Plug 'junegunn/vim-easy-align'       " align stuff... like csv columns
Plug 'matze/vim-move'                " line-bubbling
Plug 'maximbaz/lightline-ale'        " show lint errors in lightline
Plug 'mechatroner/rainbow_csv'       " csv pretties
Plug 'mhinz/vim-signify'             " show git changes in gutter
Plug 'myusuf3/numbers.vim'           " relative line numbering
Plug 'sjl/vitality.vim'              " iterm2 + tmux fixes
Plug 'tomtom/tcomment_vim'           " comment out lines
Plug 'tpope/vim-eunuch'              " vim + bash stuff
Plug 'tpope/vim-fugitive'            " git stuff... mostly :Gblame
Plug 'tpope/vim-repeat'              " repeat operator for more stuff
Plug 'tpope/vim-surround'            " objects for surround stuff

"" F U Z Z: find files
" Plug 'ctrlpvim/ctrlp.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

"" IdIDE:
" Plug 'autozimu/languageclient-neovim', {'branch': 'next', 'do': 'bash install.sh'}
" Plug 'craigemery/vim-autotag'
" Plug 'honza/vim-snippets'
" Plug 'majutsushi/tagbar'
Plug 'shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins'} " @see: https://github.com/Shougo/deoplete.nvim/wiki/Completion-Sources
" Plug 'shougo/echodoc.vim'
" Plug 'sirver/ultisnips'
" Plug 'valloric/youcompleteme'
Plug 'w0rp/ale', {'do': 'npm install -g standard'} " linting

"" VimL: hrmm
Plug 'shougo/neco-vim'

"" JjJjavactipt: what is javascript?
" Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'

"" HhHhTML: kill me plox
" Plug 'gcmt/breeze.vim',         {'for': ['html', 'tpl']}
" Plug 'tpope/vim-liquid',        {'for': ['html', 'tpl']}
" Plug 'valloric/matchtagalways', {'for': ['html', 'tpl']}

"" TyTypescript: chule
" Plug 'herringtondarkholme/yats.vim'
" Plug 'ianks/vim-tsx'
" Plug 'mhartington/nvim-typescript', {'do': './install.sh'}
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'

"" ElElixir: okay, cool
" Plug 'elixir-lang/vim-elixir',  {'for': 'elixir'}
" Plug 'slashmili/alchemist.vim', {'for': 'elixir'}

"" HhHhaskell: laws only
" Plug 'neovimhaskell/haskell-vim', {'for': ['haskell', 'cabal']}
" Plug 'parsonsmatt/intero-neovim', {'for': ['haskell', 'cabal']}

"" ScScScala: It's like JavaScript, but still bad
" Plug 'ensime/ensime-vim',         {'for': 'scala'}
" Plug 'derekwyatt/vim-scala',      {'for': 'scala'}

"" PuPuPurescript: Hmm. hmm.
" Plug 'raichoo/purescript-vim', {'for': 'purescript'}
" Plug 'FrigoEU/psc-ide-vim/',   {'for': 'purescript'}

"" CsCss:
Plug 'ap/vim-css-color'
Plug 'cakebaker/scss-syntax.vim'
Plug 'juleswang/css.vim'
" Plug 'othree/csscomplete.vim'


"" OtOtOther: Etc.
Plug 'shougo/neco-syntax'
" Plug 'ericpruitt/tmux.vim', {'rtp': 'vim/'}
" Plug 'kylef/apiblueprint.vim',    {'for': 'apiblueprint'}
" Plug 'leonb/vim-nginx',           {'for': 'nginx'}
" Plug 'martinda/jenkinsfile-vim-syntax'
" Plug 'nono/vim-handlebars',       {'for': 'hbs'}
" Plug 'plasticboy/vim-markdown',   {'for': 'markdown'}
" Plug 'tmux-plugins/vim-tmux'
" Plug 'toyamarinyon/vim-swift',    {'for': 'swift'}

"" TtTtTheme: PRETTY PRETTY PRETTY PRETTY PRETTY PRETTY
Plug 'chriskempson/base16-vim', {'do': 'git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell'}

"" Lolkay: Some fance-shmance
Plug 'ryanoasis/vim-devicons'

call plug#end()