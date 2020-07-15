call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'      
Plug 'Xuyuanp/nerdtree-git-plugin'  
Plug 'tiagofumo/vim-nerdtree-syntax-highlight' 
Plug 'ycm-core/YouCompleteMe', { 'do': 'python3 ./install.py --clang-completer' }
Plug 'junegunn/seoul256.vim'
Plug 'dense-analysis/ale'
Plug 'scrooloose/nerdcommenter'
Plug 'suan/vim-instant-markdown'
Plug 'skywind3000/asyncrun.vim'
Plug 'kien/rainbow_parentheses.vim'
Plug 'itchyny/lightline.vim'
Plug 'tomasiser/vim-code-dark'
Plug 'Yggdroot/indentLine'
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
Plug 'airblade/vim-gitgutter'
Plug 'ludovicchabant/vim-gutentags', { 'commit': '31c0ead' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'mileszs/ack.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'Raimondi/delimitMate'
Plug 'junegunn/goyo.vim'
Plug 'Junegunn/limelight.vim'
Plug 'mbbill/undotree'
Plug 'easymotion/vim-easymotion'
Plug 'terryma/vim-multiple-cursors'
"Plug 'SirVer/ultisnips'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'

call plug#end()


source ~/.vim/vimrcs/basic.vim
source ~/.vim/vimrcs/toggle_mouse.vim
source ~/.vim/vimrcs/filehighlight.vim
source ~/.vim/vimrcs/plugins.vim
