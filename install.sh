cd $(dirname $0)

ln .vimrc ~/.vimrc
mkdir -p ~/.vim/vimrcs
ln vimrcs/* ~/.vim/vimrcs/

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

