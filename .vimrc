call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

Plug 'Valloric/YouCompleteMe'
" Plug 'rdnetto/YCM-Generator'

Plug 'junegunn/seoul256.vim'

Plug 'skywind3000/quickmenu.vim'

Plug 'dense-analysis/ale'

Plug 'scrooloose/nerdcommenter'

Plug 'suan/vim-instant-markdown'
call plug#end()

source ~/.vim/vimrcs/basic.vim
source ~/.vim/vimrcs/toggle_mouse.vim
source ~/.vim/vimrcs/plugins.vim
source ~/.vim/vimrcs/filehightlight.vim
