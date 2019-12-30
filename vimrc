" Install and run vim-plug on first run
if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

Plug 'https://github.com/pangloss/vim-javascript'

Plug 'https://github.com/mxw/vim-jsx'

Plug 'https://github.com/vim-scripts/AutoClose'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

Plug 'junegunn/fzf.vim'

Plug 'https://github.com/terryma/vim-multiple-cursors'

Plug 'https://github.com/tpope/vim-eunuch'

Plug 'https://github.com/tpope/vim-surround'

Plug 'https://github.com/scrooloose/nerdtree'

Plug 'https://github.com/editorconfig/editorconfig-vim'

Plug 'https://github.com/mattn/emmet-vim'

Plug 'https://github.com/w0rp/ale'

Plug 'https://github.com/airblade/vim-gitgutter'

Plug 'https://github.com/cjrh/vim-conda'

Plug 'https://github.com/jistr/vim-nerdtree-tabs'

Plug 'https://github.com/itchyny/lightline.vim'

Plug 'https://github.com/davidhalter/jedi-vim'

Plug 'https://github.com/amitdev/vimpy'

" Initialize plugin system
call plug#end()

:set nu
:set backupcopy=yes
:set mouse=a

autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
autocmd FileType css setlocal shiftwidth=2 tabstop=2
autocmd vimenter * NERDTree
" inoremap {      {}<Left>
" inoremap [	[]<Left>
" inoremap (	()<Left>
" inoremap '	''<Left>
" inoreamp \"	\"\"<Left>

map <C-1> :NERDTreeToggle<CR>

map ; :Files<CR>

colo molokai

set tags=./tags,tags
