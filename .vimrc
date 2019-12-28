call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer' }

Plug 'junegunn/seoul256.vim'

Plug 'skywind3000/quickmenu.vim'

Plug 'dense-analysis/ale'

Plug 'scrooloose/nerdcommenter'

Plug 'suan/vim-instant-markdown'

Plug 'skywind3000/asyncrun.vim'

Plug 'frazrepo/vim-rainbow'

Plug 'itchyny/lightline.vim'

Plug 'tomasiser/vim-code-dark'

Plug 'Yggdroot/indentLine'
let g:indentLine_char_list = ['|', '¦', '┆', '┊']

Plug 'airblade/vim-gitgutter'

Plug 'ludovicchabant/vim-gutentags'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

Plug 'mileszs/ack.vim'
call plug#end()

source ~/.vim/vimrcs/basic.vim
source ~/.vim/vimrcs/toggle_mouse.vim
source ~/.vim/vimrcs/plugins.vim
source ~/.vim/vimrcs/filehighlight.vim

